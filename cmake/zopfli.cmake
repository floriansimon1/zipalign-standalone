include_guard()

add_library(zopfli STATIC)

set_target_properties(zopfli PROPERTIES LINKER_LANGUAGE C)

file(GLOB ZOPFLI_SOURCES ${CMAKE_CURRENT_LIST_DIR}/../src/zopfli/*.c)

target_sources(zopfli PRIVATE ${ZOPFLI_SOURCES})

target_include_directories(zopfli INTERFACE ${CMAKE_CURRENT_LIST_DIR}/../include/zopfli/)
target_include_directories(zopfli PRIVATE   ${CMAKE_CURRENT_LIST_DIR}/../include/zopfli/zopfli)
