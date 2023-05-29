cmake_minimum_required(VERSION 3.24)

project(ZipAlign C CXX)

set(CMAKE_BUILD_TYPE Release)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)

if(NOT EXISTS "${CMAKE_BINARY_DIR}/conan.cmake")
  message(STATUS "Downloading conan.cmake from https://github.com/conan-io/cmake-conan")
  file(DOWNLOAD "https://raw.githubusercontent.com/conan-io/cmake-conan/0.18.1/conan.cmake"
                "${CMAKE_BINARY_DIR}/conan.cmake"
                TLS_VERIFY ON)
endif()

include(${CMAKE_BINARY_DIR}/conan.cmake)

include(zlib.cmake)
include(zopfli.cmake)
include(libbase.cmake)
include(libutils.cmake)
include(liblog-shim.cmake)
include(libziparchive.cmake)

add_executable(ZipAlign)

include(${CMAKE_BINARY_DIR}/conan.cmake)

target_link_libraries(ZipAlign PRIVATE libutils liblog-shim libziparchive libbase zopfli z)

file(GLOB ZIPALIGN_SOURCES ${CMAKE_CURRENT_LIST_DIR}/../src/zipalign/*.cpp)

target_sources(ZipAlign PUBLIC ${ZIPALIGN_SOURCES})

target_include_directories(ZipAlign PRIVATE ${CMAKE_CURRENT_LIST_DIR}/../include/zipalign)
