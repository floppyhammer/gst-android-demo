// Copyright 2023, Pluto VR, Inc.
//
// SPDX-License-Identifier: BSL-1.0

/*!
 * @file
 * @brief  Wrapper around OpenGL (ES) swapchain
 * @author Rylie Pavlik <rpavlik@collabora.com>
 * @ingroup em_utils
 */

#include "GLSwapchain.h"

#include <GLES3/gl3.h>

#include <cassert>

#include "../gst_common.h"

GLSwapchain::~GLSwapchain() {
    reset();
}
//
// bool
// GLSwapchain::enumerateAndGenerateFramebuffers(XrSwapchain swapchain)
//{
//	assert(swapchainImages_.empty());
//	assert(framebuffers_.empty());
//	uint32_t countOutput = 0;
//	if (!XR_UNQUALIFIED_SUCCESS(xrEnumerateSwapchainImages(swapchain, 0, &countOutput, nullptr))) {
//		ALOGE("%s: Failed initial call to xrEnumerateSwapchainImages", __FUNCTION__);
//		return false;
//	}
//	swapchainImages_.resize(countOutput, {kSwapchainImageType});
//	XrResult result = xrEnumerateSwapchainImages(swapchain, countOutput, &countOutput,
//	                                             (XrSwapchainImageBaseHeader *)swapchainImages_.data());
//	if (!XR_UNQUALIFIED_SUCCESS(result)) {
//		ALOGE("%s: Failed second call to xrEnumerateSwapchainImages", __FUNCTION__);
//		swapchainImages_.clear();
//		return false;
//	}
//	// defensive coding: the array size should not have changed between the two calls but safest to truncate here
//	// just in case.
//	swapchainImages_.resize(countOutput);
//
//	const GLsizei n = static_cast<GLsizei>(countOutput);
//
//	ALOGI("%s: Generating framebuffers", __FUNCTION__);
//	framebuffers_.resize(n);
//	glGenFramebuffers(n, framebuffers_.data());
//
////            // Allocate and initialize the buffer of image structs (must be sequential in memory for
/// xrEnumerateSwapchainImages). /            // Return back an array of pointers to each swapchain image struct so the
/// consumer doesn't need to know the type/size. /            std::vector<XrSwapchainImageOpenGLESKHR>
/// swapchainImageBuffer(countOutput, {XR_TYPE_SWAPCHAIN_IMAGE_OPENGL_ES_KHR}); /
/// std::vector<XrSwapchainImageBaseHeader*> swapchainImageBase; /            for (XrSwapchainImageOpenGLESKHR& image :
/// swapchainImageBuffer) { / swapchainImageBase.push_back(reinterpret_cast<XrSwapchainImageBaseHeader*>(&image)); / }
//
//	bool success = true;
//	for (GLsizei i = 0; i < n; ++i) {
//		ALOGI("%s: Index %d: Binding framebuffer name %d to texture ID %d", __FUNCTION__, i, framebuffers_[i],
//		      swapchainImages_[i].image);
//
//		// bind this name as the active framebuffer
//		glBindFramebuffer(GL_FRAMEBUFFER, framebuffers_[i]);
//		// associate a swapchain image as the texture object/image for this framebuffer
//		glFramebufferTexture2D(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, GL_TEXTURE_2D, swapchainImages_[i].image,
//		                       0);
//
//		// check to make sure we can actually render to this.
//		GLenum status = glCheckFramebufferStatus(GL_FRAMEBUFFER);
//
//		if (status != GL_FRAMEBUFFER_COMPLETE) {
//			ALOGE("%s: Index %d: Failed to create framebuffer (%d)\n", __FUNCTION__, i, status);
//			success = false;
//			break;
//		}
//	}
//	glBindFramebuffer(GL_FRAMEBUFFER, 0);
//	if (!success) {
//		ALOGW("%s: Cleaning up framebuffer names after an error in associating textures", __FUNCTION__);
//		reset();
//		return false;
//	}
//	return true;
//}

void GLSwapchain::reset() {
    if (framebuffers_.empty()) {
        return;
    }
    glDeleteFramebuffers(static_cast<GLsizei>(framebuffers_.size()), framebuffers_.data());
    framebuffers_.clear();
    //	swapchainImages_.clear();
}
