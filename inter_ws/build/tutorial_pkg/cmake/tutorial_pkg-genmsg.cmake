# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "tutorial_pkg: 8 messages, 1 services")

set(MSG_I_FLAGS "-Itutorial_pkg:/home/hoang/inter_ws/src/tutorial_pkg/msg;-Itutorial_pkg:/home/hoang/inter_ws/devel/share/tutorial_pkg/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(tutorial_pkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hoang/inter_ws/src/tutorial_pkg/msg/Num.msg" NAME_WE)
add_custom_target(_tutorial_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tutorial_pkg" "/home/hoang/inter_ws/src/tutorial_pkg/msg/Num.msg" ""
)

get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesAction.msg" NAME_WE)
add_custom_target(_tutorial_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tutorial_pkg" "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesAction.msg" "tutorial_pkg/DoDishesActionGoal:actionlib_msgs/GoalID:tutorial_pkg/DoDishesActionFeedback:tutorial_pkg/DoDishesActionResult:tutorial_pkg/DoDishesGoal:std_msgs/Header:tutorial_pkg/DoDishesResult:actionlib_msgs/GoalStatus:tutorial_pkg/DoDishesFeedback"
)

get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionGoal.msg" NAME_WE)
add_custom_target(_tutorial_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tutorial_pkg" "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionGoal.msg" "actionlib_msgs/GoalID:tutorial_pkg/DoDishesGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionResult.msg" NAME_WE)
add_custom_target(_tutorial_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tutorial_pkg" "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionResult.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:tutorial_pkg/DoDishesResult"
)

get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionFeedback.msg" NAME_WE)
add_custom_target(_tutorial_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tutorial_pkg" "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:tutorial_pkg/DoDishesFeedback"
)

get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesGoal.msg" NAME_WE)
add_custom_target(_tutorial_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tutorial_pkg" "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesGoal.msg" ""
)

get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesResult.msg" NAME_WE)
add_custom_target(_tutorial_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tutorial_pkg" "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesResult.msg" ""
)

get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesFeedback.msg" NAME_WE)
add_custom_target(_tutorial_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tutorial_pkg" "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesFeedback.msg" ""
)

get_filename_component(_filename "/home/hoang/inter_ws/src/tutorial_pkg/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_tutorial_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "tutorial_pkg" "/home/hoang/inter_ws/src/tutorial_pkg/srv/AddTwoInts.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(tutorial_pkg
  "/home/hoang/inter_ws/src/tutorial_pkg/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_cpp(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionFeedback.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionResult.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_cpp(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_cpp(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_cpp(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_cpp(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_cpp(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_cpp(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorial_pkg
)

### Generating Services
_generate_srv_cpp(tutorial_pkg
  "/home/hoang/inter_ws/src/tutorial_pkg/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorial_pkg
)

### Generating Module File
_generate_module_cpp(tutorial_pkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorial_pkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(tutorial_pkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(tutorial_pkg_generate_messages tutorial_pkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hoang/inter_ws/src/tutorial_pkg/msg/Num.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_cpp _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_cpp _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_cpp _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_cpp _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_cpp _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_cpp _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_cpp _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_cpp _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/src/tutorial_pkg/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_cpp _tutorial_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tutorial_pkg_gencpp)
add_dependencies(tutorial_pkg_gencpp tutorial_pkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tutorial_pkg_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(tutorial_pkg
  "/home/hoang/inter_ws/src/tutorial_pkg/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_eus(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionFeedback.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionResult.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_eus(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_eus(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_eus(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_eus(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_eus(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_eus(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorial_pkg
)

### Generating Services
_generate_srv_eus(tutorial_pkg
  "/home/hoang/inter_ws/src/tutorial_pkg/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorial_pkg
)

### Generating Module File
_generate_module_eus(tutorial_pkg
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorial_pkg
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(tutorial_pkg_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(tutorial_pkg_generate_messages tutorial_pkg_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hoang/inter_ws/src/tutorial_pkg/msg/Num.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_eus _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_eus _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_eus _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_eus _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_eus _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_eus _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_eus _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_eus _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/src/tutorial_pkg/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_eus _tutorial_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tutorial_pkg_geneus)
add_dependencies(tutorial_pkg_geneus tutorial_pkg_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tutorial_pkg_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(tutorial_pkg
  "/home/hoang/inter_ws/src/tutorial_pkg/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_lisp(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionFeedback.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionResult.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_lisp(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_lisp(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_lisp(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_lisp(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_lisp(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_lisp(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorial_pkg
)

### Generating Services
_generate_srv_lisp(tutorial_pkg
  "/home/hoang/inter_ws/src/tutorial_pkg/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorial_pkg
)

### Generating Module File
_generate_module_lisp(tutorial_pkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorial_pkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(tutorial_pkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(tutorial_pkg_generate_messages tutorial_pkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hoang/inter_ws/src/tutorial_pkg/msg/Num.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_lisp _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_lisp _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_lisp _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_lisp _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_lisp _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_lisp _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_lisp _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_lisp _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/src/tutorial_pkg/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_lisp _tutorial_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tutorial_pkg_genlisp)
add_dependencies(tutorial_pkg_genlisp tutorial_pkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tutorial_pkg_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(tutorial_pkg
  "/home/hoang/inter_ws/src/tutorial_pkg/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_nodejs(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionFeedback.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionResult.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_nodejs(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_nodejs(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_nodejs(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_nodejs(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_nodejs(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_nodejs(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorial_pkg
)

### Generating Services
_generate_srv_nodejs(tutorial_pkg
  "/home/hoang/inter_ws/src/tutorial_pkg/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorial_pkg
)

### Generating Module File
_generate_module_nodejs(tutorial_pkg
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorial_pkg
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(tutorial_pkg_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(tutorial_pkg_generate_messages tutorial_pkg_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hoang/inter_ws/src/tutorial_pkg/msg/Num.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_nodejs _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_nodejs _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_nodejs _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_nodejs _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_nodejs _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_nodejs _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_nodejs _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_nodejs _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/src/tutorial_pkg/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_nodejs _tutorial_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tutorial_pkg_gennodejs)
add_dependencies(tutorial_pkg_gennodejs tutorial_pkg_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tutorial_pkg_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(tutorial_pkg
  "/home/hoang/inter_ws/src/tutorial_pkg/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_py(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesAction.msg"
  "${MSG_I_FLAGS}"
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionFeedback.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionResult.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_py(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_py(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_py(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_py(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_py(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_pkg
)
_generate_msg_py(tutorial_pkg
  "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_pkg
)

### Generating Services
_generate_srv_py(tutorial_pkg
  "/home/hoang/inter_ws/src/tutorial_pkg/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_pkg
)

### Generating Module File
_generate_module_py(tutorial_pkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_pkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(tutorial_pkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(tutorial_pkg_generate_messages tutorial_pkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hoang/inter_ws/src/tutorial_pkg/msg/Num.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_py _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesAction.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_py _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionGoal.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_py _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionResult.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_py _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesActionFeedback.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_py _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesGoal.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_py _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesResult.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_py _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/devel/share/tutorial_pkg/msg/DoDishesFeedback.msg" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_py _tutorial_pkg_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hoang/inter_ws/src/tutorial_pkg/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(tutorial_pkg_generate_messages_py _tutorial_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(tutorial_pkg_genpy)
add_dependencies(tutorial_pkg_genpy tutorial_pkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS tutorial_pkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorial_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/tutorial_pkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(tutorial_pkg_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(tutorial_pkg_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorial_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/tutorial_pkg
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(tutorial_pkg_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(tutorial_pkg_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorial_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/tutorial_pkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(tutorial_pkg_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(tutorial_pkg_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorial_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/tutorial_pkg
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(tutorial_pkg_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(tutorial_pkg_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_pkg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_pkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/tutorial_pkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(tutorial_pkg_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(tutorial_pkg_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
