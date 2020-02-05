
project(alib CXX)

set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)

add_library(alib SHARED)
target_sources(alib
  PRIVATE
    alib.cc
  PUBLIC
    alib.h
  )


