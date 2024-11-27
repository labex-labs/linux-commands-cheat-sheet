# Explore the Options and Flags of pinky

In this step, we will dive deeper into the various options and flags available with the `pinky` command.

First, let's explore the `-f` option, which displays the user's full name:

```bash
pinky -f
```

Example output:

```
Login    Name
labex    Lab User
```

Next, we can use the `-h` option to display the user's home directory:

```bash
pinky -h
```

Example output:

```
Login    Home Directory
labex    /home/labex
```

The `-i` option shows the user's idle time:

```bash
pinky -i
```

Example output:

```
Login    Idle
labex    0:00
```

To see the user's current process, we can use the `-p` option:

```bash
pinky -p
```

Example output:

```
Login    Where
labex    pts/0
```

Finally, the `-s` option displays a short format listing:

```bash
pinky -s
```

Example output:

```
Login    Name       TTY         Idle    When    Where
labex    Lab User   pts/0       0:00    13:24   10.0.2.2
```

You can combine these options to get the desired information. For example, to display the full name, home directory, and idle time, you can run:

```bash
pinky -fhi
```

Example output:

```
Login    Name       Home Directory    Idle
labex    Lab User   /home/labex       0:00
```

Explore the `man pinky` page to learn about more options and their usage.
