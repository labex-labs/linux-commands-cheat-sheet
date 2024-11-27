# Customizing the hexdump Output

In this final step, we will explore how to customize the output of the `hexdump` command to suit your specific needs.

The `hexdump` command provides several options to control the format of the output. Let's start by using the `-v` (verbose) option to display additional information:

```bash
hexdump -v -C ~/project/binary_file.bin
```

Example output:

```
00000000  b5 7f 04 3c 91 82 f7 06  dc 2b 8e 8e 5e 2e 6e 1b  |...<.....+..^.n.|
00000010  7a 9a 8e 4e 3a 5e 8e 2d  9b 3e 7d 0a 0d 5d 2e 8f  |z..N:^.-.:}..]..|
00000020  6d 17 a5 8a 1d 6f 9f 3d  44 f2 8e 3f 9a 8f 3a 5b  |m....o.=D..?..:[|
00000030  e1 73 2f 7e 5f 8f 04 a3  1e 4a 9e 8c 8f 9a 8e 4e  |.s/~_....J.....N|
```

The `-v` option displays the file offset (the position of the data in the file) in the leftmost column.

You can also use the `-x` option to display the output in 32-bit hexadecimal format:

```bash
hexdump -x ~/project/binary_file.bin
```

Example output:

```
00000000  3c7f04b5  06f78291  8e2b0cdc  1b6e2e5e
00000010  8e3a9a7a  0a7d3e9b  8f2e5d0d  8a17a56d
00000020  3d9f6f1d  3f8ef244  5b3a8f9a  8c9e4a1e
00000030  8f04a37f  4e8e9a8f  73e1
```

In this format, the data is displayed in 32-bit hexadecimal values, which can be useful for analyzing binary data at a lower level.

Finally, let's try the `-d` option to display the output in 16-bit decimal format:

```bash
hexdump -d ~/project/binary_file.bin
```

Example output:

```
00000000  48879  32403  62353  56076  56462  24670  31259  14623
00000016  31610  15677  13010  21869  8207  37243  17694  14350
00000032  15995  17215  17787  17498  28509  17742
```

The `-d` option displays the data in 16-bit decimal values, which can be helpful for interpreting the binary data as numeric values.

By using these customization options, you can tailor the `hexdump` output to your specific needs and gain a deeper understanding of the binary data you're working with.
