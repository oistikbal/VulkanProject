if($args[0] -eq "-r" -or $args[0] -eq "--release")
{
    $env = "Release"
}
else
{
    $env = "Debug"
}

cmake -DCMAKE_BUILD_TYPE="$env" -S . -B ./build
cmake --build ./build --config "$env"