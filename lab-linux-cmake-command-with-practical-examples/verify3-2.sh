#!/bin/bash
if [ ! -d ~/project/cmake-configurations/build ]; then
    echo "The build directory does not exist."
    exit 1
fi

if ! grep -q "Build Configuration: Release" ~/project/cmake-configurations/build/cmake-configurations; then
    echo "The executable does not output 'Build Configuration: Release'."
    exit 1
fi

echo "Release build configuration verified."
exit 0