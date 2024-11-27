# Understand the od Command

In this step, you will learn about the `od` (octal dump) command in Linux. The `od` command is used to display the contents of a file in octal, decimal, hexadecimal, or other formats.

To get started, let's create a sample file with some text:

```bash
echo "Hello, Linux!" > sample.txt
```

Now, you can use the `od` command to view the contents of the file in hexadecimal format:

```bash
od -x sample.txt
```

Example output:

```
0000000 4865 6c6c 6f2c 2020 4c69 6e75 7821 0a00
0000020
```

The `-x` option tells `od` to display the file contents in hexadecimal format. Each line shows the offset (in bytes) from the beginning of the file, followed by the hexadecimal representation of the data.

You can also use the `-t` option to specify the output format. For example, to display the file contents in decimal format:

```bash
od -t d1 sample.txt
```

Example output:

```
0000000   72  101  108  108  111  44     32  108  105  110  117  120  33  10
0000020
```

The `d1` argument tells `od` to display the data in 1-byte decimal format.
