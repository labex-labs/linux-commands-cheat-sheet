# Identify the User and Group Information Using the id Command

In this step, we will learn how to use the `id` command to identify the user and group information for the current user and other users on the system.

First, let's verify the user and group information for the current user:

```
$ id
uid=1000(labex) gid=1000(labex) groups=1000(labex),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),113(lxd),128(sambashare)
```

This output shows the user ID (UID), group ID (GID), and the supplementary groups that the current user `labex` belongs to.

You can also use the `id` command to display information about other users on the system. For example, to get the user and group information for the user `alice`, you can run:

```
$ id alice
uid=1001(alice) gid=1001(alice) groups=1001(alice),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),113(lxd),128(sambashare)
```

This command will display the UID, GID, and supplementary groups for the user `alice`.

Additionally, you can use the `-u` option to display only the user ID, and the `-g` option to display only the group ID:

```
$ id -u
1000
$ id -g
1000
```

Example output:

```
uid=1000(labex) gid=1000(labex) groups=1000(labex),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),113(lxd),128(sambashare)
```
