include_guard()

add_library(liblog STATIC)

include(libutils.cmake)

file(GLOB LIBLOG_SOURCES         ${CMAKE_CURRENT_LIST_DIR}/../src/liblog/*.h)
file(GLOB LIBLOG_PRIVATE_HEADERS ${CMAKE_CURRENT_LIST_DIR}/../src/liblog/*.cpp)

target_sources(liblog PRIVATE ${LIBLOG_SOURCES} ${LIBLOG_PRIVATE_HEADERS})

target_link_libraries(liblog PRIVATE libutils)

target_include_directories(liblog PUBLIC ${CMAKE_CURRENT_LIST_DIR}/../include/liblog)

