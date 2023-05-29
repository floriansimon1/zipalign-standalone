include_guard()

add_library(liblog-shim INTERFACE)

target_include_directories(liblog-shim INTERFACE ${CMAKE_CURRENT_LIST_DIR}/../include/liblog-shim)
