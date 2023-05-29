include_guard()

conan_cmake_run(REQUIRES zlib/1.2.13
                GENERATORS cmake_find_package
                BUILD_TYPE Release
                BUILD missing
                BASIC_SETUP)

find_package(ZLIB MODULE)
