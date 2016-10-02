cmake_minimum_required (VERSION 2.8)
project (trac)

set (CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -mtune=cortex-a53 -O3")
set (CMAKE_CXX_FLAGS_RELWITHDEBINFO "${CMAKE_CXX_FLAGS_RELWITHDEBINFO} -mtune=cortex-a53 -O3")
set (CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -O0")

include_directories(${LOCAL_INCLUDE})
link_directories(${LOCAL_LIB_QT} ${LOCAL_SHARED_LIBS} ${OPT_LIB})

set (raspicam_LIBS vcos mmal_vc_client mmal_components vchiq_arm vcsm containers mmal_core mmal_util mmal raspicam raspicam_cv)
set (OpenCV_LIBS 
    opencv_videostab opencv_videoio opencv_video opencv_superres opencv_stitching opencv_shape opencv_photo opencv_objdetect opencv_ml
    opencv_imgproc opencv_imgcodecs opencv_highgui opencv_flann opencv_features2d opencv_core opencv_calib3d opencv_imgproc
)

set (QT5_LIBS Qt5Core Qt5Widgets Qt5Gui Qt5Test Qt5OpenGL GL)
set (OTHER_LIBS libjpeg libwebp libtiff libjasper IlmImf png z stdc++ dl m pthread rt)

add_executable (trac src/trackcolour.cpp)    
target_link_libraries (trac ${raspicam_LIBS} ${OpenCV_LIBS} ${QT5_LIBS} ${OTHER_LIBS})

set_property(TARGET trac PROPERTY C_STANDARD 11)
set_property(TARGET trac PROPERTY C_STANDARD_REQUIRED ON)
set_property(TARGET trac PROPERTY CXX_STANDARD 14)
set_property(TARGET trac PROPERTY CXX_STANDARD_REQUIRED ON)

#add_custom_command(TARGET trac POST_BUILD COMMAND scp trac pi@ctbot:)
