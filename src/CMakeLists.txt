project(src)

find_package(Vulkan REQUIRED)

set(VULKAN_PROJECT_SRC
    main.cpp
)

set(VULKAN_PROJECT_INC
    ${CMAKE_SOURCE_DIR}/inc/test.h
)

add_executable(src ${VULKAN_PROJECT_SRC}  ${VULKAN_PROJECT_INC})
target_include_directories(src PRIVATE ${CMAKE_SOURCE_DIR}/inc/)
target_include_directories(src PRIVATE glm)

target_link_libraries(src PRIVATE Vulkan::Vulkan)
target_link_libraries(src PRIVATE glfw)
