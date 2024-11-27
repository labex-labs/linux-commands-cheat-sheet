# Locate Executable Files, Source Code, and Manual Pages Using whereis

In this step, you will learn how to use the `whereis` command to locate executable files, source code, and manual pages for various programs on your Linux system.

Let's start by finding the location of the `gcc` compiler:

```bash
whereis gcc
```

Example output:

```
gcc: /usr/bin/gcc /usr/lib/gcc /usr/include/gcc /usr/share/man/man1/gcc.1.gz
```

This output shows that the `gcc` executable is located in the `/usr/bin/gcc` directory, the source code files are in the `/usr/lib/gcc` directory, and the manual page is in the `/usr/share/man/man1/gcc.1.gz` file.

Next, let's find the location of the `python3` executable:

```bash
whereis python3
```

Example output:

```
python3: /usr/bin/python3 /usr/lib/python3.10 /usr/share/man/man1/python3.1.gz
```

The output indicates that the `python3` executable is located in the `/usr/bin/python3` directory, the Python 3.10 library files are in the `/usr/lib/python3.10` directory, and the manual page is in the `/usr/share/man/man1/python3.1.gz` file.

You can use the `whereis` command to locate files related to any program or command on your system. This can be particularly useful when you need to find the location of a specific executable, source code, or manual page.
