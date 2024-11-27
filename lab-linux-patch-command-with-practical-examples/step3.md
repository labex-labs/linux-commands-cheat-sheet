# Revert a Patch

In this step, you will learn how to revert a patch using the `patch` command.

First, let's create a sample file and a patch file:

```
# Create a sample file
echo "This is the original file." > original.txt

# Create a modified version of the file
echo "This is the modified file." > modified.txt

# Generate a patch file
diff -u original.txt modified.txt > patch.diff
```

Now, let's apply the patch to the original file:

```
# Apply the patch
patch -p0 -i patch.diff
```

Example output:

```
patching file original.txt
```

To revert the patch, we can use the `-R` option:

```
# Revert the patch
patch -R -p0 -i patch.diff
```

Example output:

```
patching file original.txt
```

After reverting the patch, the `original.txt` file should now contain the original contents.

Let's verify the contents of the `original.txt` file:

```
cat original.txt
```

Example output:

```
This is the original file.
```

As you can see, the `original.txt` file has been reverted to its original state.
