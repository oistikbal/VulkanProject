find_package(Vulkan REQUIRED)

add_subdirectory(glm EXCLUDE_FROM_ALL)

set( GLFW_BUILD_DOCS OFF CACHE BOOL  "GLFW lib only" )
set( GLFW_INSTALL OFF CACHE BOOL  "GLFW lib only" )

add_subdirectory(glfw EXCLUDE_FROM_ALL)