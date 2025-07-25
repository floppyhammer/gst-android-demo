set(GST_LIBRARIES
        # ${GST_ARCH_DIR}/lib/libgstreamer-1.0.a
        ${GST_ARCH_DIR}/lib/libgstrtsp-1.0.a
        ${GST_ARCH_DIR}/lib/libgstphotography-1.0.a
        # ${GST_ARCH_DIR}/lib/liboggkate.a
        ${GST_ARCH_DIR}/lib/libx264.a
        ${GST_ARCH_DIR}/lib/libspeex.a
        ${GST_ARCH_DIR}/lib/libtheoradec.a
        ${GST_ARCH_DIR}/lib/libgstaudio-1.0.a
        ${GST_ARCH_DIR}/lib/libgstfft-1.0.a
        ${GST_ARCH_DIR}/lib/libpcre2-8.a
        ${GST_ARCH_DIR}/lib/libtheoraenc.a
        ${GST_ARCH_DIR}/lib/libgsttranscoder-1.0.a
        ${GST_ARCH_DIR}/lib/libiconv.a
        ${GST_ARCH_DIR}/lib/libintl.a
        ${GST_ARCH_DIR}/lib/libgstbadaudio-1.0.a
        ${GST_ARCH_DIR}/lib/libssl.a
        ${GST_ARCH_DIR}/lib/libgstwebrtcnice-1.0.a
        ${GST_ARCH_DIR}/lib/libopenjp2.a
        ${GST_ARCH_DIR}/lib/libfreetype.a
        ${GST_ARCH_DIR}/lib/libgstcodecparsers-1.0.a
        ${GST_ARCH_DIR}/lib/libzbar.a
        ${GST_ARCH_DIR}/lib/liborc-test-0.4.a
        ${GST_ARCH_DIR}/lib/libpangocairo-1.0.a
        ${GST_ARCH_DIR}/lib/libgstvalidate-1.0.a
        ${GST_ARCH_DIR}/lib/libffi.a
        ${GST_ARCH_DIR}/lib/libgstvideo-1.0.a
        ${GST_ARCH_DIR}/lib/libavformat.a
        ${GST_ARCH_DIR}/lib/libgstrtp-1.0.a
        ${GST_ARCH_DIR}/lib/libgsturidownloader-1.0.a
        ${GST_ARCH_DIR}/lib/libwavpack.a
        ${GST_ARCH_DIR}/lib/libvorbis.a
        ${GST_ARCH_DIR}/lib/libgstapp-1.0.a
        ${GST_ARCH_DIR}/lib/libopus.a
        ${GST_ARCH_DIR}/lib/libglib-2.0.a
        ${GST_ARCH_DIR}/lib/libgstinsertbin-1.0.a
        ${GST_ARCH_DIR}/lib/libcairo.a
        ${GST_ARCH_DIR}/lib/libgstisoff-1.0.a
        # ${GST_ARCH_DIR}/lib/libvorbisidec.a
        ${GST_ARCH_DIR}/lib/libgstsctp-1.0.a
        # ${GST_ARCH_DIR}/lib/libkate.a
        ${GST_ARCH_DIR}/lib/libdca.a
        ${GST_ARCH_DIR}/lib/libopenh264.a
        ${GST_ARCH_DIR}/lib/librtmp.a
        ${GST_ARCH_DIR}/lib/libpng16.a
        ${GST_ARCH_DIR}/lib/libfontconfig.a
        ${GST_ARCH_DIR}/lib/libgstvulkan-1.0.a
        ${GST_ARCH_DIR}/lib/libvorbisfile.a
        ${GST_ARCH_DIR}/lib/libgstmpegts-1.0.a
        ${GST_ARCH_DIR}/lib/libtheora.a
        ${GST_ARCH_DIR}/lib/libdav1d.a
        ${GST_ARCH_DIR}/lib/libpangoft2-1.0.a
        ${GST_ARCH_DIR}/lib/libgstsdp-1.0.a
        ${GST_ARCH_DIR}/lib/libgstnet-1.0.a
        ${GST_ARCH_DIR}/lib/libopencore-amrwb.a
        ${GST_ARCH_DIR}/lib/libharfbuzz.a
        ${GST_ARCH_DIR}/lib/libcrypto.a
        ${GST_ARCH_DIR}/lib/libmp3lame.a
        ${GST_ARCH_DIR}/lib/libspandsp.a
        ${GST_ARCH_DIR}/lib/libgmodule-2.0.a
        ${GST_ARCH_DIR}/lib/libbz2.a
        #    ${GST_ARCH_DIR}/lib/libcroco-0.6.a
        ${GST_ARCH_DIR}/lib/libjson-glib-1.0.a
        ${GST_ARCH_DIR}/lib/libgstriff-1.0.a
        ${GST_ARCH_DIR}/lib/libgstplayer-1.0.a
        ${GST_ARCH_DIR}/lib/libgstcodecs-1.0.a
        ${GST_ARCH_DIR}/lib/libges-1.0.a
        ${GST_ARCH_DIR}/lib/libavcodec.a
        ${GST_ARCH_DIR}/lib/libjpeg.a
        ${GST_ARCH_DIR}/lib/libxml2.a
        ${GST_ARCH_DIR}/lib/libpango-1.0.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstrsvg.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstudp.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstproxy.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstsdpelem.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstid3demux.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstclosedcaption.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstdvdsub.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstdvbsuboverlay.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstopusparse.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstaudiomixmatrix.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstflv.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstadpcmenc.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstvideofiltersbad.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstrtpmanager.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstgoom.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstaudioparsers.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstvideorate.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstvideofilter.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstwavpack.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstvulkan.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgsty4mdec.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstsrtp.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstaiff.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstsubenc.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstapetag.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstaes.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstvideoframe_audiolevel.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstaudioconvert.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstbayer.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgsticydemux.a
        #    ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstfrei0r.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstjpegformat.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstaudiobuffersplit.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstrtpmanagerbad.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstadpcmdec.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstmpegpsdemux.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstnle.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstbz2.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstaudiofx.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstaudiorate.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstvideotestsrc.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstogg.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstfieldanalysis.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstvideobox.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstwavenc.a
        # ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstamrnb.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstadaptivedemux2.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstrealmedia.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstopenh264.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstcoreelements.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgsthls.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstwavparse.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstrist.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstxingmux.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstdtsdec.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstsoup.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstauparse.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstvolume.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgsttheora.a
        # ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstkate.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstrtsp.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstencoding.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstsmoothstreaming.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstpango.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstid3tag.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstaudiolatency.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstsegmentclip.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstcoloreffects.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstspeed.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstmpg123.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstrtspclientsink.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstsoundtouch.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstadder.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgsttypefindfunctions.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstautoconvert.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstplayback.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstaudioresample.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstasfmux.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstaudiofxbad.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstopus.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgsttaglib.a
        # ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstamrwbdec.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstmpegtsmux.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgsta52dec.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstwebrtc.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstmultipart.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstdeinterlace.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstsmpte.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgsty4menc.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstnetsim.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstgeometrictransform.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstrtmp.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstopenjpeg.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstcodectimestamper.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstvideocrop.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstdebugutilsbad.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstcoretracers.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstassrender.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstzbar.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstladspa.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstaudiovisualizers.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstx264.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstalphacolor.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstlibav.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstremovesilence.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstges.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstgio.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstlevel.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstgdp.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstalpha.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstautodetect.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstinterleave.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstvorbis.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstimagefreeze.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstmxf.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstvideoconvertscale.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstspeex.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstopengl.a
        # ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstivorbisdec.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstjpeg.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstshapewipe.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstalaw.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstspandsp.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstdvdlpcmdec.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstmultifile.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstdv.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstreplaygain.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstcamerabin.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstipcpipeline.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstinterlace.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstrfbsrc.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstcutter.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstsrt.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstrtmp2.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstmidi.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstmulaw.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstdebug.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstandroidmedia.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstlame.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstmatroska.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstcairo.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstgaudieffects.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstpnm.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstmpegtsdemux.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstsctp.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstoverlaycomposition.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstflac.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstdtls.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstwebrtcdsp.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstpcapparse.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgsttimecode.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgsteffectv.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstnice.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstsiren.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstmpegpsmux.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstaudiomixer.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstdvdspu.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstspectrum.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstrawparse.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstvideoparsersbad.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstcompositor.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstisomp4.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstinter.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstgdkpixbuf.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstequalizer.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstlegacyrawparse.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstdtmf.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstpng.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstsmooth.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstvpx.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstivtc.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstasf.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstsbc.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstdash.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstvideomixer.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgsttcp.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstapp.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstaccurip.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstopensles.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstgoom2k1.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstfreeverb.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstrtp.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstsubparse.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstaudiotestsrc.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstflxdec.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstvoaacenc.a
        ${GST_ARCH_DIR}/lib/gstreamer-1.0/libgstavi.a
        ${GST_ARCH_DIR}/lib/libfribidi.a
        ${GST_ARCH_DIR}/lib/libgraphene-1.0.a
        ${GST_ARCH_DIR}/lib/libgstwebrtc-1.0.a
        ${GST_ARCH_DIR}/lib/libcairo-gobject.a
        ${GST_ARCH_DIR}/lib/liborc-0.4.a
        ${GST_ARCH_DIR}/lib/librsvg-2.a
        ${GST_ARCH_DIR}/lib/libSoundTouch.a
        ${GST_ARCH_DIR}/lib/libsqlite3.a
        ${GST_ARCH_DIR}/lib/libsrtp2.a
        ${GST_ARCH_DIR}/lib/libgstgl-1.0.a
        ${GST_ARCH_DIR}/lib/liba52.a
        ${GST_ARCH_DIR}/lib/libvorbisenc.a
        ${GST_ARCH_DIR}/lib/libgstpbutils-1.0.a
        ${GST_ARCH_DIR}/lib/libcairo-script-interpreter.a
        ${GST_ARCH_DIR}/lib/libgobject-2.0.a
        ${GST_ARCH_DIR}/lib/libpixman-1.a
        ${GST_ARCH_DIR}/lib/libdv.a
        ${GST_ARCH_DIR}/lib/libogg.a
        ${GST_ARCH_DIR}/lib/libtiff.a
        ${GST_ARCH_DIR}/lib/libtag.a
        ${GST_ARCH_DIR}/lib/libsrt.a
        ${GST_ARCH_DIR}/lib/libnice.a
        ${GST_ARCH_DIR}/lib/libgstplay-1.0.a
        ${GST_ARCH_DIR}/lib/libgstallocators-1.0.a
        ${GST_ARCH_DIR}/lib/gio/modules/libgioopenssl.a
        ${GST_ARCH_DIR}/lib/libgdk_pixbuf-2.0.a
        ${GST_ARCH_DIR}/lib/libgstbasecamerabinsrc-1.0.a
        ${GST_ARCH_DIR}/lib/libmpg123.a
        ${GST_ARCH_DIR}/lib/libswresample.a
        ${GST_ARCH_DIR}/lib/libz.a
        ${GST_ARCH_DIR}/lib/libFLAC.a
        ${GST_ARCH_DIR}/lib/libgio-2.0.a
        ${GST_ARCH_DIR}/lib/libexpat.a
        ${GST_ARCH_DIR}/lib/libvpx.a
        ${GST_ARCH_DIR}/lib/libavutil.a
        ${GST_ARCH_DIR}/lib/libgstadaptivedemux-1.0.a
        ${GST_ARCH_DIR}/lib/libvo-aacenc.a
        ${GST_ARCH_DIR}/lib/libsbc.a
        # ${GST_ARCH_DIR}/lib/libopencore-amrnb.a
        ${GST_ARCH_DIR}/lib/libgstrtspserver-1.0.a
        ${GST_ARCH_DIR}/lib/libgsttag-1.0.a
        ${GST_ARCH_DIR}/lib/libpsl.a
        ${GST_ARCH_DIR}/lib/libass.a
        ${GST_ARCH_DIR}/lib/libgthread-2.0.a
        ${GST_ARCH_DIR}/lib/libcharset.a
        ${GST_ARCH_DIR}/lib/libgstbase-1.0.a
        ${GST_ARCH_DIR}/lib/libgstcheck-1.0.a
        ${GST_ARCH_DIR}/lib/libavfilter.a
        ${GST_ARCH_DIR}/lib/libgstcontroller-1.0.a
        ${GST_ARCH_DIR}/lib/libturbojpeg.a
)

