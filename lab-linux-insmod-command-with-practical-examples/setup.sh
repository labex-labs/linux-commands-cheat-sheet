#!/bin/bash

# Check current kernel version
kernel_version=$(uname -r)
echo "Current kernel version: $kernel_version"

# Check loaded kernel modules
echo "Currently loaded kernel modules:"
lsmod

# Create project directory
project_dir="$HOME/project"
mkdir -p "$project_dir"
cd "$project_dir"

# Create hello.c file
cat << EOF > hello.c
#include <linux/module.h>
#include <linux/kernel.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Your Name");
MODULE_DESCRIPTION("A simple kernel module");

int init_module(void) {
    printk(KERN_INFO "Hello, kernel!\n");
    return 0;
}

void cleanup_module(void) {
    printk(KERN_INFO "Goodbye, kernel!\n");
}
EOF

# Compile the kernel module
sudo apt-get install -y linux-headers-"$kernel_version"
gcc -Wall -DMODULE -D__KERNEL__ -I/lib/modules/"$kernel_version"/build/include -c hello.c

# Load the kernel module
sudo insmod hello.o