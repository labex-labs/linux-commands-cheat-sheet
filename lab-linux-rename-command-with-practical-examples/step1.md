# Understand the rename Command

In this step, you will learn about the `rename` command in Linux. The `rename` command is a powerful tool that allows you to batch rename files and directories based on a specified pattern.

The basic syntax of the `rename` command is:

```
rename 'expression' files
```

Here, `expression` is a Perl-compatible regular expression that defines the pattern to match and replace. The `files` argument specifies the files to be renamed.

For example, to rename all files with the extension `.txt` to `.doc`, you can use the following command:

```
rename 's/.txt$/.doc/' *.txt
```

This command will replace the `.txt` extension with `.doc` for all files in the current directory.

Example output:

```
file1.txt -> file1.doc
file2.txt -> file2.doc
file3.txt -> file3.doc
```

The `rename` command can also be used to perform more complex renaming operations, such as adding prefixes or suffixes, or even changing the file name based on the content of the file.
