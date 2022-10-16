 . .\Build.ps1 $args

if($IsWindows)
{
    Invoke-Expression("$PSScriptRoot/build/src/$env/VulkanProject.exe")
}
elseif($IsLinux)
{
    Invoke-Expression("$PSScriptRoot/build/src/$env/VulkanProject")
}
elseif($IsMacOS)
{
    Invoke-Expression("$PSScriptRoot/build/src/$env/VulkanProject")
}