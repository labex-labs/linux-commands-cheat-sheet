# Understand the Purpose and Syntax of the stty Command

In this step, you will learn about the purpose and syntax of the `stty` command in Linux. The `stty` command is used to configure and control the settings of a terminal or serial port.

First, let's understand the basic syntax of the `stty` command:

```
stty [OPTION] [SETTING]
```

The `OPTION` can be one of the following:

- `-a`: Display all current settings
- `-g`: Print all current settings in a form that can be used as an argument to another `stty` command

The `SETTING` can be one of the many terminal settings, such as:

- `speed`: Set the terminal baud rate
- `rows`: Set the number of rows
- `cols`: Set the number of columns
- `intr`: Set the interrupt character
- `quit`: Set the quit character
- `erase`: Set the erase character
- `kill`: Set the kill character
- `eof`: Set the end-of-file character

Let's try some examples to understand the `stty` command better:

```
# Display all current terminal settings
stty -a
```

Example output:

```
speed 38400 baud; rows 24; columns 80; line = 0;
intr = ^C; quit = ^\; erase = ^?; kill = ^U; eof = ^D; eol = <undef>; eol2 = <undef>; swtch = <undef>; start = ^Q; stop = ^S; susp = ^Z; rprnt = ^R; werase = ^W; lnext = ^V; discard = ^O; min = 1; time = 0;
-parenb -parodd cs8 -hupcl -cstopb cread -clocal -crtscts
-ignbrk -brkint -ignpar -parmrk -inpck -istrip -inlcr -igncr -icrnl -ixon -ixoff -iuclc -ixany -imaxbel -iutf8
-opost -olcuc -ocrnl -onlcr -onocr -onlret -ofill -ofdel nl0 cr0 tab0 bs0 vt0 ff0
-isig -icanon -iexten -echo -echoe -echok -echonl -noflsh -xcase -tostop -echoprt -echoctl -echoke -flusho -extproc
```

This output shows the current terminal settings, including the baud rate, number of rows and columns, and various control characters.

Now, let's try to change some of the settings:

```
# Set the terminal baud rate to 9600
stty speed 9600

# Set the number of rows to 30
stty rows 30

# Set the number of columns to 100
stty cols 100
```

After running these commands, you can verify the changes by running `stty -a` again.
