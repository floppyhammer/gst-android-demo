// Copyright 2023, Pluto VR, Inc.
//
// SPDX-License-Identifier: BSL-1.0

/*!
 * @file
 * @brief Main file for WebRTC client.
 * @author Moshi Turner <moses@collabora.com>
 * @author Rylie Pavlik <rpavlik@collabora.com>
 */
#include <EGL/egl.h>
#include <GLES3/gl3.h>
#include <GLES3/gl32.h>
#include <android/asset_manager_jni.h>
#include <android/log.h>
#include <android/native_activity.h>
#include <android_native_app_glue.h>
#include <assert.h>
#include <errno.h>
#include <gst/gst.h>
#include <jni.h>
#include <pthread.h>
#include <stdbool.h>
#include <unistd.h>

#include <array>
#include <cmath>
#include <cstdlib>
#include <ctime>
#include <memory>
#include <thread>

#include "EglData.hpp"
#include "stream/gst_common.h"
#include "stream/render/render.hpp"
#include "stream/render/render_api.h"
#include "stream/stream_app.h"

namespace {

struct MyState {
    int32_t width = 0;
    int32_t height = 0;
};

std::unique_ptr<Renderer> renderer;

std::unique_ptr<EglData> initialEglData;

StreamApp *stream_app{};

MyState _state = {};

void gst_android_log(GstDebugCategory *category,
                     GstDebugLevel level,
                     const gchar *file,
                     const gchar *function,
                     gint line,
                     GObject *object,
                     GstDebugMessage *message,
                     gpointer data) {
    if (level <= gst_debug_category_get_threshold(category)) {
        if (level == GST_LEVEL_ERROR) {
            ALOGE("%s, %s: %s", file, function, gst_debug_message_get(message));
        } else if (level == GST_LEVEL_WARNING) {
            ALOGW("%s, %s: %s", file, function, gst_debug_message_get(message));
        } else {
            ALOGD("%s, %s: %s", file, function, gst_debug_message_get(message));
        }
    }
}

void onAppCmd(struct android_app *app, int32_t cmd) {
    switch (cmd) {
        case APP_CMD_START:
            ALOGI("APP_CMD_START");
            break;
        case APP_CMD_RESUME:
            ALOGI("APP_CMD_RESUME");
            break;
        case APP_CMD_PAUSE:
            ALOGI("APP_CMD_PAUSE");
            break;
        case APP_CMD_STOP:
            ALOGI("APP_CMD_STOP");
            break;
        case APP_CMD_DESTROY:
            ALOGI("APP_CMD_DESTROY");
            break;
        case APP_CMD_INIT_WINDOW: {
            ALOGI("APP_CMD_INIT_WINDOW");

            initialEglData = std::make_unique<EglData>(app->window);
            initialEglData->makeCurrent();

            eglQuerySurface(initialEglData->display, initialEglData->surface, EGL_WIDTH, &_state.width);
            eglQuerySurface(initialEglData->display, initialEglData->surface, EGL_HEIGHT, &_state.height);

            setenv("GST_DEBUG", "rtpulpfecdec:7", 1);

            // Set up gstreamer
            gst_init(NULL, NULL);

#ifdef __ANDROID__
            gst_debug_add_log_function(&gst_android_log, NULL, NULL);
#endif

            // Set up gst logger
            gst_debug_set_default_threshold(GST_LEVEL_WARNING);

            stream_app = stream_app_new();
            stream_app_set_egl_context(stream_app,
                                       initialEglData->context,
                                       initialEglData->display,
                                       initialEglData->surface);

            ALOGI("%s: starting stream client mainloop thread", __FUNCTION__);
            stream_app_spawn_thread(stream_app);

            try {
                ALOGI("%s: Setup renderer...", __FUNCTION__);
                renderer = std::make_unique<Renderer>();
                renderer->setupRender();
            } catch (std::exception const &e) {
                ALOGE("%s: Caught exception setting up renderer: %s", __FUNCTION__, e.what());
                renderer->reset();
                abort();
            }
        } break;
        case APP_CMD_TERM_WINDOW:
            ALOGI("APP_CMD_TERM_WINDOW");
            break;
        default:
            break;
    }
}

/**
 * Poll for Android events, and handle them
 *
 * @param state app state
 *
 * @return true if we should go to the render code
 */
bool poll_events(struct android_app *app) {
    // Poll Android events
    for (;;) {
        int events;
        struct android_poll_source *source;
        bool wait = !app->window || app->activityState != APP_CMD_RESUME;
        int timeout = wait ? -1 : 0;
        if (ALooper_pollOnce(timeout, NULL, &events, (void **)&source) >= 0) {
            if (source) {
                source->process(app, source);
            }

            if (timeout == 0 && (!app->window || app->activityState != APP_CMD_RESUME)) {
                break;
            }
        } else {
            break;
        }
    }

    return true;
}

} // namespace

struct MySample *prev_sample;

void android_main(struct android_app *app) {
    JNIEnv *env = nullptr;
    (*app->activity->vm).AttachCurrentThread(&env, NULL);
    app->onAppCmd = onAppCmd;

    // Main rendering loop.
    ALOGI("DEBUG: Starting main loop");
    while (!app->destroyRequested) {
        if (!poll_events(app)) {
            continue;
        }

        if (!initialEglData || !renderer || !stream_app) {
            continue;
        }

        initialEglData->makeCurrent();

        struct timespec decodeEndTime;
        struct MySample *sample = stream_app_try_pull_sample(stream_app, &decodeEndTime);

        if (sample == nullptr) {
            if (prev_sample) {
                // EM_POLL_RENDER_RESULT_REUSED_SAMPLE;
                //                sample = prev_sample;
            }
            continue;
        }

        glBindFramebuffer(GL_FRAMEBUFFER, 0);

        glClearColor(0.0f, 1.0f, 0.0f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);

        glViewport(0, 0, _state.width, _state.height);

        renderer->draw(sample->frame_texture_id, sample->frame_texture_target);

        eglSwapBuffers(initialEglData->display, initialEglData->surface);

        // Release the previous sample
        if (prev_sample != NULL) {
            stream_app_release_sample(stream_app, prev_sample);
        }
        prev_sample = sample;

        initialEglData->makeNotCurrent();
    }

    ALOGI("DEBUG: Exited main loop, cleaning up");

    //
    // Clean up
    //

    stream_app_destroy(&stream_app);

    initialEglData = nullptr;

    (*app->activity->vm).DetachCurrentThread();
}
