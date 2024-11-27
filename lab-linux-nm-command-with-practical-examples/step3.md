# Filtering Symbol Information Using nm Options

In this step, we will explore how to use the `nm` command to filter the symbol information for the `hello` executable.

Sometimes, the output of the `nm` command can be overwhelming, especially for large executables. To focus on specific types of symbols, we can use the following `nm` options:

- `nm -D hello`: Displays only the dynamic symbols (symbols used by the dynamic linker).
- `nm -T hello`: Displays only the static (global) symbols.
- `nm -t <format> hello`: Displays the symbol addresses in a specific format (`d` for decimal, `x` for hexadecimal, `o` for octal).
- `nm --defined-only hello`: Displays only the defined symbols (not external/undefined symbols).
- `nm --undefined-only hello`: Displays only the undefined symbols.

For example, to display the dynamic symbols in hexadecimal format:

```bash
nm -Dt hello
```

Example output:

```
0000000000001119 T main
                 U printf
```

To display only the static (global) symbols:

```bash
nm -T hello
```

Example output:

```
0000000000001119 T main
```

You can combine these options to further refine the output. For instance, to display only the defined symbols in a more readable format:

```bash
nm --defined-only -nC hello
```

Example output:

```
hello:0000000000001119 T main
```

Filtering the symbol information can be particularly useful when working with large or complex executables, as it allows you to focus on the specific symbols you're interested in.
