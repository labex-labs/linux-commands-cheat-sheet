# Changing File Ownership with chown Command

In this step, we will learn how to change the ownership of files and directories using the `chown` command.

First, let's create a new directory and a file inside it:

```bash
mkdir ~/project/dir1
touch ~/project/dir1/file.txt
```

Now, let's check the ownership of the new file:

```bash
ls -l ~/project/dir1/file.txt
```

Example output:

```
-rw-r--r-- 1 labex labex 0 Apr 24 12:34 /home/labex/project/dir1/file.txt
```

We can see that the file is owned by the `labex` user and the `labex` group.

To change the ownership of the file, we can use the `chown` command. The basic syntax is:

```
chown [owner]:[group] [file/directory]
```

Let's change the ownership of the file to a new user and group:

```bash
sudo chown user1:group1 ~/project/dir1/file.txt
ls -l ~/project/dir1/file.txt
```

Example output:

```
-rw-r--r-- 1 user1 group1 0 Apr 24 12:34 /home/labex/project/dir1/file.txt
```

The output shows that the file ownership has been changed to the `user1` user and the `group1` group.

You can also change the ownership recursively, which means applying the change to all files and directories within a directory. For example, to change the ownership of the entire `dir1` directory and its contents:

```bash
sudo chown -R user2:group2 ~/project/dir1
ls -l ~/project/dir1
```

Example output:

```
total 0
-rw-r--r-- 1 user2 group2 0 Apr 24 12:34 file.txt
```

The `-R` option in the `chown` command stands for "recursive", and it ensures that the ownership change is applied to all files and directories within the specified path.

Remember, you need to have the appropriate permissions to change the ownership of files and directories. If you're not the owner or don't have the necessary privileges, you'll need to use the `sudo` command to execute the `chown` operation.
