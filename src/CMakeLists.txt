find_package(Vulkan REQUIRED)

set(VULKAN_PROJECT_SRC
    main.cpp
	Graphics.cpp
	VulkanApp.cpp
	VulkanInstance.cpp
	VulkanLogger.cpp
	shader.vert
	shader.frag
)

set(VULKAN_PROJECT_INC
    Graphics.hpp
	VulkanApp.hpp
	VulkanInstance.hpp
	VulkanLogger.hpp
)

add_executable(VulkanProject ${VULKAN_PROJECT_SRC} ${VULKAN_PROJECT_INC})
set_property(GLOBAL PROPERTY VS_STARTUP_PROJECT VulkanProject)

target_link_libraries(VulkanProject PRIVATE Vulkan::Vulkan)
target_link_libraries(VulkanProject PRIVATE glm)
target_link_libraries(VulkanProject PRIVATE glfw)