cmake_minimum_required(VERSION 3.15)

project(VulkanProject VERSION 1.0.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set_property(GLOBAL PROPERTY PREDEFINED_TARGETS_FOLDER "")

add_custom_target(BuildScripts SOURCES Build.ps1 BuildnRun.ps1)

add_subdirectory(src)
add_subdirectory(3rdparty EXCLUDE_FROM_ALL)