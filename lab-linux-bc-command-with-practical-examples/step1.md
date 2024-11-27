# Introduction to the bc Command

In this step, we will learn about the `bc` command, which is a powerful command-line calculator tool in Linux. The `bc` command allows you to perform basic arithmetic operations, as well as more advanced calculations and functions.

First, let's check if the `bc` command is installed on your system. Run the following command:

```
which bc
```

Example output:

```
/usr/bin/bc
```

If the output shows the path to the `bc` command, it means `bc` is installed. If not, you can install it using the following command:

```
sudo apt-get update
sudo apt-get install -y bc
```

Now, let's start using the `bc` command. To enter the `bc` interactive mode, simply run the `bc` command:

```
bc
```

Example output:

```
bc 1.07.1
Copyright 1991-1994, 1997, 1998, 2000, 2004, 2006, 2008, 2012-2017 Free Software Foundation, Inc.
This is free software with ABSOLUTELY NO WARRANTY.
For installation instructions, please see the file INSTALL.
>
```

You are now in the `bc` interactive mode, where you can start performing calculations. Let's try some basic arithmetic operations:

```
2 + 3
```

Example output:

```
5
```

```
10 - 4
```

Example output:

```
6
```

```
5 * 6
```

Example output:

```
30
```

```
20 / 4
```

Example output:

```
5
```

To exit the `bc` interactive mode, simply type `quit` and press Enter.
