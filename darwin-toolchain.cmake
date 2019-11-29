set(CMAKE_SYSTEM_NAME Darwin)
set(CMAKE_OSX_DEPLOYMENT_TARGET $ENV{CONAN_CMAKE_OSX_DEPLOYMENT_TARGET})
set(CMAKE_OSX_ARCHITECTURES $ENV{CONAN_CMAKE_OSX_ARCHITECTURES})
set(CMAKE_OSX_SYSROOT $ENV{CONAN_CMAKE_OSX_SYSROOT})
if ((CMAKE_MAJOR_VERSION GREATER_EQUAL 3) AND (CMAKE_MINOR_VERSION GREATER_EQUAL 14))
  # CMake 3.14 added support for Apple platform cross-building
  # Platform/CMAKE_SYSTEM_NAME.cmake will be called later
  # Those files have broken quite a lot of things

  # Setting CMAKE_SYSTEM_NAME results it CMAKE_SYSTEM_VERSION not being set
  # For some reason, it must be the Darwin version (otherwise Platform/Darwin.cmake will not set some flags)
  # Most probably a CMake bug...
  set(CMAKE_SYSTEM_VERSION "${CMAKE_HOST_SYSTEM_VERSION}")
  set(CMAKE_SYSTEM_PROCESSOR "$ENV{CONAN_CMAKE_SYSTEM_PROCESSOR}")
endif()
