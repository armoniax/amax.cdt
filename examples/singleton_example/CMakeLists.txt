include(ExternalProject)
# if no cdt root is given use default path
if(AMAX_CDT_ROOT STREQUAL "" OR NOT AMAX_CDT_ROOT)
   find_package(amax.cdt)
endif()

ExternalProject_Add(
   singleton_example_project
   SOURCE_DIR ${CMAKE_SOURCE_DIR}/src
   BINARY_DIR ${CMAKE_BINARY_DIR}/singleton_example
   CMAKE_ARGS -DCMAKE_TOOLCHAIN_FILE=${AMAX_CDT_ROOT}/lib/cmake/amax.cdt/AmaxWasmToolchain.cmake
   UPDATE_COMMAND ""
   PATCH_COMMAND ""
   TEST_COMMAND ""
   INSTALL_COMMAND ""
   BUILD_ALWAYS 1
)