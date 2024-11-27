# Batch Rename Files with the rename Command

In this step, you will learn how to use the `rename` command to batch rename multiple files.

First, let's create some sample files with different extensions:

```
touch file1.txt file2.jpg file3.pdf file4.doc
```

To batch rename all files with a specific extension, you can use the `rename` command with a regular expression:

```
rename 's/\.txt$/.doc/' *.txt
```

This will rename all `.txt` files to `.doc` extension.

Example output:

```
file1.txt -> file1.doc
```

You can also use the `rename` command to add a prefix or suffix to multiple files:

```
rename 's/(.*)\.jpg$/image_\1.jpg/' *.jpg
```

This will add the prefix `image_` to all `.jpg` files.

Example output:

```
file2.jpg -> image_file2.jpg
```

The `rename` command is very flexible and allows you to perform complex batch renaming operations. You can use regular expressions to match and replace patterns in file names, as well as incorporate information from the file name into the new name.
