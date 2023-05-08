include_guard()

add_library(libutils STATIC)

include(liblog.cmake)

file(GLOB LIBUTILS_SOURCES ${CMAKE_CURRENT_LIST_DIR}/../src/libutils/*.cpp)

target_link_libraries(libutils PRIVATE liblog)

target_sources(libutils PRIVATE ${LIBUTILS_SOURCES})

target_include_directories(libutils PUBLIC ${CMAKE_CURRENT_LIST_DIR}/../include/libutils)

