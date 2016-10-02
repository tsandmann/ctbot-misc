#####################################
cmake_minimum_required (VERSION 2.8)
#SET(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} /usr/local/lib/cmake/)
project (vision)
#find_package(raspicam REQUIRED)
#find_package(OpenCV)
#IF  ( OpenCV_FOUND AND raspicam_CV_FOUND)
#    MESSAGE(STATUS "COMPILING")

    include_directories(${LOCAL_INCLUDE})
    link_directories(${OPT_LIB} ${LOCAL_SHARED_LIBS})
    
    add_executable (vision src/vision.cpp)
    SET (raspicam_LIBS "vcos;mmal_vc_client;mmal_components;vchiq_arm;vcsm;containers;mmal_core;mmal_util;mmal;raspicam")
    SET (raspicam_CV_LIBS "mmal_core;mmal_util;mmal;raspicam;opencv_xphoto;opencv_xobjdetect;opencv_ximgproc;opencv_xfeatures2d;opencv_tracking;opencv_text;opencv_surface_matching;opencv_structured_light;opencv_stereo;opencv_saliency;opencv_rgbd;opencv_reg;opencv_plot;opencv_optflow;opencv_line_descriptor;opencv_fuzzy;opencv_face;opencv_dpm;opencv_dnn;opencv_datasets;opencv_cvv;opencv_ccalib;opencv_bioinspired;opencv_bgsegm;opencv_aruco;opencv_videostab;opencv_videoio;opencv_video;opencv_superres;opencv_stitching;opencv_shape;opencv_photo;opencv_objdetect;opencv_ml;opencv_imgproc;opencv_imgcodecs;opencv_highgui;opencv_flann;opencv_features2d;opencv_core;opencv_calib3d;raspicam_cv")
    SET (OpenCV_LIBS "opencv_videostab;opencv_videoio;opencv_video;opencv_superres;opencv_stitching;opencv_shape;opencv_photo;opencv_objdetect;opencv_ml;opencv_imgproc;opencv_imgcodecs;opencv_highgui;opencv_flann;opencv_features2d;opencv_core;opencv_calib3d")
    
#    target_link_libraries (vision ${raspicam_CV_LIBS} ${raspicam_LIBS} ${OpenCV_LIBS})
target_link_libraries (vision ${raspicam_LIBS} raspicam_cv opencv_core libjpeg libwebp libtiff libjasper IlmImf png z stdc++ dl m pthread rt)
#ELSE()
#    MESSAGE(FATAL_ERROR "OPENCV NOT FOUND")
#ENDIF()
#####################################


