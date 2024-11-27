# Preserve File Attributes and Timestamps with the cp Command

In this step, you will learn how to preserve file attributes and timestamps when copying files using the `cp` command.

By default, the `cp` command will copy the file contents, but it may not preserve the original file attributes and timestamps. To preserve these, you can use the `-p` (preserve) option.

Let's create a sample file with specific attributes and timestamps:

```bash
touch -a -m -t 202304010000 ~/project/sample.txt
```

This will create the `sample.txt` file with the access and modification times set to April 1, 2023, 00:00.

Now, let's copy the file while preserving its attributes and timestamps:

```bash
cp -p ~/project/sample.txt ~/project/copy_of_sample.txt
```

Example output:

```

```

To verify that the attributes and timestamps were preserved, you can use the `ls -l` command:

```bash
ls -l ~/project/sample.txt ~/project/copy_of_sample.txt
```

Example output:

```
-rw-r--r-- 1 labex labex 0 Apr  1 00:00 ~/project/sample.txt
-rw-r--r-- 1 labex labex 0 Apr  1 00:00 ~/project/copy_of_sample.txt
```

As you can see, the access and modification times of the copied file are the same as the original file.

The `-p` option preserves the following attributes:

- Ownership
- Permissions
- Timestamps (access, modification, and change)
- SELinux security context (if present)

This is useful when you need to maintain the original file properties during the copy operation.

In the next step, we will summarize what you have learned about the `cp` command.
