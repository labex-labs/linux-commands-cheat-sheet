# Remove a User from a Group Using gpasswd

In this step, we will learn how to remove a user from a group using the `gpasswd` command.

Let's first verify that the user "labex" is a member of the "developers" group:

```
$ groups labex
labex : labex developers
```

Now, let's remove the user "labex" from the "developers" group:

```
$ sudo gpasswd -d labex developers
Removing user labex from group developers
```

Example output:

```
Removing user labex from group developers
```

To verify that the user has been removed from the group, we can use the `groups` command again:

```
$ groups labex
labex : labex
```

The output shows that the user "labex" is no longer a member of the "developers" group.
