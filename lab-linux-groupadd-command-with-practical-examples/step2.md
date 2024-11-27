# Add Users to a Group

In this step, you will learn how to add users to a group on the Linux system.

First, let's create a new user named "john" using the following command:

```bash
sudo useradd -m john
```

Example output:

```
No output if the user is created successfully.
```

Now, let's add the "john" user to the "developers" group using the `usermod` command:

```bash
sudo usermod -a -G developers john
```

Example output:

```
No output if the user is added to the group successfully.
```

The `usermod` command is used to modify user account information. The `-a` option appends the user to the supplementary groups, and the `-G` option specifies the groups to which the user should be added.

To verify that the "john" user has been added to the "developers" group, we can use the `groups` command:

```bash
groups john
```

Example output:

```
john : john developers
```

As you can see, the "john" user is now a member of the "developers" group.
