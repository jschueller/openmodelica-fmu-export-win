cmake_minimum_required (VERSION 2.8)
set (CMAKE_BUILD_TYPE "Release" CACHE STRING "build type")
project (wrapper C)
if (POLICY CMP0091)
  cmake_policy (SET CMP0091 NEW)
endif()

message(STATUS "CMAKE_SIZEOF_VOID_P=${CMAKE_SIZEOF_VOID_P}")

# openmodelica uses -Bstatic
add_library (cwrapper STATIC wrapper.c)
set_target_properties (cwrapper PROPERTIES POSITION_INDEPENDENT_CODE ON MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
set_target_properties (cwrapper PROPERTIES ARCHIVE_OUTPUT_DIRECTORY_RELEASE ${CMAKE_BINARY_DIR} LIBRARY_OUTPUT_DIRECTORY_RELEASE ${CMAKE_BINARY_DIR} RUNTIME_OUTPUT_DIRECTORY_RELEASE ${CMAKE_BINARY_DIR})
if (MSVC)
  target_compile_definitions(cwrapper PRIVATE _CRT_SECURE_NO_WARNINGS)
endif()
