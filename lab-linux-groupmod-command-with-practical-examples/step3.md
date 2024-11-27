# Change a Group's GID Using the groupmod Command

In this step, we will learn how to change the Group ID (GID) of an existing group using the `groupmod` command.

First, let's check the current GID of the "developers" group:

```
getent group developers
```

Example output:

```
developers:x:1001:
```

The output shows that the current GID of the "developers" group is 1001.

Now, let's use the `groupmod` command with the `-g` (or `--gid`) option to change the GID of the "developers" group to 2000:

```
sudo groupmod -g 2000 developers
```

Example output:

```
groupmod: group 'developers' changed
```

To verify the GID change, let's check the group information again:

```
getent group developers
```

Example output:

```
developers:x:2000:
```

The output confirms that the GID of the "developers" group has been successfully changed to 2000.
