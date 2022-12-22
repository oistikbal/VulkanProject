#ifndef _GRAPHICS_CLASS_HPP_
#define _GRAPHICS_CLASS_HPP_

#define GLFW_INCLUDE_VULKAN
#include <GLFW/glfw3.h>
#include "VulkanInstance.hpp"

class Graphics
{
public:
	Graphics(GLFWwindow* window);
	~Graphics();
	void drawFrame();

private:
	VulkanInstance* m_vulkanInstance;
};
#endif // !_GRAPHICS_CLASS_HPP

