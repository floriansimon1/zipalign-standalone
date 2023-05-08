cmake_minimum_required(VERSION 3.24)

project(ZipAlign CXX C)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include(libutils.cmake)

add_executable(ZipAlign)

target_link_libraries(ZipAlign PRIVATE libutils)

file(GLOB ZIPALIGN_SOURCES ${CMAKE_CURRENT_LIST_DIR}/../src/zipalign/*.cpp)

target_sources(ZipAlign PUBLIC ${ZIPALIGN_SOURCES})

