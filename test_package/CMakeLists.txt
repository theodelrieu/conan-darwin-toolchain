PROJECT(MyHello)
cmake_minimum_required(VERSION 2.8)

include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
CONAN_BASIC_SETUP()

ADD_EXECUTABLE(hello hello.c)
set_target_properties(hello PROPERTIES MACOSX_BUNDLE FALSE)
include_directories(${CONAN_INCLUDE_DIRS})
target_link_libraries(hello ${CONAN_LIBS})

