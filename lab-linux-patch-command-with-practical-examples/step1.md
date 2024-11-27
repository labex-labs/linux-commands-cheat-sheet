# Understand the Purpose and Syntax of the patch Command

In this step, you will learn about the purpose and syntax of the `patch` command in Linux. The `patch` command is used to apply differences between files to an original file, allowing you to update or modify the file with changes made in a separate file.

First, let's understand the basic syntax of the `patch` command:

```
patch [options] [original_file [patch_file]]
```

The `patch` command takes the following options:

- `-p<number>`: Strips the specified number of leading directories from file names.
- `-i <patch_file>`: Specifies the patch file to be applied.
- `-R`: Reverses the patch, removing the changes instead of applying them.
- `-r <reject_file>`: Specifies the reject file to be used.

Now, let's see an example of using the `patch` command:

```
# Create a sample file
echo "This is the original file." > original.txt

# Create a patch file
echo "This is the modified file." > modified.txt
diff -u original.txt modified.txt > patch.diff

# Apply the patch
patch -p0 -i patch.diff
```

Example output:

```
patching file original.txt
```

In this example, we first create a sample file `original.txt`. Then, we create a modified version of the file `modified.txt` and generate a patch file `patch.diff` using the `diff` command. Finally, we apply the patch using the `patch` command, which updates the `original.txt` file with the changes from the patch file.
