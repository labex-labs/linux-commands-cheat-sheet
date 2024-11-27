# Create and Extract Archives Using the cpio Command

In this step, you will learn how to create and extract archives using the `cpio` command.

**Create an Archive**
To create an archive using `cpio`, we'll first create some sample files and directories in the `~/project` directory:

```
cd ~/project
mkdir sample_dir
touch sample_dir/file1.txt sample_dir/file2.txt
```

Now, let's create an archive of the `sample_dir` directory:

```
cd ~/project
ls -1 sample_dir | cpio -o > archive.cpio
```

Example output:

```
3 blocks
```

The `ls -1 sample_dir` command lists the files in the `sample_dir` directory, and the `cpio -o` command creates the archive file `archive.cpio`.

**Extract an Archive**
To extract the files from the `archive.cpio` archive, use the following command:

```
cd ~/project
cpio -i < archive.cpio
```

Example output:

```
3 blocks
```

The `cpio -i` command extracts the files from the `archive.cpio` archive.

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
```
