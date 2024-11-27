# Understand the zipinfo Command

In this step, we will learn about the `zipinfo` command in Linux, which is used to display detailed information about the contents of a zip file.

The `zipinfo` command is part of the `zip` package, which provides tools for creating, modifying, and extracting files from zip archives. The `zipinfo` command is particularly useful for analyzing the contents of a zip file, including file names, sizes, compression methods, and more.

To get started, let's first install the `zip` package in our Ubuntu 22.04 Docker container:

```bash
sudo apt-get update
sudo apt-get install -y zip
```

Now, let's create a sample zip file that we can use for our examples:

```bash
cd ~/project
zip sample.zip file1.txt file2.txt file3.txt
```

This will create a `sample.zip` file in the `~/project` directory, containing three text files.

To display the contents of the `sample.zip` file using the `zipinfo` command, run the following:

```bash
zipinfo sample.zip
```

Example output:

```
Archive:  sample.zip
Zip file size: 270 bytes, number of entries: 3
-rw-r--r--  3.0 unx        6 b- defN 23-Apr-23 10:00 file1.txt
-rw-r--r--  3.0 unx        6 b- defN 23-Apr-23 10:00 file2.txt
-rw-r--r--  3.0 unx        6 b- defN 23-Apr-23 10:00 file3.txt
3 files, 18 bytes uncompressed, 270 bytes compressed:  67.4%
```

This output shows the contents of the `sample.zip` file, including the file names, sizes, compression methods, and modification dates.

The `zipinfo` command provides a wealth of information about the contents of a zip file, and we'll explore more of its options in the next step.
