# Perform Hexadecimal Dump of Files

In this final step, you will learn how to use the `od` command to perform a hexadecimal dump of files.

Let's create a larger sample file with some random data:

```bash
dd if=/dev/urandom of=random.txt bs=1024 count=10
```

This will create a file named `random.txt` with 10 kilobytes of random data.

Now, you can use the `od` command to display the hexadecimal dump of the file:

```bash
od -x random.txt
```

Example output:

```
0000000 f6d1 9d2e 4a4b 5b8f 6acd 0f1e 0f6a 1b2e
0000020 b6f9 2d4a 1e0f 6a1b 2e6f 9d2e 4a4b 5b8f
0000040 6acd 0f1e 0f6a 1b2e b6f9 2d4a 1e0f 6a1b
0000060 2e6f 9d2e 4a4b 5b8f 6acd 0f1e 0f6a 1b2e
0000100 b6f9 2d4a 1e0f 6a1b 2e6f 9d2e 4a4b 5b8f
0000120 6acd 0f1e 0f6a 1b2e b6f9 2d4a 1e0f 6a1b
0000140 2e6f 9d2e 4a4b 5b8f 6acd 0f1e 0f6a 1b2e
0000160 b6f9 2d4a 1e0f 6a1b 2e6f 9d2e 4a4b 5b8f
0000200 6acd 0f1e 0f6a 1b2e b6f9 2d4a 1e0f 6a1b
0000220 2e6f 9d2e 4a4b 5b8f 6acd 0f1e 0f6a 1b2e
0000240
```

The output shows the hexadecimal representation of the file contents, with each line displaying the offset (in bytes) from the beginning of the file.

You can also use the `-c` option to display the file contents in ASCII format alongside the hexadecimal dump:

```bash
od -tx1 -tc random.txt
```

Example output:

```
0000000 f6 d1 9d 2e 4a 4b 5b 8f 6a cd 0f 1e 0f 6a 1b 2e  |......JK[..j...j..|
0000020 b6 f9 2d 4a 1e 0f 6a 1b 2e 6f 9d 2e 4a 4b 5b 8f  |..-J..j..o..JK[.|
0000040 6a cd 0f 1e 0f 6a 1b 2e b6 f9 2d 4a 1e 0f 6a 1b  |j....j....-J..j.|
0000060 2e 6f 9d 2e 4a 4b 5b 8f 6a cd 0f 1e 0f 6a 1b 2e  |.o..JK[.j....j..|
0000100 b6 f9 2d 4a 1e 0f 6a 1b 2e 6f 9d 2e 4a 4b 5b 8f  |..-J..j..o..JK[.|
0000120 6a cd 0f 1e 0f 6a 1b 2e b6 f9 2d 4a 1e 0f 6a 1b  |j....j....-J..j.|
0000140 2e 6f 9d 2e 4a 4b 5b 8f 6a cd 0f 1e 0f 6a 1b 2e  |.o..JK[.j....j..|
0000160 b6 f9 2d 4a 1e 0f 6a 1b 2e 6f 9d 2e 4a 4b 5b 8f  |..-J..j..o..JK[.|
0000200 6a cd 0f 1e 0f 6a 1b 2e b6 f9 2d 4a 1e 0f 6a 1b  |j....j....-J..j.|
0000220 2e 6f 9d 2e 4a 4b 5b 8f 6a cd 0f 1e 0f 6a 1b 2e  |.o..JK[.j....j..|
0000240
```

This output displays the hexadecimal values alongside their corresponding ASCII characters, making it easier to interpret the file contents.
