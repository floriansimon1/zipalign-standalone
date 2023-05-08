file(GLOB LIBUTILS_SOURCES ${CMAKE_CURRENT_LIST_DIR}/../src/libutils/*.cpp)

add_library(libutils STATIC)

target_sources(libutils PRIVATE ${LIBUTILS_SOURCES})

target_include_directories(libutils PUBLIC ${CMAKE_CURRENT_LIST_DIR}/../include/libutils)

