# Creating Hard Links Using the ln Command

In this step, you will learn how to create hard links using the `ln` command.

First, let's create a sample file that we'll use for creating hard links:

```
touch file1.txt
echo "This is the original file." > file1.txt
```

Now, let's create a hard link to `file1.txt` using the `ln` command:

```
ln file1.txt file1_hardlink.txt
```

The `ln` command without any options creates a hard link. This means that `file1_hardlink.txt` and `file1.txt` now share the same inode (file metadata) and physical storage location. Any changes made to one file will be reflected in the other.

Let's verify that the hard link was created correctly:

```
ls -l file1.txt file1_hardlink.txt
```

Example output:

```
-rw-r--r-- 2 labex labex 25 Apr 12 12:34 file1.txt
-rw-r--r-- 2 labex labex 25 Apr 12 12:34 file1_hardlink.txt
```

Notice that both files have the same inode number (the "2" in the second column), indicating that they are hard links to the same file.

Now, let's make a change to the original file and see how it affects the hard link:

```
echo "This is an updated file." > file1.txt
cat file1.txt file1_hardlink.txt
```

Example output:

```
This is an updated file.
This is an updated file.
```

As you can see, the changes made to `file1.txt` are reflected in the hard link `file1_hardlink.txt`.

Hard links are useful when you want to create multiple references to the same file, without consuming additional storage space. However, keep in mind that hard links cannot span file system boundaries, and they cannot be created for directories.
