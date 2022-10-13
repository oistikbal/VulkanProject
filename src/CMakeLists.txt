find_package(Vulkan REQUIRED)

set(VULKAN_PROJECT_SRC
    main.cpp
)

set(VULKAN_PROJECT_INC
    ${CMAKE_SOURCE_DIR}/inc/test.h
)

add_executable(VulkanProject ${VULKAN_PROJECT_SRC} ${VULKAN_PROJECT_INC})
target_include_directories(VulkanProject PRIVATE ${CMAKE_SOURCE_DIR}/inc/)
target_include_directories(VulkanProject PRIVATE ${CMAKE_SOURCE_DIR}/3rdparty/glm)

target_link_libraries(VulkanProject PRIVATE Vulkan::Vulkan)
target_link_libraries(VulkanProject PRIVATE glfw)
