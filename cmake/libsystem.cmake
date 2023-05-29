include_guard()

add_library(libsystem INTERFACE)

target_include_directories(libsystem INTERFACE ${CMAKE_CURRENT_LIST_DIR}/../include/libsystem)
