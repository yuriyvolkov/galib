PROJECT(ga)
include_directories(${INCLUDE_DIR})
file(GLOB SOURCES "*.cpp")
add_library(${PROJECT_NAME} SHARED ${SOURCES})
