cmake_minimum_required(VERSION 3.24)

project(ZipAlign CXX C)

add_executable(ZipAlign)

file(GLOB ZIPALIGN_SOURCES ${CMAKE_CURRENT_LIST_DIR}/../src/zipalign/*.cpp)

target_sources(ZipAlign PUBLIC ${ZIPALIGN_SOURCES})

