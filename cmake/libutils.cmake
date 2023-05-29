include_guard()

add_library(libutils STATIC)

include(liblog-shim.cmake)
include(libsystem.cmake)
include(libbase.cmake)

file(GLOB LIBUTILS_SOURCES ${CMAKE_CURRENT_LIST_DIR}/../src/libutils/*.cpp)

target_link_libraries(libutils PRIVATE liblog-shim)
target_link_libraries(libutils PUBLIC  libsystem)
target_link_libraries(libutils PRIVATE libbase)

target_sources(libutils PRIVATE ${LIBUTILS_SOURCES})

target_include_directories(libutils PUBLIC ${CMAKE_CURRENT_LIST_DIR}/../include/libutils)
