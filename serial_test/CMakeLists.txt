project (SERIAL_TEST CXX)
cmake_minimum_required (VERSION 2.8.11 FATAL_ERROR)

include (cmake/targets.cmake)

set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra")
set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wextra -Wconversion")
if (${RPI} MATCHES ON)
	set (CMAKE_C_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -mtune=cortex-a53 -O3")
	set (CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -mtune=cortex-a53 -O3")
	set (CMAKE_CXX_FLAGS_RELWITHDEBINFO "${CMAKE_CXX_FLAGS_RELWITHDEBINFO} -mtune=cortex-a53 -O3")
    set (CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -O0")
	set (CMAKE_EXE_LINKER_FLAGS_RELEASE "${CMAKE_EXE_LINKER_FLAGS_RELEASE} -O3")
else ()
	set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-conversion -Wno-unused-local-typedef -Wno-sign-conversion -Wno-shorten-64-to-32") 
	set (CMAKE_C_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -mtune=native -O3 -flto")
	set (CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -mtune=native -O3 -flto")
	set (CMAKE_CXX_FLAGS_RELWITHDEBINFO "${CMAKE_CXX_FLAGS_RELWITHDEBINFO} -mtune=native -O3 -flto")
	set (CMAKE_EXE_LINKER_FLAGS_RELEASE "${CMAKE_EXE_LINKER_FLAGS_RELEASE} -O3 -flto")
endif ()

include_directories (${CMAKE_CURRENT_SOURCE_DIR})
include_directories (${CMAKE_CURRENT_SOURCE_DIR}/contrib/include)

set (SOURCES
	ll_command.cpp
	serial_protocol.cpp
	test_serial_protocol.cpp
)

link_directories (contrib/lib)

add_executable (test_serial ${SOURCES})
target_link_libraries (test_serial tsio_${CMAKE_SYSTEM_IDENTIFIER})

set_property (TARGET test_serial PROPERTY CXX_STANDARD 14)
set_property (TARGET test_serial PROPERTY CXX_STANDARD_REQUIRED ON)

set (BOOST_LIBS iostreams system)
if (${RPI} MATCHES ON)
# Raspberry Pi
    message ("Configured for Raspberry Pi")
    set (BUILD_SHARED_LIBS OFF)
	set (Boost_USE_STATIC_LIBS ON)
	set (Boost_USE_MULTITHREAD OFF)
    set (CMAKE_EXE_LINKER_FLAGS "-static-libgcc -static-libstdc++")
endif ()

find_package (Boost COMPONENTS ${BOOST_LIBS} REQUIRED)
# include path for boost installation
include_directories (${Boost_INCLUDE_DIRS})

# link with boost library
target_link_libraries (test_serial pthread ${Boost_LIBRARIES})
