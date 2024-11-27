# Understand the Purpose and Syntax of the groupmod Command

In this step, we will explore the purpose and syntax of the `groupmod` command in Linux. The `groupmod` command is used to modify the attributes of an existing group, such as the group name and Group ID (GID).

To understand the syntax of the `groupmod` command, let's run the following command:

```
sudo groupmod --help
```

Example output:

```
Usage: groupmod [options] GROUP
  -g, --gid GID       change the group ID to GID
  -n, --new-name NEW_NAME   change the name to NEW_NAME
  -o, --non-unique    allow to use a duplicate (non-unique) GID
  -p, --password PASSWORD   the encrypted password of the group
  -R, --root CHROOT_DIR     directory to chroot into
  -P, --prefix PREFIX_DIR   prefix directory where are located the /etc/* files
  -h, --help          display this help message and exit
```

From the output, we can see that the basic syntax of the `groupmod` command is:

```
groupmod [options] GROUP
```

The most common options used with `groupmod` are:

- `-g, --gid GID`: Change the group ID (GID) of the specified group to the given GID.
- `-n, --new-name NEW_NAME`: Change the name of the specified group to the new name.

In the next steps, we will explore how to use these options to modify a group's name and GID.
