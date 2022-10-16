 . .\Build.ps1

if($IsWindows)
{
    Invoke-Expression("./build/src/$env/VulkanProject.exe")
}
elseif($IsLinux)
{
    Invoke-Expression("./build/src/$env/VulkanProject")
}
elseif($IsMacOS)
{
    Invoke-Expression("./build/src/$env/VulkanProject")
}