file(GLOB DATA_FILES RELATIVE "${CMAKE_CURRENT_SOURCE_DIR}" "*.txt")
file(COPY ${DATA_FILES} DESTINATION ${CMAKE_CURRENT_BINARY_DIR})
include_directories(${INCLUDE_DIR} ${SOURCE_DIR})

add_executable(randtest randtest.cpp)
target_link_libraries(randtest ga)
add_test(NAME RNG-chi-square COMMAND randtest +chi)
add_test(NAME RNG-histogram COMMAND randtest +hist)
add_test(NAME RNG-bounds COMMAND randtest +bnds)
add_test(NAME RNG-means COMMAND randtest +means)

add_executable(ex1 ex1.cpp)
target_link_libraries(ex1 ga)
add_test(SimpleGA+2DBinaryStringGenome  ex1)

add_executable(ex2 ex2.cpp)
target_link_libraries(ex2 ga)
add_test(SimpleGA+Bin2DecGenome ex2)

add_executable(ex3 ex3.cpp)
target_link_libraries(ex3 ga)
add_test(SimpleGA+2DBinaryStringGenome-2d-pattern ex3)

add_executable(ex4 ex4.cpp)
target_link_libraries(ex4 ga)
add_test(SteadyStateGA+3DBinaryStringGenome ex4)

add_executable(ex5 ex5.cpp)
target_link_libraries(ex5 ga)
add_test(GASteadyStateGA+2DBinStr+Bin2Dec-composite-genome ex5)

add_executable(ex6 ex6.cpp)
target_link_libraries(ex6 ga)
add_test(GASteadyStateGA+TreeGenome ex6)

add_executable(ex7 ex7.cpp)
target_link_libraries(ex7 ga)
add_test(GASteadyStateGA+GA2DBinaryStringGenome ex7)

add_executable(ex8 ex8.cpp)
target_link_libraries(ex8 ga)
add_test(test-8 ex8)

add_executable(ex9 ex9.cpp)
target_link_libraries(ex9 ga)
add_test(test-9 ex9)

add_executable(ex10 ex10.cpp)
target_link_libraries(ex10 ga)
add_test(test-10 ex10)

add_executable(ex11 ex11.cpp)
target_link_libraries(ex11 ga)
add_test(test-11 ex11)

add_executable(ex12 ex12.cpp)
target_link_libraries(ex12 ga)
add_test(test-12 ex12)

add_executable(ex13 ex13.cpp)
target_link_libraries(ex13 ga)
add_test(test-13 ex13)

add_executable(ex14 ex14.cpp)
target_link_libraries(ex14 ga)
add_test(test-14 ex14)

add_executable(ex15 ex15.cpp)
target_link_libraries(ex15 ga)
add_test(test-15 ex15)

add_executable(ex16 ex16.cpp)
target_link_libraries(ex16 ga)
add_test(test-16 ex16)

add_executable(ex17 ex17.cpp)
target_link_libraries(ex17 ga)
add_test(test-17 ex17)

add_executable(ex18 ex18.cpp)
target_link_libraries(ex18 ga)
add_test(test-18 ex18)

add_executable(ex19 ex19.cpp)
target_link_libraries(ex19 ga)
add_test(test-19 ex19)

add_executable(ex20 ex20.cpp)
target_link_libraries(ex20 ga)
add_test(test-20 ex20)

add_executable(ex21 ex21.cpp)
target_link_libraries(ex21 ga)
add_test(test-21 ex21)

add_executable(ex22 ex22.cpp)
target_link_libraries(ex22 ga)
add_test(test-22 ex22)

add_executable(ex23 ex23.cpp)
target_link_libraries(ex23 ga)
add_test(test-23 ex23)

add_executable(ex24 ex24.cpp)
target_link_libraries(ex24 ga)
add_test(test-24 ex24)

add_executable(ex25 ex25.cpp)
target_link_libraries(ex25 ga)
add_test(test-25 ex25)

add_executable(ex26 ex26.cpp)
target_link_libraries(ex26 ga)
add_test(test-26 ex26)

add_executable(ex27 ex27.cpp)
target_link_libraries(ex27 ga)
add_test(test-27 ex27)


