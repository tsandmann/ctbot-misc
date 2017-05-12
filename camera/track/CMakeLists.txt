cmake_minimum_required (VERSION 2.8)
project (trac)

set (CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -mtune=cortex-a53 -O3")
set (CMAKE_CXX_FLAGS_RELWITHDEBINFO "${CMAKE_CXX_FLAGS_RELWITHDEBINFO} -mtune=cortex-a53 -O3")
set (CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -O0")

include_directories(${QT_INCLUDE})
link_directories(${QT_LIB} ${SHARED_LIBS} ${VC_LIB})

add_executable (trac src/trackcolour.cpp)
target_link_libraries (trac ${raspicam_LIBS} ${OpenCV_LIBS} ${QT5_LIBS})

set_property(TARGET trac PROPERTY C_STANDARD 11)
set_property(TARGET trac PROPERTY C_STANDARD_REQUIRED ON)
set_property(TARGET trac PROPERTY CXX_STANDARD 14)
set_property(TARGET trac PROPERTY CXX_STANDARD_REQUIRED ON)

#add_custom_command(TARGET trac POST_BUILD COMMAND scp trac pi@ctbot:)
