set (CMAKE_SYSTEM_NAME Linux)
set (CMAKE_SYSTEM_PROCESSOR armv8l)
set (CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
set (CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "")

set (BUILD_SHARED_LIBS OFF)

set (CMAKE_SYSROOT "/usr/local/armv8l-unknown-linux-gnueabihf/armv8l-unknown-linux-gnueabihf/sysroot")
set (CMAKE_FIND_ROOT_PATH "${CMAKE_SYSROOT}")
set (CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set (CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set (CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set (CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SYSROOT}/usr/lib/cmake")

set (CMAKE_C_COMPILER "armv8l-linux-gnueabihf-gcc")
set (CMAKE_CXX_COMPILER "armv8l-linux-gnueabihf-g++")
set (BOOST_ROOT "${CMAKE_SYSROOT}")

set (QT_ROOT "${CMAKE_SYSROOT}/../../qt5-rpi/")
set (CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${QT_ROOT}/lib/cmake")
set (QT_INCLUDE "${QT_ROOT}/include")
set (QT_LIB "${QT_ROOT}/lib" "${QT_ROOT}/plugins/platforms" "${QT_ROOT}/plugins/egldeviceintegrations")
set (SHARED_LIBS "${CMAKE_SYSROOT}/usr/share/OpenCV/3rdparty/lib")
set (VC_LIB "${CMAKE_SYSROOT}/usr/lib/vc")


set (raspicam_LIBS vcos mmal_vc_client mmal_components vchiq_arm vcsm containers mmal_core mmal_util mmal raspicam raspicam_cv)
set (OpenCV_LIBS
    opencv_videostab opencv_videoio opencv_video opencv_superres opencv_stitching opencv_shape opencv_photo opencv_objdetect opencv_ml
    opencv_imgproc opencv_imgcodecs opencv_highgui opencv_flann opencv_features2d opencv_core opencv_calib3d opencv_imgproc opencv_xphoto
    tegra_hal
)
set (QT5_LIBS
    Qt5OpenGL Qt5Widgets Qt5Gui Qt5Test Qt5EglFSDeviceIntegration qeglfs qeglfs-brcm-integration bcm_host Qt5EglSupport Qt5Gui
    Qt5PlatformCompositorSupport Qt5OpenGL Qt5InputSupport Qt5DeviceDiscoverySupport Qt5ThemeSupport Qt5Widgets Qt5EventDispatcherSupport
    Qt5ServiceSupport Qt5DBus Qt5FontDatabaseSupport qtfreetype Qt5FbSupport GLESv2_static qtlibpng qtharfbuzz Qt5Core ts
    m rt z qtpcre dl pthread GLESv2_static EGL_static khrn_static vchostif
)
