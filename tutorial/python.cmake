

find_package(PythonLibs)
include_directories(${PYTHON_INCLUDE_PATH})

swig_add_library(example_python TYPE SHARED 
                                LANGUAGE python 
                                SOURCES example.i example.c
)


swig_link_libraries(example_python ${PYTHON_LIBRARIES})

set_property(TARGET _example_python PROPERTY FOLDER "Python")
