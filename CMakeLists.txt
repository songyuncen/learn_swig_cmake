cmake_minimum_required(VERSION 3.10)
project(swig_cmake)

find_package(SWIG REQUIRED)
include(${SWIG_USE_FILE})

if(MSVC)
   set_property(GLOBAL PROPERTY USE_FOLDERS ON)
endif(MSVC)

add_subdirectory(tutorial)


