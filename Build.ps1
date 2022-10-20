$buildPath = "$PSScriptRoot/build"
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