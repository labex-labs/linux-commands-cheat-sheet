# Add a User to a Group Using gpasswd

In this step, we will learn how to add a user to a group using the `gpasswd` command.

First, let's create a new group called "developers":

```
$ sudo groupadd developers
```

Now, let's add the user "labex" to the "developers" group:

```
$ sudo gpasswd -a labex developers
Adding user labex to group developers
```

Example output:

```
Adding user labex to group developers
```

To verify that the user has been added to the group, we can use the `groups` command:

```
$ groups labex
labex : labex developers
```

The output shows that the user "labex" is now a member of the "developers" group.
