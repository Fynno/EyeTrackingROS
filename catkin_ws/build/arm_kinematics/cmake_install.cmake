# Install script for directory: /home/fynn/Documents/unistuff/PA/EyeTrackingROS/catkin_ws/src/arm_kinematics

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/fynn/Documents/unistuff/PA/EyeTrackingROS/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arm_kinematics/msg" TYPE FILE FILES
    "/home/fynn/Documents/unistuff/PA/EyeTrackingROS/catkin_ws/src/arm_kinematics/msg/Joint_angles.msg"
    "/home/fynn/Documents/unistuff/PA/EyeTrackingROS/catkin_ws/src/arm_kinematics/msg/set_point.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arm_kinematics/cmake" TYPE FILE FILES "/home/fynn/Documents/unistuff/PA/EyeTrackingROS/catkin_ws/build/arm_kinematics/catkin_generated/installspace/arm_kinematics-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/fynn/Documents/unistuff/PA/EyeTrackingROS/catkin_ws/devel/include/arm_kinematics")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/fynn/Documents/unistuff/PA/EyeTrackingROS/catkin_ws/devel/share/roseus/ros/arm_kinematics")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/fynn/Documents/unistuff/PA/EyeTrackingROS/catkin_ws/devel/share/common-lisp/ros/arm_kinematics")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/fynn/Documents/unistuff/PA/EyeTrackingROS/catkin_ws/devel/share/gennodejs/ros/arm_kinematics")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/fynn/Documents/unistuff/PA/EyeTrackingROS/catkin_ws/devel/lib/python2.7/dist-packages/arm_kinematics")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/fynn/Documents/unistuff/PA/EyeTrackingROS/catkin_ws/devel/lib/python2.7/dist-packages/arm_kinematics")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/fynn/Documents/unistuff/PA/EyeTrackingROS/catkin_ws/build/arm_kinematics/catkin_generated/installspace/arm_kinematics.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arm_kinematics/cmake" TYPE FILE FILES "/home/fynn/Documents/unistuff/PA/EyeTrackingROS/catkin_ws/build/arm_kinematics/catkin_generated/installspace/arm_kinematics-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arm_kinematics/cmake" TYPE FILE FILES
    "/home/fynn/Documents/unistuff/PA/EyeTrackingROS/catkin_ws/build/arm_kinematics/catkin_generated/installspace/arm_kinematicsConfig.cmake"
    "/home/fynn/Documents/unistuff/PA/EyeTrackingROS/catkin_ws/build/arm_kinematics/catkin_generated/installspace/arm_kinematicsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/arm_kinematics" TYPE FILE FILES "/home/fynn/Documents/unistuff/PA/EyeTrackingROS/catkin_ws/src/arm_kinematics/package.xml")
endif()

