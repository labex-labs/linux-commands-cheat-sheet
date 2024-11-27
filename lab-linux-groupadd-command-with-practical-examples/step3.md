# Modify Group Properties

In this step, you will learn how to modify the properties of a group on the Linux system.

Let's start by creating a new group named "finance" using the `groupadd` command:

```bash
sudo groupadd finance
```

Example output:

```
No output if the group is created successfully.
```

Now, let's modify the group ID (GID) of the "finance" group using the `groupmod` command:

```bash
sudo groupmod -g 1050 finance
```

Example output:

```
No output if the group properties are modified successfully.
```

The `groupmod` command is used to modify the properties of a group. In this case, we're changing the group ID (GID) of the "finance" group to 1050.

To verify the changes, let's list the group information using the `getent` command:

```bash
getent group finance
```

Example output:

```
finance:x:1050:
```

As you can see, the GID of the "finance" group has been changed to 1050.
