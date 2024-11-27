# Compare Binary Files

In this step, you will learn how to use the `cmp` command to compare the contents of two binary files.

Let's start by creating two binary files with some random data:

```bash
dd if=/dev/urandom of=file1.bin bs=1024 count=1
dd if=/dev/urandom of=file2.bin bs=1024 count=1
```

The `dd` command creates two binary files, `file1.bin` and `file2.bin`, each with 1024 bytes of random data.

Now, let's use the `cmp` command to compare the two binary files:

```bash
cmp file1.bin file2.bin
```

Example output:

```
file1.bin file2.bin differ: byte 1, line 1
```

The output shows that the two files differ at byte 1, which means the first byte in the files is different.

You can also use the `-l` option to display the byte number and the differing bytes for each difference:

```bash
cmp -l file1.bin file2.bin
```

Example output:

```
1 302 5
```

This output indicates that the files differ at byte 1, where the bytes are 302 and 5 (in octal).

If the files are identical, the `cmp` command will not output anything, as the `-s` (silent) option is the default behavior when the files are the same.

```bash
dd if=/dev/urandom of=file3.bin bs=1024 count=1
cmp file1.bin file3.bin
```

No output means the files are identical.
