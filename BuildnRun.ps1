 . $PSScriptRoot\Build.ps1 $args

if($IsWindows)
{
    Set-Location -Path $buildPath/src/$env/
    Invoke-Expression(".\VulkanProject.exe")
}
elseif($IsLinux)
{
    Set-Location -Path $buildPath/src//
    Invoke-Expression(".\VulkanProject")
}
elseif($IsMacOS)
{
    Set-Location -Path $buildPath/src/
    Invoke-Expression(".\VulkanProject")
}

Set-Location -Path $PSScriptRoot