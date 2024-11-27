# Creating Symbolic Links Using the ln Command

In this step, you will learn how to create symbolic (soft) links using the `ln` command.

First, let's create another sample file that we'll use for creating symbolic links:

```
touch file2.txt
echo "This is the second file." > file2.txt
```

Now, let's create a symbolic link to `file2.txt` using the `ln` command with the `-s` option:

```
ln -s file2.txt file2_symlink.txt
```

The `-s` option tells the `ln` command to create a symbolic link instead of a hard link.

Let's verify that the symbolic link was created correctly:

```
ls -l file2.txt file2_symlink.txt
```

Example output:

```
-rw-r--r-- 1 labex labex 23 Apr 12 12:34 file2.txt
lrwxrwxrwx 1 labex labex  8 Apr 12 12:34 file2_symlink.txt -> file2.txt
```

Notice that the symbolic link `file2_symlink.txt` has an "l" at the beginning of the permissions, indicating that it is a symbolic link. The output also shows that `file2_symlink.txt` points to `file2.txt`.

Unlike hard links, symbolic links can point to files or directories across file system boundaries. Let's demonstrate this by creating a symbolic link to a directory:

```
mkdir dir1
ln -s dir1 dir1_symlink
ls -l dir1 dir1_symlink
```

Example output:

```
drwxr-xr-x 2 labex labex 4096 Apr 12 12:34 dir1
lrwxrwxrwx 1 labex labex    5 Apr 12 12:34 dir1_symlink -> dir1
```

As you can see, `dir1_symlink` is a symbolic link that points to the `dir1` directory.

Symbolic links are more flexible than hard links, as they can point to files or directories across file system boundaries. However, they can also be more fragile, as the link will break if the target file or directory is moved or deleted.
