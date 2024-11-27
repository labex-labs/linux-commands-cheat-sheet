# Modify File Attributes Using chattr

In this step, we will explore how to use the `chattr` command to modify file attributes in more detail.

First, let's create a sample file to work with:

```
touch ~/project/file.txt
```

Now, let's set the immutable attribute on the file:

```
sudo chattr +i ~/project/file.txt
```

Example output:

```
$ sudo chattr +i ~/project/file.txt
```

With the immutable attribute set, the file cannot be deleted, renamed, or modified, even by the root user. Let's try to delete the file:

```
rm ~/project/file.txt
```

Example output:

```
$ rm ~/project/file.txt
rm: cannot remove '~/project/file.txt': Operation not permitted
```

As you can see, the `rm` command failed to delete the file due to the immutable attribute.

Next, let's set the append-only attribute on a directory:

```
sudo chattr +a ~/project/logs
```

Example output:

```
$ sudo chattr +a ~/project/logs
```

With the append-only attribute set, files in the `~/project/logs` directory can only be appended to, not modified or deleted. Let's try to create a new file and append some text to it:

```
echo "New log entry" >> ~/project/logs/log.txt
```

Example output:

```
$ echo "New log entry" >> ~/project/logs/log.txt
```

However, if we try to modify the file, the operation will be denied:

```
echo "Modifying log" > ~/project/logs/log.txt
```

Example output:

```
$ echo "Modifying log" > ~/project/logs/log.txt
-bash: ~/project/logs/log.txt: Operation not permitted
```

In this step, you learned how to use the `chattr` command to set the immutable and append-only attributes on files and directories, respectively. These attributes can be useful for protecting important files and logs from accidental or unauthorized modifications.
