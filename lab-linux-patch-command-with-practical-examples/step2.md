# Apply a Patch to a File

In this step, you will learn how to apply a patch to a file using the `patch` command.

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

After applying the patch, the `original.txt` file should now contain the changes from the `modified.txt` file.

Let's verify the contents of the `original.txt` file:

```
cat original.txt
```

Example output:

```
This is the modified file.
```

As you can see, the `original.txt` file has been updated with the changes from the patch file.
