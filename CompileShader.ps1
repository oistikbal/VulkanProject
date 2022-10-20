$BasePath = $PSScriptRoot
$BuildPath = $args[0]
$Env = $args[1]
$Compiler = $args[2]

if($IsWindows)
{
    Invoke-Expression("$Compiler $BasePath/src/shader.vert -o $buildPath/$Env/vert.spv")
    Invoke-Expression("$Compiler $BasePath/src/shader.frag -o $buildPath/$Env/frag.spv")
}
elseif($IsLinux)
{
    Invoke-Expression("$Compiler $BasePath/src/shader.vert -o $buildPath/vert.spv")
    Invoke-Expression("$Compiler $BasePath/src/shader.frag -o $buildPath/frag.spv")
}
elseif($IsMacOS)
{
    Invoke-Expression("$Compiler $BasePath/src/shader.vert -o $buildPath/vert.spv")
    Invoke-Expression("$Compiler $BasePath/src/shader.frag -o $buildPath/frag.spv")
}