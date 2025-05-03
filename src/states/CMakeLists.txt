#macro(add_fsm_state_simple state_name)
#  add_library(${state_name} SHARED ${CMAKE_CURRENT_SOURCE_DIR}/${state_name}.cpp)
#  set_target_properties(${state_name} PROPERTIES PREFIX "")
#  target_link_libraries(${state_name} PUBLIC mc_rtc::mc_control_fsm)
#  install(TARGETS ${state_name}
#    ARCHIVE DESTINATION "${MC_FSM_STATES_LIBRARY_INSTALL_PREFIX}"
#    LIBRARY DESTINATION "${MC_FSM_STATES_LIBRARY_INSTALL_PREFIX}"
#    RUNTIME DESTINATION "${MC_FSM_STATES_RUNTIME_INSTALL_PREFIX}")
#endmacro()
#
add_fsm_state_simple(JRLTask_Initial)

add_fsm_state_simple(MoveLeftHand)
target_include_directories(MoveLeftHand PRIVATE ${MC_RTC_INCLUDE_DIRS})
add_fsm_state_simple(ReturnLeftHand)
target_include_directories(ReturnLeftHand PRIVATE ${MC_RTC_INCLUDE_DIRS})
add_fsm_state_simple(MoveRightHand)
target_include_directories(MoveRightHand PRIVATE ${MC_RTC_INCLUDE_DIRS})
add_fsm_state_simple(ReturnRightHand)
target_include_directories(ReturnRightHand PRIVATE ${MC_RTC_INCLUDE_DIRS})
add_fsm_state_simple(MoveBothHands)
target_include_directories(MoveBothHands PRIVATE ${MC_RTC_INCLUDE_DIRS})
add_fsm_state_simple(ReturnBothHands)
target_include_directories(ReturnBothHands PRIVATE ${MC_RTC_INCLUDE_DIRS})
add_fsm_data_directory(data)
