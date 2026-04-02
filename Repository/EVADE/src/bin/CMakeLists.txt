add_executable(EVADE_MSSM ConfigReader.cpp EVADE_MSSM.cpp ParameterReader.cpp
                          StabilityOutput.cpp)
target_link_libraries(EVADE_MSSM ${PROJECT_NAME} ConfigXX)

add_executable(EVADE_MSSM_B ConfigReader.cpp EVADE_MSSM_B.cpp
                            ParameterReader.cpp StabilityOutput.cpp)
target_link_libraries(EVADE_MSSM_B ${PROJECT_NAME} ConfigXX)

add_executable(EVADE_MuNuSSM ConfigReader.cpp EVADE_MuNuSSM.cpp
                             ParameterReader.cpp StabilityOutput.cpp)
target_link_libraries(EVADE_MuNuSSM ${PROJECT_NAME} ConfigXX)

add_executable(EVADE_MuNuSSM_B ConfigReader.cpp EVADE_MuNuSSM_B.cpp
                               ParameterReader.cpp StabilityOutput.cpp)
target_link_libraries(EVADE_MuNuSSM_B ${PROJECT_NAME} ConfigXX)

add_executable(EVADE_N2HDM ConfigReader.cpp EVADE_N2HDM.cpp ParameterReader.cpp
                           StabilityOutput.cpp)
target_link_libraries(EVADE_N2HDM ${PROJECT_NAME} ConfigXX)

add_executable(EVADE_CDN2HDM ConfigReader.cpp EVADE_CDN2HDM.cpp
                             ParameterReader.cpp StabilityOutput.cpp)
target_link_libraries(EVADE_CDN2HDM ${PROJECT_NAME} ConfigXX)

add_executable(EVADE_NMSSM ConfigReader.cpp EVADE_NMSSM.cpp ParameterReader.cpp
                           StabilityOutput.cpp)
target_link_libraries(EVADE_NMSSM ${PROJECT_NAME} ConfigXX)

add_executable(EVADE_NMSSM_noscaling ConfigReader.cpp EVADE_NMSSM_noscaling.cpp ParameterReader.cpp
                           StabilityOutput.cpp)
target_link_libraries(EVADE_NMSSM_noscaling ${PROJECT_NAME} ConfigXX)

add_executable(EVADE_TRSM ConfigReader.cpp EVADE_TRSM.cpp ParameterReader.cpp
                          StabilityOutput.cpp)
target_link_libraries(EVADE_TRSM ${PROJECT_NAME} ConfigXX)

add_executable(EVADE_THDMSZ3 ConfigReader.cpp EVADE_THDMSZ3.cpp ParameterReader.cpp
                           StabilityOutput.cpp)
target_link_libraries(EVADE_THDMSZ3 ${PROJECT_NAME} ConfigXX)

set_target_properties(
  EVADE_MSSM
  EVADE_MuNuSSM
  EVADE_N2HDM
  EVADE_CDN2HDM
  EVADE_NMSSM
  EVADE_TRSM
  EVADE_MSSM_B
  EVADE_MuNuSSM_B
  EVADE_THDMSZ3
  PROPERTIES RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}")

configure_file(example.cfg.in ${CMAKE_BINARY_DIR}/example.cfg @ONLY)
