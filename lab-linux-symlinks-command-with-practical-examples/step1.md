# Create and Manage Symbolic Links

In this step, you will learn how to create and manage symbolic links, also known as symlinks, in Linux. Symbolic links are a special type of file that acts as a reference to another file or directory, allowing you to access the target file or directory through the symlink.

First, let's create a directory and a file to work with:

```bash
mkdir ~/project/source
touch ~/project/source/file.txt
```

Now, let's create a symbolic link to the `file.txt` file:

```bash
ln -s ~/project/source/file.txt ~/project/symlink.txt
```

Example output:

```
labex@ubuntu:~/project$ ls -l
total 0
lrwxrwxrwx 1 labex labex 22 May 24 12:34 symlink.txt -> /home/labex/project/source/file.txt
-rw-r--r-- 1 labex labex  0 May 24 12:34 source/file.txt
```

The `-s` option in the `ln` command creates a symbolic link. The first argument is the target file, and the second argument is the name of the symlink.

You can now access the `file.txt` file through the `symlink.txt` symlink:

```bash
cat ~/project/symlink.txt
```

Example output:

```
labex@ubuntu:~/project$ cat ~/project/symlink.txt
```

As you can see, the `cat` command works the same way as if you were accessing the `file.txt` file directly.

Let's try modifying the target file and see how the symlink behaves:

```bash
echo "Hello, World!" >> ~/project/source/file.txt
cat ~/project/symlink.txt
```

Example output:

```
labex@ubuntu:~/project$ echo "Hello, World!" >> ~/project/source/file.txt
labex@ubuntu:~/project$ cat ~/project/symlink.txt
Hello, World!
```

The content of the symlink reflects the changes made to the target file.

Now, let's delete the target file and see what happens to the symlink:

```bash
rm ~/project/source/file.txt
ls -l ~/project/symlink.txt
```

Example output:

```
labex@ubuntu:~/project$ rm ~/project/source/file.txt
labex@ubuntu:~/project$ ls -l ~/project/symlink.txt
lrwxrwxrwx 1 labex labex 22 May 24 12:34 /home/labex/project/symlink.txt -> /home/labex/project/source/file.txt
```

The symlink still exists, but it now points to a non-existent file. Trying to access the symlink will result in an error.

In summary, you have learned how to create and manage symbolic links in Linux, and how they behave when the target file is modified or deleted.
