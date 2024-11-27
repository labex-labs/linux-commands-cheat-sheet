# Exclude Directories from du Measurement

In this step, you will learn how to exclude specific directories from the `du` command's disk usage measurement.

Let's create a new directory structure to demonstrate this:

```bash
mkdir -p ~/project/main_dir/subdir1 ~/project/main_dir/subdir2
touch ~/project/main_dir/subdir1/file1.txt ~/project/main_dir/subdir2/file2.txt
```

Now, let's use the `du` command to measure the disk usage of the `main_dir` directory, including its subdirectories:

```bash
du -h -d 1 ~/project/main_dir
```

Example output:

```
4.0K    /home/labex/project/main_dir/subdir1
4.0K    /home/labex/project/main_dir/subdir2
8.0K    /home/labex/project/main_dir
8.0K    /home/labex/project/main_dir
```

As you can see, the `du` command includes the disk usage of the `subdir1` and `subdir2` directories.

If you want to exclude specific directories from the `du` measurement, you can use the `--exclude` option:

```bash
du -h -d 1 --exclude=subdir1 ~/project/main_dir
```

Example output:

```
4.0K    /home/labex/project/main_dir/subdir2
4.0K    /home/labex/project/main_dir
4.0K    /home/labex/project/main_dir
```

In this example, the `--exclude=subdir1` option tells `du` to exclude the `subdir1` directory from the disk usage measurement.

You can also exclude multiple directories by using the `--exclude` option multiple times:

```bash
du -h -d 1 --exclude=subdir1 --exclude=subdir2 ~/project/main_dir
```

Example output:

```
0   /home/labex/project/main_dir
0   /home/labex/project/main_dir
```

In this case, since we excluded both `subdir1` and `subdir2`, the total disk usage of the `main_dir` directory is reported as 0.
