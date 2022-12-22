#include "VulkanApp.hpp"

VulkanApp::VulkanApp()
{
	glfwInit();

	glfwWindowHint(GLFW_CLIENT_API, GLFW_NO_API);
	glfwWindowHint(GLFW_RESIZABLE, GLFW_FALSE);

	m_window = glfwCreateWindow(800, 600, "VulkanProject", nullptr, nullptr);

	m_graphics = new Graphics(m_window);
}

VulkanApp::~VulkanApp()
{
	delete m_graphics;
	m_graphics = nullptr;

	glfwDestroyWindow(m_window);

	glfwTerminate();
}

void VulkanApp::run()
{
	while (!glfwWindowShouldClose(m_window)) 
	{
		glfwPollEvents();
		m_graphics->drawFrame();
	}
}