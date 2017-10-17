project(ga)
cmake_minimum_required(VERSION 2.8)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -DDEBUG -Wall -Werror -fsanitize=address -ggdb")
if (!APPLE)
  set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -static-libasan")
else()
  add_compile_options(-Wno-delete-non-virtual-dtor)
endif()

set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -Wall -Werror -march=native -O3")
set(SOURCE_DIR "${CMAKE_SOURCE_DIR}/src/ga")
set(INCLUDE_DIR "${CMAKE_SOURCE_DIR}/src")

# testing
option(ENABLE_TESTING "Enable testing and building the tests." ON)

if(ENABLE_TESTING)
  include(CTest)
  enable_testing()
  add_subdirectory(test)
endif()

add_subdirectory(src)
