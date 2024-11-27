# Compress and Decompress Files with bzip2

In this step, you will learn how to use the bzip2 command to compress and decompress files.

To compress the `sample.txt` file created in the previous step, use the following command:

```bash
bzip2 sample.txt
```

This will create a new file named `sample.txt.bz2`, which is the compressed version of the original file.

You can verify the compression by listing the files in the directory:

```bash
ls -l
```

Example output:

```
-rw-r--r-- 1 labex labex 54 Apr 18 12:34 sample.txt.bz2
```

To decompress the file, use the following command:

```bash
bzip2 -d sample.txt.bz2
```

This will create a new file named `sample.txt`, which is the decompressed version of the original file.

You can verify the decompression by listing the files in the directory again:

```bash
ls -l
```

Example output:

```
-rw-r--r-- 1 labex labex 54 Apr 18 12:34 sample.txt
```
