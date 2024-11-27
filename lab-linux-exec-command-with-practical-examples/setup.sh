#!/bin/bash

# Create the directory for the exec_example program
mkdir -p ~/project/exec
cd ~/project/exec

# Create the exec_example.c file
cat << EOF > exec_example.c
#include <stdio.h>
#include <unistd.h>

int main() {
    printf("Before exec\n");
    execl("/bin/ls", "ls", "-l", NULL);
    printf("After exec\n");
    return 0;
}
EOF

# Compile the exec_example program
gcc -o exec_example exec_example.c

# Create the exec_command.c file
cat << EOF > exec_command.c
#include <stdio.h>
#include <unistd.h>

int main() {
    printf("Executing 'ls -l' command using exec:\n");
    execl("/bin/ls", "ls", "-l", NULL);
    printf("This line should not be printed.\n");
    return 0;
}
EOF

# Compile the exec_command program
gcc -o exec_command exec_command.c

# Set the correct permissions
chmod +x exec_example
chmod +x exec_command