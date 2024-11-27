# Understand the mcopy Command

In this step, you will learn about the `mcopy` command, which is a tool used to copy files and directories between different file systems, including FAT, NTFS, and Linux file systems.

The `mcopy` command is part of the `mtools` package, which is a collection of utilities for accessing MS-DOS file systems from Unix-like systems. To use `mcopy`, you will need to have the `mtools` package installed on your system.

Let's start by checking if the `mtools` package is installed on your system:

```bash
sudo apt-get update
sudo apt-get install -y mtools
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libfuse2
The following NEW packages will be installed:
  libfuse2 mtools
0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.
```

Now, let's explore the basic usage of the `mcopy` command:

```bash
mcopy -v ~/project/file.txt a:
```

Example output:

```
Copying ~/project/file.txt to a:file.txt
```

In this example, we used the `mcopy` command to copy the file `file.txt` from the `~/project` directory to the root directory of the first FAT/VFAT file system (typically the first floppy disk or USB drive).

The `-v` option enables verbose mode, which provides more detailed output during the copy operation.

The `a:` at the end of the command specifies the destination for the copy operation. In this case, `a:` represents the first FAT/VFAT file system.
