# Customize the Search Behavior of the whereis Command

In this step, you will learn how to customize the search behavior of the `whereis` command to better suit your needs.

By default, the `whereis` command searches for programs in a predefined list of directories, such as `/bin`, `/usr/bin`, and `/usr/sbin`. However, you can modify the search behavior by using the `-b`, `-m`, and `-s` options.

Let's explore these options:

1. **-b (binaries)**: This option tells `whereis` to search only for binary executable files.

```bash
whereis -b gcc
```

Example output:

```
gcc: /usr/bin/gcc
```

2. **-m (manual)**: This option tells `whereis` to search only for manual pages.

```bash
whereis -m gcc
```

Example output:

```
gcc: /usr/share/man/man1/gcc.1.gz
```

3. **-s (source)**: This option tells `whereis` to search only for source code files.

```bash
whereis -s gcc
```

Example output:

```
gcc: /usr/lib/gcc
```

You can also combine these options to customize the search even further. For example, to search for the binary and manual page of the `python3` command, you can use:

```bash
whereis -b -m python3
```

Example output:

```
python3: /usr/bin/python3 /usr/share/man/man1/python3.1.gz
```

By using these options, you can tailor the `whereis` command to your specific needs and quickly locate the files you're looking for.
