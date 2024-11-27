#!/bin/bash

# Display all current terminal settings
stty -a

# Set the terminal baud rate to 9600
stty speed 9600

# Set the number of rows to 30
stty rows 30

# Set the number of columns to 100
stty cols 100