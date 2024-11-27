# Removing Files and Directories

In this step, you will learn how to remove directories and handle confirmation prompts using the `rm` command.

First, let's create a directory and some files to practice with:

```
mkdir ~/project/test_dir
touch ~/project/test_dir/file1.txt ~/project/test_dir/file2.txt ~/project/test_dir/file3.txt
```

Example output:

```
labex@ubuntu:~/project$ mkdir ~/project/test_dir
labex@ubuntu:~/project$ touch ~/project/test_dir/file1.txt ~/project/test_dir/file2.txt ~/project/test_dir/file3.txt
```

To remove a directory and its contents, you can use the `-r` (recursive) option:

```
rm -r ~/project/test_dir
```

Example output:

```
labex@ubuntu:~/project$ rm -r ~/project/test_dir
```

By default, the `rm` command will prompt you for confirmation before removing each file or directory. You can bypass this by using the `-f` (force) option:

```
mkdir ~/project/test_dir
touch ~/project/test_dir/file1.txt ~/project/test_dir/file2.txt ~/project/test_dir/file3.txt
rm -rf ~/project/test_dir
```

Example output:

```
labex@ubuntu:~/project$ mkdir ~/project/test_dir
labex@ubuntu:~/project$ touch ~/project/test_dir/file1.txt ~/project/test_dir/file2.txt ~/project/test_dir/file3.txt
labex@ubuntu:~/project$ rm -rf ~/project/test_dir
```

In the next step, you will learn how to handle confirmation prompts and force removal.
