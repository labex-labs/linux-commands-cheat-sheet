# Explore Disk Usage with the df Command

In this step, you will learn how to use the `df` command to explore the disk usage on your system.

First, let's create a new directory and some sample files to test the `df` command:

```bash
mkdir ~/project/sample_files
cd ~/project/sample_files
touch file1.txt file2.txt file3.txt
```

Now, let's use the `df` command to check the disk usage of the `/home` directory, where the `sample_files` directory is located:

```bash
df -h /home
```

This will display the file system information for the `/home` directory, including the total size, used space, and available space.

Example output:

```
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda2       96G   16G   76G  18% /home
```

You can also use the `df` command to display the disk usage of a specific file or directory. For example, to check the disk usage of the `sample_files` directory:

```bash
df -h ~/project/sample_files
```

Example output:

```
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda2       96G   16G   76G  18% /home
```

The `df` command can also be used to display the disk usage of all file systems on your system. To do this, simply run the `df` command without any arguments:

```bash
df -h
```

This will display the disk usage information for all mounted file systems on your system.
