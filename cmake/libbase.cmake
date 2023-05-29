include_guard()

add_library(libbase STATIC)

include(liblog-shim.cmake)

file(GLOB LIBBASE_SOURCES         ${CMAKE_CURRENT_LIST_DIR}/../src/libbase/*.cpp)
file(GLOB LIBBASE_PRIVATE_HEADERS ${CMAKE_CURRENT_LIST_DIR}/../src/libbase/*.h)

target_sources(libbase PRIVATE ${LIBBASE_SOURCES} ${LIBBASE_HEADERS})

target_link_libraries(libbase PRIVATE liblog-shim)

# I just want the code to compile on a Mac, and I don't care if it works or not.
if (${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
    target_compile_definitions(libbase PRIVATE -DO_CLOEXEC=1)
endif()


target_include_directories(libbase PUBLIC ${CMAKE_CURRENT_LIST_DIR}/../include/libbase)

