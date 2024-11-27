# Modify Terminal Settings Using the stty Command

In this step, you will learn how to modify various terminal settings using the `stty` command.

First, let's check the current terminal settings:

```
stty -a
```

This will display all the current terminal settings, including the baud rate, number of rows and columns, and various control characters.

Now, let's try to modify some of these settings:

```
# Set the terminal to use 7-bit character mode
stty cs7

# Set the terminal to use 8-bit character mode
stty cs8

# Set the terminal to use no parity
stty -parenb

# Set the terminal to use even parity
stty parenb -parodd

# Set the terminal to use odd parity
stty parenb parodd

# Set the terminal to use hardware flow control
stty crtscts

# Set the terminal to use software flow control
stty -crtscts ixon ixoff

# Set the terminal to ignore break conditions
stty -ignbrk

# Set the terminal to generate a signal when a break condition is detected
stty ignbrk brkint
```

After running these commands, you can verify the changes by running `stty -a` again.
