cmake_minimum_required(VERSION 3.10.2)

project(pet_engine_module)

add_library(engine_module INTERFACE)
add_library(pet::engine_module ALIAS engine_module)
target_sources(engine_module
  INTERFACE
    ${CMAKE_CURRENT_SOURCE_DIR}/src/engine_module.cpp
)
target_include_directories(engine_module
  INTERFACE
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)
target_link_libraries(engine_module
  INTERFACE
    pet::mcu_core
    pet::ros_lib
)