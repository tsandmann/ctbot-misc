cmake_minimum_required (VERSION 2.8)
project (trac2)

ADD_CUSTOM_TARGET(debug
	COMMAND ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=Debug ${CMAKE_SOURCE_DIR}
	COMMAND ${CMAKE_COMMAND} --build ${CMAKE_BINARY_DIR} --target all
	COMMENT "Switch CMAKE_BUILD_TYPE to Debug"
)

ADD_CUSTOM_TARGET(release
	COMMAND ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=Release ${CMAKE_SOURCE_DIR}
	COMMAND ${CMAKE_COMMAND} --build ${CMAKE_BINARY_DIR} --target all
	COMMENT "Switch CMAKE_BUILD_TYPE to Release"
)

ADD_CUSTOM_TARGET(release-sym
	COMMAND ${CMAKE_COMMAND} -DCMAKE_BUILD_TYPE=RELWITHDEBINFO ${CMAKE_SOURCE_DIR}
	COMMAND ${CMAKE_COMMAND} --build ${CMAKE_BINARY_DIR} --target all
	COMMENT "Switch CMAKE_BUILD_TYPE to ReleaseWithDebInfo"
)

if (NOT CMAKE_BUILD_TYPE)
	set (CMAKE_BUILD_TYPE "Debug")
endif()

set (CMAKE_SYSTEM_IDENTIFIER "${CMAKE_SYSTEM_NAME}-${CMAKE_SYSTEM_PROCESSOR}-${CMAKE_BUILD_TYPE}")


set (CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -mtune=cortex-a53 -O3 -flto")
set (CMAKE_CXX_FLAGS_RELWITHDEBINFO "${CMAKE_CXX_FLAGS_RELWITHDEBINFO} -mtune=cortex-a53 -O3")
set (CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -O0")

set (BOOST_LIBS iostreams system)
set (BUILD_SHARED_LIBS OFF)
set (Boost_USE_STATIC_LIBS ON)
set (Boost_USE_MULTITHREAD OFF)
#set (CMAKE_EXE_LINKER_FLAGS "-static-libgcc -static-libstdc++")

find_package(Boost COMPONENTS ${BOOST_LIBS} REQUIRED)

include_directories(${QT_INCLUDE} lib ${Boost_INCLUDE_DIRS})
link_directories(${QT_LIB} ${SHARED_LIBS} ${VC_LIB})

add_executable (trac2 src/contours.cpp)
target_link_libraries (trac2 ${CMAKE_SOURCE_DIR}/lib/libtsio_${CMAKE_SYSTEM_IDENTIFIER}.a ${Boost_LIBRARIES} ${raspicam_LIBS} ${OpenCV_LIBS} ${QT5_LIBS})

set_property(TARGET trac2 PROPERTY C_STANDARD 11)
set_property(TARGET trac2 PROPERTY C_STANDARD_REQUIRED ON)
set_property(TARGET trac2 PROPERTY CXX_STANDARD 14)
set_property(TARGET trac2 PROPERTY CXX_STANDARD_REQUIRED ON)

#add_custom_command(TARGET trac2 POST_BUILD COMMAND scp trac2 pi@192.168.1.33:)

MESSAGE (STATUS "CMAKE_SYSTEM: " ${CMAKE_SYSTEM})
MESSAGE (STATUS "CMAKE_SYSTEM_NAME: " ${CMAKE_SYSTEM_NAME})
MESSAGE (STATUS "CMAKE_SYSTEM_PROCESSOR: " ${CMAKE_SYSTEM_PROCESSOR})
MESSAGE (STATUS "CMAKE_SYSTEM_IDENTIFIER: " ${CMAKE_SYSTEM_IDENTIFIER})
