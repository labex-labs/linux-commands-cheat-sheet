# Perform Selective Archiving and Extraction with cpio

In this step, you will learn how to perform selective archiving and extraction using the `cpio` command.

**Selective Archiving**
Suppose you have the following files and directories in the `~/project` directory:

```
cd ~/project
mkdir sample_dir
touch sample_dir/file1.txt sample_dir/file2.txt sample_dir/file3.txt
touch file4.txt file5.txt
```

To create an archive that includes only the files in the `sample_dir` directory, you can use the following command:

```
cd ~/project
find sample_dir -type f | cpio -o > sample_archive.cpio
```

Example output:

```
3 blocks
```

The `find sample_dir -type f` command finds all regular files (not directories) in the `sample_dir` directory, and the `cpio -o` command creates the `sample_archive.cpio` archive.

**Selective Extraction**
To extract only the files from the `sample_archive.cpio` archive that have the `.txt` extension, you can use the following command:

```
cd ~/project
cpio -i --include="*.txt" < sample_archive.cpio
```

Example output:

```
3 blocks
```

The `--include="*.txt"` option tells `cpio` to extract only the files with a `.txt` extension.

You can verify the extracted files by listing the contents of the `sample_dir` directory:

```
cd ~/project
ls -l sample_dir
```

Example output:

```
total 0
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 file1.txt
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 file2.txt
-rw-r--r-- 1 labex labex 0 Apr 12 12:34 file3.txt
```
