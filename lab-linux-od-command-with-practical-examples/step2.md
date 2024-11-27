# Explore od Command Options

In this step, you will explore the various options available with the `od` command to customize the output format.

First, let's create another sample file with some binary data:

```bash
echo -e "\x01\x02\x03\x04\x05\x06\x07\x08" > binary.txt
```

Now, you can use the `od` command with different options to display the file contents in various formats:

```bash
# Display in octal format
od -t o1 binary.txt

# Display in hexadecimal format
od -t x1 binary.txt

# Display in ASCII format
od -t c binary.txt
```

Example output:

```
0000000 001 002 003 004 005 006 007 010
0000010
0000000 01 02 03 04 05 06 07 08
0000010
0000000 001 002 003 004 005 006 007 010
0000010
```

The `-t` option allows you to specify the output format. In the examples above, `o1` represents 1-byte octal, `x1` represents 1-byte hexadecimal, and `c` represents character (ASCII) format.

You can also combine multiple output formats using the `-t` option:

```bash
od -t x1 -t d1 -t c binary.txt
```

Example output:

```
0000000 01 02 03 04 05 06 07 08
0000010
```

This will display the file contents in hexadecimal, decimal, and character formats side-by-side.
