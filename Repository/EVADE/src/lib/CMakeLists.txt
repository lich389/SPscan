add_library(
  ${PROJECT_NAME}
  BouncePolicies/Quartic.cpp
  Fieldspace/BfBDir.cpp
  Fieldspace/Direction.cpp
  Fieldspace/Point.cpp
  Fieldspace/TunnellingDir.cpp
  Models/CDN2HDM.cpp
  Models/Dummy.cpp
  Models/MSSM.cpp
  Models/MuNuSSM.cpp
  Models/N2HDM.cpp
  Models/THDMSZ3.cpp
  Models/NMSSM.cpp
  Models/TRSM.cpp
  ScalingPolicies/Generic.cpp
  SolverPolicies/Bertini.cpp
  SolverPolicies/Hom4ps2.cpp
  Utilities/Approx.cpp
  Utilities/Polynomial.cpp
  Utilities/TempDir.cpp
  Utilities/Utilities.cpp)
target_include_directories(
  ${PROJECT_NAME}
  PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/../../include"
  PRIVATE "${CMAKE_CURRENT_BINARY_DIR}/../../include")
target_include_directories(${PROJECT_NAME} SYSTEM PRIVATE ${EIGEN3_INCLUDE_DIR})

target_compile_features(
  ${PROJECT_NAME}
  PUBLIC cxx_std_11
  PRIVATE cxx_std_17)
if(SLHALib_FOUND)
  target_include_directories(EVADE PRIVATE ${SLHALib_INCLUDE_DIR})
endif(SLHALib_FOUND)
set_target_properties(
  EVADE PROPERTIES ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
                   LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib")

if(CMAKE_BUILD_TYPE STREQUAL "DEBUG")
  add_library(
    DummyCPPs OBJECT
    TunnellingCalculator.cpp OptimizationPolicies/Unoptimized.cpp
    ScalingPolicies/Unscaled.cpp EVADE.cpp StationarityConditions.cpp)
endif(CMAKE_BUILD_TYPE STREQUAL "DEBUG")
