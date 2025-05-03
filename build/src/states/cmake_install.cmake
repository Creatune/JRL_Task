# Install script for directory: /home/vscode/superbuild/jrl_task/src/states

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/JRLTask_Initial.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/JRLTask_Initial.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/JRLTask_Initial.so"
         RPATH "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/fsm/states:/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/JRLTask_Initial.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states" TYPE SHARED_LIBRARY FILES "/home/vscode/superbuild/jrl_task/build/src/states/JRLTask_Initial.so")
  if(EXISTS "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/JRLTask_Initial.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/JRLTask_Initial.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/JRLTask_Initial.so"
         OLD_RPATH "/home/vscode/superbuild/jrl_task/build/src:/home/vscode/superbuild/install/relwithdebinfo/lib::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/fsm/states:/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/JRLTask_Initial.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveLeftHand.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveLeftHand.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveLeftHand.so"
         RPATH "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/fsm/states:/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveLeftHand.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states" TYPE SHARED_LIBRARY FILES "/home/vscode/superbuild/jrl_task/build/src/states/MoveLeftHand.so")
  if(EXISTS "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveLeftHand.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveLeftHand.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveLeftHand.so"
         OLD_RPATH "/home/vscode/superbuild/jrl_task/build/src:/home/vscode/superbuild/install/relwithdebinfo/lib::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/fsm/states:/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveLeftHand.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnLeftHand.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnLeftHand.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnLeftHand.so"
         RPATH "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/fsm/states:/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnLeftHand.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states" TYPE SHARED_LIBRARY FILES "/home/vscode/superbuild/jrl_task/build/src/states/ReturnLeftHand.so")
  if(EXISTS "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnLeftHand.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnLeftHand.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnLeftHand.so"
         OLD_RPATH "/home/vscode/superbuild/jrl_task/build/src:/home/vscode/superbuild/install/relwithdebinfo/lib::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/fsm/states:/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnLeftHand.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveRightHand.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveRightHand.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveRightHand.so"
         RPATH "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/fsm/states:/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveRightHand.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states" TYPE SHARED_LIBRARY FILES "/home/vscode/superbuild/jrl_task/build/src/states/MoveRightHand.so")
  if(EXISTS "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveRightHand.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveRightHand.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveRightHand.so"
         OLD_RPATH "/home/vscode/superbuild/jrl_task/build/src:/home/vscode/superbuild/install/relwithdebinfo/lib::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/fsm/states:/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveRightHand.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnRightHand.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnRightHand.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnRightHand.so"
         RPATH "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/fsm/states:/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnRightHand.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states" TYPE SHARED_LIBRARY FILES "/home/vscode/superbuild/jrl_task/build/src/states/ReturnRightHand.so")
  if(EXISTS "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnRightHand.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnRightHand.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnRightHand.so"
         OLD_RPATH "/home/vscode/superbuild/jrl_task/build/src:/home/vscode/superbuild/install/relwithdebinfo/lib::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/fsm/states:/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnRightHand.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveBothHands.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveBothHands.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveBothHands.so"
         RPATH "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/fsm/states:/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveBothHands.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states" TYPE SHARED_LIBRARY FILES "/home/vscode/superbuild/jrl_task/build/src/states/MoveBothHands.so")
  if(EXISTS "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveBothHands.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveBothHands.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveBothHands.so"
         OLD_RPATH "/home/vscode/superbuild/jrl_task/build/src:/home/vscode/superbuild/install/relwithdebinfo/lib::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/fsm/states:/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/MoveBothHands.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnBothHands.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnBothHands.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnBothHands.so"
         RPATH "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/fsm/states:/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnBothHands.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states" TYPE SHARED_LIBRARY FILES "/home/vscode/superbuild/jrl_task/build/src/states/ReturnBothHands.so")
  if(EXISTS "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnBothHands.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnBothHands.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnBothHands.so"
         OLD_RPATH "/home/vscode/superbuild/jrl_task/build/src:/home/vscode/superbuild/install/relwithdebinfo/lib::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/fsm/states:/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/ReturnBothHands.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states/data")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/home/vscode/superbuild/install/relwithdebinfo/lib/mc_controller/JRLTask/states" TYPE DIRECTORY FILES "/home/vscode/superbuild/jrl_task/src/states/data" FILES_MATCHING REGEX ".*(.json$|.yml$|.yaml$)")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/vscode/superbuild/jrl_task/build/src/states/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
