find_package(Vulkan REQUIRED)

set(VULKAN_PROJECT_SRC
    main.cpp
	shader.vert
	shader.frag
)

set(VULKAN_PROJECT_INC
    ""
)

add_executable(VulkanProject ${VULKAN_PROJECT_SRC} ${VULKAN_PROJECT_INC})
target_include_directories(VulkanProject PRIVATE ${CMAKE_SOURCE_DIR}/inc/)
set_property(GLOBAL PROPERTY VS_STARTUP_PROJECT VulkanProject)

target_link_libraries(VulkanProject PRIVATE Vulkan::Vulkan)
target_link_libraries(VulkanProject PRIVATE glm)
target_link_libraries(VulkanProject PRIVATE glfw)

add_custom_command(
	TARGET VulkanProject POST_BUILD
	USES_TERMINAL
	COMMAND pwsh ${CMAKE_SOURCE_DIR}/CompileShader.ps1 ${CMAKE_CURRENT_BINARY_DIR} ${CMAKE_BUILD_TYPE} ${Vulkan_GLSLC_EXECUTABLE}
)