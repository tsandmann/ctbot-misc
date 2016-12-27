message (STATUS "Configuring for Raspberry Pi 2")

# RPi settings
set (CMAKE_SYSTEM_NAME Linux)
set (CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
set (CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "")
set (RPI ON)

set (Boost_USE_STATIC_LIBS ON)
set (Boost_USE_MULTITHREAD OFF)
  
set (CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -O0")
set (CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -O0")
  
set (CMAKE_EXE_LINKER_FLAGS "-static-libgcc -static-libstdc++")
set (BUILD_SHARED_LIBS OFF)

# RPi 2 settings
set (CMAKE_SYSTEM_PROCESSOR armv7l)

set (CMAKE_SYSROOT "/usr/local/arm-unknown-linux-gnueabihf/arm-unknown-linux-gnueabihf/sysroot")
set (CMAKE_C_COMPILER "arm-linux-gnueabihf-gcc")
set (CMAKE_CXX_COMPILER "arm-linux-gnueabihf-g++")
set (BOOST_ROOT "/usr/local/arm-unknown-linux-gnueabihf/arm-unknown-linux-gnueabihf/sysroot/usr")

set (CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -mcpu=cortex-a7 -mfloat-abi=hard -mfpu=vfpv4 -Wall -Wextra -Wconversion")
set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mcpu=cortex-a7 -mfloat-abi=hard -mfpu=vfpv4 -Wall -Wextra")
set (CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -mtune=cortex-a7 -O3")
set (CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -mtune=cortex-a7 -O3")
set (CMAKE_C_FLAGS_RELWITHDEBINFO "${CMAKE_C_FLAGS_RELWITHDEBINFO} -mtune=cortex-a7 -O3")
set (CMAKE_CXX_FLAGS_RELWITHDEBINFO "${CMAKE_CXX_FLAGS_RELWITHDEBINFO} -mtune=cortex-a7 -O3")
