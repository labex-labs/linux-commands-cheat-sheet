# Utilize ls Command for Navigating Directory Structures

In this step, you will learn how to use the `ls` command to navigate through directory structures.

First, let's create a new directory and some files inside it:

```bash
mkdir ~/project/new_folder
touch ~/project/new_folder/file3.txt ~/project/new_folder/file4.txt
```

Now, you can use the `ls` command to list the contents of the `new_folder` directory:

```bash
ls ~/project/new_folder
```

Example output:

```
file3.txt  file4.txt
```

To list the contents of the current directory and its subdirectories, you can use the `-R` (recursive) option:

```bash
ls -R ~/project
```

Example output:

```
~/project:
file1.txt  file2.txt  folder1  folder2  new_folder

~/project/folder1:

~/project/folder2:

~/project/new_folder:
file3.txt  file4.txt
```

The `-R` option recursively lists the contents of the current directory and all its subdirectories.

You can also use the `ls` command to navigate to a specific directory. For example, to list the contents of the `new_folder` directory:

```bash
cd ~/project/new_folder
ls
```

Example output:

```
file3.txt  file4.txt
```

After navigating to the `new_folder` directory, you can use the basic `ls` command to list its contents.

To go back to the parent directory, you can use the `cd ..` command:

```bash
cd ..
ls
```

Example output:

```
file1.txt  file2.txt  folder1  folder2  new_folder
```

This way, you can use the `ls` command to navigate through your directory structure and list the contents of different directories.

In the previous steps, you learned the basic usage of the `ls` command and explored its various options. In this step, you practiced using the `ls` command to navigate through directories and list their contents. These skills will help you manage your files and directories more efficiently in a Linux environment.
