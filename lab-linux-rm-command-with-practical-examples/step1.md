# Understanding the rm Command

In this step, you will learn about the `rm` command, which is used to remove files and directories in the Linux operating system.

The `rm` command is a powerful tool, but it should be used with caution as it permanently deletes files and directories without the ability to recover them. The basic syntax for the `rm` command is:

```
rm [options] file(s)
```

Here are some common options for the `rm` command:

- `-f`: Force removal of files and directories without prompting for confirmation.
- `-r`: Recursively remove directories and their contents.
- `-i`: Prompt for confirmation before removing each file or directory.

Let's start by creating a directory and some files to practice with:

```
mkdir ~/project/test_dir
touch ~/project/test_dir/file1.txt ~/project/test_dir/file2.txt ~/project/test_dir/file3.txt
```

Example output:

```
labex@ubuntu:~/project$ mkdir ~/project/test_dir
labex@ubuntu:~/project$ touch ~/project/test_dir/file1.txt ~/project/test_dir/file2.txt ~/project/test_dir/file3.txt
```

Now, let's try removing a single file using the `rm` command:

```
rm ~/project/test_dir/file1.txt
```

Example output:

```
labex@ubuntu:~/project$ rm ~/project/test_dir/file1.txt
```

You can also remove multiple files at once:

```
rm ~/project/test_dir/file2.txt ~/project/test_dir/file3.txt
```

Example output:

```
labex@ubuntu:~/project$ rm ~/project/test_dir/file2.txt ~/project/test_dir/file3.txt
```

In the next step, you will learn how to remove directories and handle confirmation prompts.
