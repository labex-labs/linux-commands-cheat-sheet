# Recursively Decompress Directories

In this step, we will learn how to recursively decompress all gzipped files within a directory and its subdirectories using the `gunzip` command.

First, let's create a sample directory structure with some gzipped files:

```bash
mkdir -p ~/project/compressed
echo "This is a compressed file." > ~/project/compressed/file1.txt.gz
echo "This is another compressed file." > ~/project/compressed/file2.txt.gz
mkdir ~/project/compressed/subdir
echo "This is a compressed file in a subdirectory." > ~/project/compressed/subdir/file3.txt.gz
```

Now, we can use the `gunzip` command with the `-r` (recursive) option to decompress all the gzipped files in the directory and its subdirectories:

```bash
cd ~/project/compressed
gunzip -r .
```

Example output:

```

```

As you can see, the `gunzip -r .` command has decompressed all the gzipped files in the `~/project/compressed` directory and its subdirectories.

The `-r` option tells `gunzip` to recursively process all subdirectories, ensuring that any nested gzipped files are also decompressed. This is a convenient way to decompress an entire directory structure containing multiple compressed files.
