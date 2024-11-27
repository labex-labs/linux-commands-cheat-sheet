# Understand the Purpose and Syntax of the mdel Command

In this step, you will learn about the purpose and syntax of the `mdel` command in Linux. The `mdel` command is used to create multiple directories at once, which can be a time-saving feature when you need to create a directory structure with several levels.

To understand the basic syntax of the `mdel` command, run the following command:

```
man mdel
```

This will display the manual page for the `mdel` command, which provides information about its usage and available options.

The basic syntax of the `mdel` command is as follows:

```
mdel [options] directory1 directory2 directory3 ...
```

The `mdel` command takes one or more directory names as arguments, and creates them all at once. Some common options include:

- `-p`: Create intermediate directories as needed. This is useful when creating a directory structure with multiple levels.
- `-v`: Verbose mode, which displays the name of each directory as it is created.
- `-m`: Set the mode (permissions) of the created directories.

For example, to create three directories named `dir1`, `dir2`, and `dir3` in the `~/project` directory, you can use the following command:

```
mdel dir1 dir2 dir3
```

Example output:

```
~/project/dir1
~/project/dir2
~/project/dir3
```

In the next step, you will practice creating and managing multiple directories using the `mdel` command.
