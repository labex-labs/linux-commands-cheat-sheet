# Displaying Symbol Information of an Executable

In this step, we will explore the various options of the `nm` command to display more detailed symbol information for the `hello` executable we created in the previous step.

First, let's take a closer look at the output of the basic `nm` command:

```bash
nm hello
```

Example output:

```
0000000000001119 T main
                 U printf
```

The output shows the symbol name and its address in the executable file. The letter `T` indicates that `main` is a global function, and `U` means that `printf` is an undefined symbol, likely provided by an external library.

To get more detailed information, we can use the following `nm` options:

- `nm -A hello`: Displays the file name along with the symbol information.
- `nm -n hello`: Sorts the output by symbol name instead of address.
- `nm -p hello`: Displays the output in a more readable, post-processed format.
- `nm -C hello`: Demangles C++ symbol names for better readability.

Example output:

```
hello:0000000000001119 T main
hello:                 U printf
```

You can combine these options to customize the output further. For example:

```bash
nm -nC hello
```

Example output:

```
hello:                 U std::ostream::operator<<(char const*)
hello:0000000000001119 T main
```

This command displays the symbols sorted by name, with C++ symbol names demangled for better readability.

The `nm` command provides a wealth of information about the internal structure of executable files, which can be useful for developers, system administrators, and security researchers.
