# Understand the Purpose and Syntax of the cpio Command

In this step, you will learn about the purpose and syntax of the `cpio` command in Linux. The `cpio` command is a powerful tool used for creating and extracting archives, as well as performing selective archiving and extraction.

The `cpio` command can be used in three different modes:

1. **Copy-out mode**: Used to create an archive from a list of files.
2. **Copy-in mode**: Used to extract files from an archive.
3. **Copy-pass mode**: Used to copy files from one directory to another.

To understand the basic syntax of the `cpio` command, let's look at the following examples:

**Create an archive using cpio**:

```
cd ~/project
ls -l | cpio -o > archive.cpio
```

Example output:

```
1234 blocks
```

**Extract an archive using cpio**:

```
cd ~/project
cpio -i < archive.cpio
```

Example output:

```
1234 blocks
```

The `-o` option is used to create an archive, and the `-i` option is used to extract an archive. The `<` and `>` symbols are used to redirect the input and output, respectively.

You can also use the `--help` option to view the complete list of available options for the `cpio` command.
