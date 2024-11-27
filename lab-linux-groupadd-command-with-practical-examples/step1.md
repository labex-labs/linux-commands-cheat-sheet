# Create a New Group

In this step, you will learn how to create a new group on the Linux system using the `groupadd` command.

First, let's create a new group named "developers" using the following command:

```bash
sudo groupadd developers
```

Example output:

```
No output if the group is created successfully.
```

The `groupadd` command creates a new group with the specified name. In this case, we created a group named "developers".

Next, let's verify that the group was created successfully by listing all the groups on the system:

```bash
sudo groups
```

Example output:

```
labex adm cdrom sudo dip plugdev lxd lpadmin sambashare developers
```

As you can see, the "developers" group is now listed among the groups.
