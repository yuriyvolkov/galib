PROJECT(ga)
include_directories(${CMAKE_CURRENT_SOURCE_DIR} ${INCLUDE_DIR})
file(GLOB SOURCES "*.cpp")
add_library(${PROJECT_NAME} STATIC ${SOURCES})
