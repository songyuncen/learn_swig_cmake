cmake_minimum_required(VERSION 3.16)
project(swigdemo)

include_directories(${swigdemo_SOURCE_DIR})

add_subdirectory(alib)



find_package(PythonLibs)
include_directories(${PYTHON_INCLUDE_PATH})

find_package(SWIG REQUIRED)
include(${SWIG_USE_FILE})

set_property(SOURCE alib.i PROPERTY CPLUSPLUS ON)
set_property(SOURCE alib.i PROPERTY SWIG_MODULE_NAME alib)

# Python
swig_add_library(pyalib TYPE SHARED
                        LANGUAGE python
                        SOURCES alib.i 
  )
swig_link_libraries(pyalib ${PYTHON_LIBRARIES} alib)

# C#
swig_add_library(alibNet TYPE SHARED
                         LANGUAGE csharp
                         SOURCES alib.i
  )
swig_link_libraries(alibNet alib)


