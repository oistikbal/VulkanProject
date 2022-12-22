#include "Graphics.hpp"

Graphics::Graphics(GLFWwindow* window)
{
	m_vulkanInstance = new VulkanInstance(window);
}

Graphics::~Graphics()
{
	delete m_vulkanInstance;
	m_vulkanInstance = nullptr;
}

void Graphics::drawFrame()
{
	m_vulkanInstance->drawFrame();
}