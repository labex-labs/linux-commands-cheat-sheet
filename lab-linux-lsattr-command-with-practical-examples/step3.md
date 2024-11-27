# Manage File Attributes with lsattr

In this step, you will learn how to use the `lsattr` command to manage the attributes of files and directories.

First, let's create a new file and set some attributes on it:

```
touch file4.txt
sudo lsattr file4.txt
```

Example output:

```
--------------e----------- file4.txt
```

As you can see, the `e` attribute is set on the file by default.

Now, let's add the `i` (immutable) attribute to the file:

```
sudo lsattr +i file4.txt
lsattr file4.txt
```

Example output:

```
----i---------e----------- file4.txt
```

The `i` attribute indicates that the file is immutable, meaning it cannot be modified, deleted, or renamed.

You can also remove attributes from a file using the `-` prefix. For example, to remove the `i` attribute:

```
sudo lsattr -i file4.txt
lsattr file4.txt
```

Example output:

```
--------------e----------- file4.txt
```

The `i` attribute has been removed, and the file is now editable.

You can also apply attributes to multiple files or directories at once:

```
touch file5.txt file6.txt
sudo lsattr +a file5.txt file6.txt
lsattr file5.txt file6.txt
```

Example output:

```
-a--------------e----------- file5.txt
-a--------------e----------- file6.txt
```

In this example, the `a` (append-only) attribute has been added to `file5.txt` and `file6.txt`.
