# Understand the Purpose of lndir Command

In this step, you will learn about the purpose of the `lndir` command in Linux. The `lndir` command is used to create symbolic links to a directory tree. It is particularly useful when you want to create a mirror of a directory structure without duplicating the actual files.

To begin, let's create a sample directory structure that we will use throughout this lab:

```bash
mkdir -p ~/project/source ~/project/destination
touch ~/project/source/file1.txt ~/project/source/file2.txt
```

Example output:

```
labex@ubuntu:~/project$ mkdir -p ~/project/source ~/project/destination
labex@ubuntu:~/project$ touch ~/project/source/file1.txt ~/project/source/file2.txt
```

The `lndir` command creates symbolic links to all the files and subdirectories in the source directory, allowing you to access the files in the destination directory as if they were physically present there. This is particularly useful when you want to share a directory structure across multiple locations without duplicating the actual files.

To create a symbolic link using `lndir`, run the following command:

```bash
lndir ~/project/source ~/project/destination
```

Example output:

```
labex@ubuntu:~/project$ lndir ~/project/source ~/project/destination
```

After running this command, you should see that the `~/project/destination` directory now contains symbolic links to the files in the `~/project/source` directory.

```bash
ls -l ~/project/destination
```

Example output:

```
labex@ubuntu:~/project$ ls -l ~/project/destination
total 0
lrwxrwxrwx 1 labex labex 23 Apr 11 12:34 file1.txt -> ../source/file1.txt
lrwxrwxrwx 1 labex labex 23 Apr 11 12:34 file2.txt -> ../source/file2.txt
```

The `lndir` command is a useful tool for managing symbolic links and maintaining a consistent directory structure across multiple locations.
