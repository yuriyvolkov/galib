PROJECT(ga)
include_directories(${INCLUDE_DIR} ${CMAKE_CURRENT_SOURCE_DIR})
file(GLOB SOURCES "*.cpp")
add_library(${PROJECT_NAME} STATIC ${SOURCES})
