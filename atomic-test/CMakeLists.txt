project(ATOMIC_TEST)
cmake_minimum_required(VERSION 3.1.0 FATAL_ERROR)

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


set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -save-temps -fverbose-asm")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Wextra -Wconversion")
if (${RPI} MATCHES ON)
	set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -mtune=cortex-a53 -O2")
	set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "${CMAKE_CXX_FLAGS_RELWITHDEBINFO} -mtune=cortex-a53 -O2")
    set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -O0")
else ()
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-conversion -Wno-unused-local-typedef -Wno-sign-conversion -Wno-shorten-64-to-32") 
	set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -mtune=native -O3")
	set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "${CMAKE_CXX_FLAGS_RELWITHDEBINFO} -mtune=native -O3")
endif ()


set(MAIN_SOURCES main.cpp)
set(SOURCES test.cpp)

add_executable(main ${MAIN_SOURCES} ${SOURCES})

set_property(TARGET main PROPERTY C_STANDARD 11)
set_property(TARGET main PROPERTY C_STANDARD_REQUIRED ON)
set_property(TARGET main PROPERTY CXX_STANDARD 14)
set_property(TARGET main PROPERTY CXX_STANDARD_REQUIRED ON)

if (${RPI} MATCHES ON)
# Raspberry Pi
    message("Configured for Raspberry Pi")
    set(BUILD_SHARED_LIBS OFF)
	set(Boost_USE_STATIC_LIBS ON)
	set(Boost_USE_MULTITHREAD OFF)
    set(CMAKE_EXE_LINKER_FLAGS "-static-libgcc -static-libstdc++")
else ()
endif ()


if (CMAKE_BUILD_TYPE MATCHES Release)
	message("configured for Release")
else ()
	message("configured for Debug")
endif ()
