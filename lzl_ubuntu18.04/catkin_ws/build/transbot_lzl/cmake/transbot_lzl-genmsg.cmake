# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "transbot_lzl: 1 messages, 0 services")

set(MSG_I_FLAGS "-Itransbot_lzl:/home/zhuolong/lzl/catkin_ws/src/transbot_lzl/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(transbot_lzl_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/zhuolong/lzl/catkin_ws/src/transbot_lzl/msg/Wakebot.msg" NAME_WE)
add_custom_target(_transbot_lzl_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "transbot_lzl" "/home/zhuolong/lzl/catkin_ws/src/transbot_lzl/msg/Wakebot.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(transbot_lzl
  "/home/zhuolong/lzl/catkin_ws/src/transbot_lzl/msg/Wakebot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/transbot_lzl
)

### Generating Services

### Generating Module File
_generate_module_cpp(transbot_lzl
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/transbot_lzl
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(transbot_lzl_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(transbot_lzl_generate_messages transbot_lzl_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhuolong/lzl/catkin_ws/src/transbot_lzl/msg/Wakebot.msg" NAME_WE)
add_dependencies(transbot_lzl_generate_messages_cpp _transbot_lzl_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(transbot_lzl_gencpp)
add_dependencies(transbot_lzl_gencpp transbot_lzl_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS transbot_lzl_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(transbot_lzl
  "/home/zhuolong/lzl/catkin_ws/src/transbot_lzl/msg/Wakebot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/transbot_lzl
)

### Generating Services

### Generating Module File
_generate_module_eus(transbot_lzl
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/transbot_lzl
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(transbot_lzl_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(transbot_lzl_generate_messages transbot_lzl_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhuolong/lzl/catkin_ws/src/transbot_lzl/msg/Wakebot.msg" NAME_WE)
add_dependencies(transbot_lzl_generate_messages_eus _transbot_lzl_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(transbot_lzl_geneus)
add_dependencies(transbot_lzl_geneus transbot_lzl_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS transbot_lzl_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(transbot_lzl
  "/home/zhuolong/lzl/catkin_ws/src/transbot_lzl/msg/Wakebot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/transbot_lzl
)

### Generating Services

### Generating Module File
_generate_module_lisp(transbot_lzl
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/transbot_lzl
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(transbot_lzl_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(transbot_lzl_generate_messages transbot_lzl_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhuolong/lzl/catkin_ws/src/transbot_lzl/msg/Wakebot.msg" NAME_WE)
add_dependencies(transbot_lzl_generate_messages_lisp _transbot_lzl_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(transbot_lzl_genlisp)
add_dependencies(transbot_lzl_genlisp transbot_lzl_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS transbot_lzl_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(transbot_lzl
  "/home/zhuolong/lzl/catkin_ws/src/transbot_lzl/msg/Wakebot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/transbot_lzl
)

### Generating Services

### Generating Module File
_generate_module_nodejs(transbot_lzl
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/transbot_lzl
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(transbot_lzl_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(transbot_lzl_generate_messages transbot_lzl_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhuolong/lzl/catkin_ws/src/transbot_lzl/msg/Wakebot.msg" NAME_WE)
add_dependencies(transbot_lzl_generate_messages_nodejs _transbot_lzl_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(transbot_lzl_gennodejs)
add_dependencies(transbot_lzl_gennodejs transbot_lzl_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS transbot_lzl_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(transbot_lzl
  "/home/zhuolong/lzl/catkin_ws/src/transbot_lzl/msg/Wakebot.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/transbot_lzl
)

### Generating Services

### Generating Module File
_generate_module_py(transbot_lzl
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/transbot_lzl
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(transbot_lzl_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(transbot_lzl_generate_messages transbot_lzl_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/zhuolong/lzl/catkin_ws/src/transbot_lzl/msg/Wakebot.msg" NAME_WE)
add_dependencies(transbot_lzl_generate_messages_py _transbot_lzl_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(transbot_lzl_genpy)
add_dependencies(transbot_lzl_genpy transbot_lzl_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS transbot_lzl_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/transbot_lzl)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/transbot_lzl
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(transbot_lzl_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/transbot_lzl)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/transbot_lzl
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(transbot_lzl_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/transbot_lzl)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/transbot_lzl
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(transbot_lzl_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/transbot_lzl)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/transbot_lzl
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(transbot_lzl_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/transbot_lzl)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/transbot_lzl\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/transbot_lzl
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(transbot_lzl_generate_messages_py std_msgs_generate_messages_py)
endif()
