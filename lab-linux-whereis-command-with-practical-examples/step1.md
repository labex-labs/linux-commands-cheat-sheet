# Understand the Purpose of the whereis Command

In this step, you will learn about the purpose and usage of the `whereis` command in Linux. The `whereis` command is a useful tool for locating the executable, source, and manual pages for a given command or program.

The `whereis` command searches for a program in a predefined list of standard binary directories, such as `/bin`, `/usr/bin`, and `/usr/sbin`. It can help you quickly find the location of a command or program on your system.

Let's start by running the `whereis` command to locate the `ls` command:

```bash
whereis ls
```

Example output:

```
ls: /usr/bin/ls /usr/share/man/man1/ls.1.gz
```

The output shows that the executable file for the `ls` command is located in the `/usr/bin/ls` directory, and the corresponding manual page is located in the `/usr/share/man/man1/ls.1.gz` file.

The `whereis` command can also be used to locate the source code for a program. For example, to find the source code for the `gcc` compiler, you can run:

```bash
whereis gcc
```

Example output:

```
gcc: /usr/bin/gcc /usr/lib/gcc /usr/include/gcc /usr/share/man/man1/gcc.1.gz
```

This output indicates that the executable file for `gcc` is located in the `/usr/bin/gcc` directory, and the source code and include files are located in the `/usr/lib/gcc` and `/usr/include/gcc` directories, respectively.

The `whereis` command is a powerful tool for quickly locating files related to a specific program or command on your Linux system.
