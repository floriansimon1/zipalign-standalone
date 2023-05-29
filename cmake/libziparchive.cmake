include_guard()

include(libbase.cmake)
include(liblog-shim.cmake)

add_library(libziparchive STATIC)

target_link_libraries(libziparchive PRIVATE libbase liblog-shim)

file(GLOB LIBZIPARCHIVE_SOURCES_CPP     ${CMAKE_CURRENT_LIST_DIR}/../src/libziparchive/*.cpp)
file(GLOB LIBZIPARCHIVE_SOURCES_CC      ${CMAKE_CURRENT_LIST_DIR}/../src/libziparchive/*.cc)
file(GLOB LIBZIPARCHIVE_PRIVATE_HEADERS ${CMAKE_CURRENT_LIST_DIR}/../src/libbase/*.h)

target_sources(libziparchive PRIVATE ${LIBZIPARCHIVE_PRIVATE_HEADERS} ${LIBZIPARCHIVE_SOURCES_CPP} ${LIBZIPARCHIVE_SOURCES_CC})

target_compile_options(libziparchive PRIVATE "-Wno-c++11-narrowing")

target_include_directories(libziparchive PUBLIC ${CMAKE_CURRENT_LIST_DIR}/../include/libziparchive)
