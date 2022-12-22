#include "VulkanApp.hpp"

int main()
{
	VulkanApp* app = new VulkanApp();
	app->run();
	delete app;
	app = nullptr;
}