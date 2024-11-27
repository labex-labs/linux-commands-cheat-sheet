#!/bin/bash
if [ ! -d ~/project/cmake-configurations/build ]; then
    echo "The build directory does not exist."
    exit 1
fi

if ! grep -q "Build Configuration: Debug" ~/project/cmake-configurations/build/cmake-configurations; then
    echo "The executable does not output 'Build Configuration: Debug'."
    exit 1
fi

echo "Debug build configuration verified."
exit 0