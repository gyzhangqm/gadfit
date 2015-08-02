# Copyright (C) 2014-2015 Raul Laasner
# This file is distributed under the terms of the GNU General Public
# License, see LICENSE in the root directory of the present
# distribution or http://gnu.org/copyleft/gpl.txt .

set(TESTS
  1_gaussian
  2_integral_single
  3_integral_double)

enable_testing()
include_directories(${CMAKE_CURRENT_BINARY_DIR}/../src)

if (NOT LINALG_LIBS)
  if (LINALG_FLAVOR MATCHES "lapack")
    find_package(LAPACK REQUIRED)
    set(LIBS ${LIBS} ${LAPACK_LIBRARIES})
  elseif (LINALG_FLAVOR MATCHES "atlas")
    find_package(Atlas REQUIRED)
    include_directories(${Atlas_INCLUDE_DIR})
    set(LIBS ${LIBS} ${Atlas_LIBRARIES})
  elseif (LINALG_FLAVOR MATCHES "mkl")
    find_package(MKL REQUIRED)
    include_directories(${MKL_INCLUDE_DIR})
    set(LIBS ${LIBS} ${MKL_LIBRARIES})
  endif()
endif()
try_compile(LINALG_TEST ${CMAKE_CURRENT_BINARY_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}/../cmake/tests/Linalg.f90
  CMAKE_FLAGS
  "-DLINK_LIBRARIES=${LIBS}"
  "-DLINK_DIRECTORIES=${LINALG_LIB_PATH}")
set(LIBS ${LIBS} gadfit)
if (LINALG_TEST)
  message(STATUS "Linear algebra library is OK")
else()
  add_library(lapack-fallback SHARED EXCLUDE_FROM_ALL lapack-fallback.f)
  set(LIBS ${LIBS} lapack-fallback)
  message(STATUS "Fallback linear algebra library is used for tests.")
endif()

# Example input
add_executable(example0 EXCLUDE_FROM_ALL example.f90)
if (TARGET lapack-fallback)
  add_dependencies(example0 lapack-fallback)
endif()
target_link_libraries(example0 ${LIBS} ${OPEN_COARRAYS})
set(SRC ${CMAKE_CURRENT_SOURCE_DIR})
set(BLD ${CMAKE_CURRENT_BINARY_DIR})
add_custom_target(example 
  COMMAND ${CMAKE_COMMAND} -E copy_if_different
  ${SRC}/example_data1 ${BLD}/example_data1
  COMMAND ${CMAKE_COMMAND} -E copy_if_different
  ${SRC}/example_data2 ${BLD}/example_data2
  COMMAND ${BLD}/example0 DEPENDS example0)

# Tests
foreach(f ${TESTS})
  add_executable(${f} EXCLUDE_FROM_ALL ${f}.f90)
  if (TARGET lapack-fallback)
    add_dependencies(${f} lapack-fallback)
  endif()
  add_test(${f} ${CMAKE_CURRENT_BINARY_DIR}/${f})
  target_link_libraries(${f} ${LIBS} ${OPEN_COARRAYS})
  set_tests_properties(${f} PROPERTIES FAIL_REGULAR_EXPRESSION 
    "(Error|BAD TERMINATION)")
endforeach()

set(SRC ${CMAKE_CURRENT_SOURCE_DIR})
set(BLD ${CMAKE_CURRENT_BINARY_DIR})
add_custom_target(check
  COMMAND ${CMAKE_COMMAND} -E copy_if_different
  ${SRC}/1_gaussian_data ${BLD}/1_gaussian_data
  COMMAND ${CMAKE_COMMAND} -E copy_if_different
  ${SRC}/2_integral_single_data ${BLD}/2_integral_single_data
  COMMAND ${CMAKE_COMMAND} -E copy_if_different
  ${SRC}/3_integral_double_data ${BLD}/3_integral_double_data
  COMMAND ctest -V DEPENDS ${TESTS})