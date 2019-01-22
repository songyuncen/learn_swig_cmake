project(swig_tutorial)

set_property(SOURCE example.i PROPERTY C ON)
set_property(SOURCE example.i PROPERTY SWIG_MODULE_NAME example)

include(python.cmake)
include(java.cmake)
include(csharp.cmake)

