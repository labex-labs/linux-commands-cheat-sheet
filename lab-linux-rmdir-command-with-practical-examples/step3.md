# Remove Non-Empty Directories with rmdir

In the previous step, you learned how to remove empty directories using the `rmdir` command. However, what if the directory you want to remove is not empty? In this step, you will learn how to remove non-empty directories.

First, let's create a non-empty directory:

```
mkdir non_empty_dir
touch non_empty_dir/file1.txt
touch non_empty_dir/file2.txt
```

Example output:

```
labex@ubuntu:~/project$ mkdir non_empty_dir
labex@ubuntu:~/project$ touch non_empty_dir/file1.txt
labex@ubuntu:~/project$ touch non_empty_dir/file2.txt
```

Now, let's try to remove the non-empty directory using the `rmdir` command:

```
rmdir non_empty_dir
```

Example output:

```
labex@ubuntu:~/project$ rmdir non_empty_dir
rmdir: failed to remove 'non_empty_dir': Directory not empty
```

As you can see, the `rmdir` command fails to remove the non-empty directory. To remove a non-empty directory, you can use the `rm -r` command, which will recursively remove the directory and its contents:

```
rm -r non_empty_dir
```

Example output:

```
labex@ubuntu:~/project$ rm -r non_empty_dir
```

The `rm -r` command successfully removed the non-empty directory and its contents.
