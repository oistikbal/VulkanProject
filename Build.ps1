$FilePath = $PSScriptRoot
$BuildPath = $PSScriptRoot + "/build/"
$CompilerPath= $env:VULKAN_SDK + "/bin/"

If(!(test-path -PathType container $buildPath))
{
      New-Item -ItemType Directory -Path $buildPath
}

if($args[0] -eq "-r" -or $args[0] -eq "--release")
{
    $env = "Release"
}
else
{
    $env = "Debug"
}

cmake -DCMAKE_BUILD_TYPE="$env" -S "$PSScriptRoot" -B "$buildPath"
cmake --build "$buildPath" --config "$env"

Write-Host "Compiling shaders"

if($IsWindows)
{
    Invoke-Expression("$CompilerPath/glslc.exe $FilePath/src/shader.vert -o $buildPath/src/$env/vert.spv")
    Invoke-Expression("$CompilerPath/glslc.exe $FilePath/src/shader.frag -o $buildPath/src/$env/frag.spv")
}
elseif($IsLinux)
{
    Invoke-Expression("$CompilerPath/glslc $FilePath/src/shader.vert -o $buildPath/src/vert.spv")
    Invoke-Expression("$CompilerPath/glslc $FilePath/src/shader.frag -o $buildPath/src/frag.spv")
}
elseif($IsMacOS)
{
    Invoke-Expression("$CompilerPath/glslc $FilePath/src/shader.vert -o $buildPath/src/vert.spv")
    Invoke-Expression("$CompilerPath/glslc $FilePath/src/shader.frag -o $buildPath/src/frag.spv")
}