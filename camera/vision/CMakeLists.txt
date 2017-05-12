#####################################
cmake_minimum_required (VERSION 2.8)
project (vision)

include_directories(${QT_INCLUDE})
link_directories(${QT_LIB} ${SHARED_LIBS} ${VC_LIB})

add_executable (vision src/vision.cpp)
target_link_libraries (vision ${raspicam_LIBS} ${OpenCV_LIBS} ${QT5_LIBS})
