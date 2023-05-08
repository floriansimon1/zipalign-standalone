cmake_minimum_required(VERSION 3.24)

project(ZipAlign CXX C)

include(libutils.cmake)

add_executable(ZipAlign)

target_link_libraries(ZipAlign libutils)

file(GLOB ZIPALIGN_SOURCES ${CMAKE_CURRENT_LIST_DIR}/../src/zipalign/*.cpp)

target_sources(ZipAlign PUBLIC ${ZIPALIGN_SOURCES})

