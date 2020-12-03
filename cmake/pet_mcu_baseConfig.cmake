set(_supported_components core engine_module ir_remote_module light_beacon_module line_sensor_module ultrasound_module)

foreach(_component ${pet_mcu_base_FIND_COMPONENTS})
    if(NOT _component IN_LIST _supported_components)
        set(pet_mcu_base_FOUND False)
        set(pet_mcu_base_NOT_FOUND_MESSAGE "Unsupported component: ${_component}")
        break()
    endif()
    include("${CMAKE_CURRENT_LIST_DIR}/pet_mcu_${_component}Targets.cmake" RESULT_VARIABLE _component_found)
    if(NOT _component_found)
        set(pet_mcu_base_FOUND False)
        set(pet_mcu_base_NOT_FOUND_MESSAGE "Could not find supported component: ${_component}. Package installation might be incorrrect.")
        break()
    endif()
endforeach()
