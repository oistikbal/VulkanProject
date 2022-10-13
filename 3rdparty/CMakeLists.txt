find_package(Vulkan REQUIRED)

add_subdirectory(GLM EXCLUDE_FROM_ALL)

set( GLFW_BUILD_DOCS OFF CACHE BOOL  "GLFW lib only" )
set( GLFW_INSTALL OFF CACHE BOOL  "GLFW lib only" )

add_subdirectory(GLFW EXCLUDE_FROM_ALL)