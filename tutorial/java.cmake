
find_package(Java REQUIRED)
find_package(JNI REQUIRED)

include(UseJava)

include_directories(${JNI_INCLUDE_DIRS})

swig_add_library(example_java TYPE SHARED
                              LANGUAGE java
                              SOURCES example.i example.c
)
set_property(TARGET example_java PROPERTY FOLDER "Java")

add_jar(ExampleJNI SOURCES ${CMAKE_CURRENT_BINARY_DIR}/example.java 
                           ${CMAKE_CURRENT_BINARY_DIR}/exampleJNI.java
)

set_property(TARGET ExampleJNI PROPERTY FOLDER "Java")

add_dependencies(ExampleJNI example_java)

set(CMAKE_JAVA_JAR_ENTRY_POINT main)
add_jar(ExampleMainJava SOURCES main.java ENTRY_POINT main)
add_dependencies(ExampleMainJava ExampleJNI)
set_property(TARGET ExampleMainJava PROPERTY FOLDER "Java")
