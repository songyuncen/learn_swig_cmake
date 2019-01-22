
enable_language(CSharp)
include(CSharpUtilities)

swig_add_library(ExampleNet TYPE SHARED
                            LANGUAGE csharp
                            SOURCES example.i example.c
)
set_property(TARGET ExampleNet PROPERTY FOLDER "CSharp")

set(gen_cs ${CMAKE_CURRENT_BINARY_DIR}/example.cs
           ${CMAKE_CURRENT_BINARY_DIR}/examplePINVOKE.cs
)

add_executable(ExampleNetMain main.cs ${gen_cs})

set_target_properties(ExampleNetMain PROPERTIES LINKER_LANGUAGE CSharp)
target_link_libraries(ExampleNetMain ExampleNet)
set_property(TARGET ExampleNetMain PROPERTY FOLDER "CSharp")

