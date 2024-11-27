#!/bin/bash

# Check g++ version
echo "Checking g++ version..."
g++ --version

# Create project directory
echo "Creating project directory..."
mkdir -p ~/project
cd ~/project

# Create hello.cpp file
echo "Creating hello.cpp file..."
cat << EOF > hello.cpp
#include <iostream>

int main() {
    std::cout << "Hello, World!" << std::endl;
    return 0;
}
EOF

# Compile hello.cpp
echo "Compiling hello.cpp..."
g++ -o hello hello.cpp

# Create simple.cpp file
echo "Creating simple.cpp file..."
cat << EOF > simple.cpp
#include <iostream>

int main() {
    int a = 10, b = 20;
    std::cout << "a = " << a << ", b = " << b << std::endl;
    std::cout << "a + b = " << a + b << std::endl;
    return 0;
}
EOF

# Compile simple.cpp
echo "Compiling simple.cpp..."
g++ -o simple simple.cpp

echo "Environment setup complete."