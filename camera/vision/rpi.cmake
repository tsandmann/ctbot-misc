set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SHARED_LIBRARY_LINK_C_FLAGS "")
set(CMAKE_SHARED_LIBRARY_LINK_CXX_FLAGS "")

set(BUILD_SHARED_LIBS OFF)

set(CMAKE_FIND_ROOT_PATH "/usr/local/armv8l-unknown-linux-gnueabihf/armv8l-unknown-linux-gnueabihf/sysroot")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

set(CMAKE_SYSROOT "/usr/local/armv8l-unknown-linux-gnueabihf/armv8l-unknown-linux-gnueabihf/sysroot")
set(CMAKE_C_COMPILER "armv8l-linux-gnueabihf-gcc")
set(CMAKE_CXX_COMPILER "armv8l-linux-gnueabihf-g++")
set(BOOST_ROOT "/usr/local/armv8l-unknown-linux-gnueabihf/armv8l-unknown-linux-gnueabihf/sysroot/usr")


SET(LOCAL_INCLUDE "${CMAKE_SYSROOT}/usr/local/include")
SET(OPT_LIB "${CMAKE_SYSROOT}/opt/vc/lib")

set (RPI ON)