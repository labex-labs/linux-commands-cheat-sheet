# Removing Directories Recursively with mdeltree

In this step, we will learn how to use the `mdeltree` command to recursively remove directories and their contents.

First, let's create a test directory and some files inside it:

```bash
mkdir -p ~/project/test_dir
touch ~/project/test_dir/file1.txt
touch ~/project/test_dir/file2.txt
```

Now, let's remove the `test_dir` directory and its contents using the `mdeltree` command:

```bash
sudo mdeltree ~/project/test_dir
```

Example output:

```
Removing directory: /home/labex/project/test_dir
Removed /home/labex/project/test_dir/file1.txt
Removed /home/labex/project/test_dir/file2.txt
Removed directory: /home/labex/project/test_dir
```

As you can see, the `mdeltree` command recursively removed the `test_dir` directory and all the files inside it.

You can also use the `-v` option to enable verbose mode, which will display more detailed information about the deletion process:

```bash
sudo mdeltree -v ~/project/test_dir
```

Example output:

```
Removing directory: /home/labex/project/test_dir
Removed file: /home/labex/project/test_dir/file1.txt
Removed file: /home/labex/project/test_dir/file2.txt
Removed directory: /home/labex/project/test_dir
```

The `-f` option can be used to force the deletion without prompting for confirmation:

```bash
sudo mdeltree -f ~/project/test_dir
```

This will remove the directory without asking for confirmation.
