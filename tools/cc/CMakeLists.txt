configure_file(${CMAKE_CURRENT_SOURCE_DIR}/amax-cc.cpp.in ${CMAKE_BINARY_DIR}/amax-cc.cpp)

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/amax-cpp.cpp.in ${CMAKE_BINARY_DIR}/amax-cpp.cpp)

add_tool(amax-cc)
add_tool(amax-cpp)