if (EMC_OLDER_GST)
    set(GST_LIBRARIES ${GST_LIBRARIES} ${GST_ARCH_DIR}/lib/libsoup-2.4.a)
else ()
    set(GST_LIBRARIES ${GST_LIBRARIES} ${GST_ARCH_DIR}/lib/libsoup-3.0.a ${GST_ARCH_DIR}/lib/libnghttp2.a)
endif ()

if (EXISTS "${GST_ARCH_DIR}/lib/libwebrtc-audio-processing-2.a")
    list(APPEND GST_LIBRARIES "${GST_ARCH_DIR}/lib/libwebrtc-audio-processing-2.a")
elseif (EXISTS "${GST_ARCH_DIR}/lib/libwebrtc-audio-processing-1.a")
    list(APPEND GST_LIBRARIES "${GST_ARCH_DIR}/lib/libwebrtc-audio-processing-1.a")
else ()
    list(APPEND GST_LIBRARIES "${GST_ARCH_DIR}/lib/libwebrtc_audio_processing.a")
endif ()

if (EMC_OLDER_GST)
    set(LIBSOUP_LIBRARIES ${GST_ARCH_DIR}/lib/libsoup-2.4.a)
else ()
    set(LIBSOUP_LIBRARIES ${GST_ARCH_DIR}/lib/libsoup-3.0.a)
endif ()
set(JSONGLIB_LIBRARIES ${GST_ARCH_DIR}/lib/libjson-glib-1.0.a)
set(GLIB_LIBRARIES ${GST_ARCH_DIR}/lib/libglib-2.0.a)

set(GIO_LIBRARIES ${GST_ARCH_DIR}/lib/gio/modules/libgioopenssl.a ${GST_ARCH_DIR}/lib/libgio-2.0.a)
