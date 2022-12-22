#ifndef _VULKAN_APP_HPP_
#define _VULKAN_APP_HPP_

#define GLFW_INCLUDE_VULKAN
#include <GLFW/glfw3.h>

#include "Graphics.hpp"

class VulkanApp
{
public:
	VulkanApp();
	~VulkanApp();
	void run();

private:
	GLFWwindow* m_window;
	Graphics* m_graphics;
};
#endif // !_VULKAN_APP_HPP
