# Change User's Primary Group

In this step, we will learn how to change a user's primary group using the `usermod` command.

The primary group is the default group that a user belongs to. When a user creates a new file or directory, the file/directory will be owned by the user and the user's primary group.

Let's start by creating a new group called "developers":

```bash
sudo groupadd developers
```

Example output:

```
No output
```

Now, let's add the `labex` user to the "developers" group as the primary group:

```bash
sudo usermod -g developers labex
```

Example output:

```
No changes
```

The `-g` option sets the user's primary group to "developers".

To verify the change, we can check the user's group membership:

```bash
id labex
```

Example output:

```
uid=1000(labex) gid=1001(developers) groups=1001(developers)
```

As you can see, the user's primary group is now "developers".

Next, let's create a new file and check the ownership:

```bash
touch ~/project/test.txt
ls -l ~/project/test.txt
```

Example output:

```
-rw-r--r-- 1 labex developers 0 May 15 12:34 /home/labex/project/test.txt
```

The file is owned by the `labex` user and the "developers" group, as expected.
