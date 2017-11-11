find_package(Motif REQUIRED)
find_package(X11 REQUIRED)

if (X11_Xt_FOUND AND X11_Xmu_FOUND)
    include_directories(${INCLUDE_DIR} ${SOURCE_DIR} ${X11_INCLUDE_DIR} ${MOTIF_INCLUDE_DIR})
    add_definitions(-DUSE_MOTIF)

    add_executable(gaview gaview.cpp)
    target_link_libraries(gaview ga ${MOTIF_LIBRARIES} ${X11_LIBRARIES} ${X11_Xt_LIB} ${X11_Xmu_LIB})

    add_executable(tspview tspview.cpp)
    target_link_libraries(tspview ga ${MOTIF_LIBRARIES} ${X11_LIBRARIES} ${X11_Xt_LIB} ${X11_Xmu_LIB})

    file(GLOB DATA_FILES RELATIVE "${CMAKE_CURRENT_SOURCE_DIR}" "*.txt")
    file(COPY ${DATA_FILES} DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
else()
    message(WARNING "skip graphic examples build - Xt or Xmu libraries are not found")
endif()
