# Measure Disk Usage for a Directory

In this step, you will learn how to use the `du` command to measure the disk usage of a specific directory.

First, let's create a directory and some files to work with:

```bash
mkdir ~/project/test_dir
cd ~/project/test_dir
touch file1.txt file2.txt file3.txt
```

Now, let's use the `du` command to measure the disk usage of the `test_dir` directory:

```bash
# Display the disk usage of the test_dir directory
du -h ~/project/test_dir

# Display the total disk usage of the test_dir directory
du -hs ~/project/test_dir
```

Example output:

```
12K     /home/labex/project/test_dir
12K     /home/labex/project/test_dir
```

The first command, `du -h ~/project/test_dir`, displays the disk usage of each file and subdirectory within the `test_dir` directory. The `-h` option shows the sizes in human-readable format.

The second command, `du -hs ~/project/test_dir`, displays the total disk usage of the `test_dir` directory. The `-s` option shows the summary (total) size instead of the individual file/directory sizes.

You can also use the `du` command to measure the disk usage of a directory and its subdirectories recursively:

```bash
# Display the disk usage of the test_dir directory and its subdirectories
du -h -d 1 ~/project/test_dir
```

Example output:

```
4.0K    /home/labex/project/test_dir/file1.txt
4.0K    /home/labex/project/test_dir/file2.txt
4.0K    /home/labex/project/test_dir/file3.txt
12K     /home/labex/project/test_dir
12K     /home/labex/project/test_dir
```

The `-d 1` option limits the depth of the directory tree to 1 level, showing the disk usage of the `test_dir` directory and its immediate files/subdirectories.
