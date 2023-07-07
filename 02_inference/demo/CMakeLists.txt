add_executable(demo demo.cc)

find_package(stb REQUIRED)

target_include_directories(demo PRIVATE ${stb_INCLUDE_DIRS})
target_link_libraries(demo PRIVATE libQNNModule)
