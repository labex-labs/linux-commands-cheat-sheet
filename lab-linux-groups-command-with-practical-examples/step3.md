# Assign and Remove Users from Groups

In this final step, we will learn how to assign and remove users from groups in Linux.

First, let's create a new group called "testers":

```bash
sudo groupadd testers
```

Now, let's add the user "labex" to the "testers" group:

```bash
sudo usermod -a -G testers labex
```

To verify the user was added to the group, we can check the groups the user belongs to:

```bash
groups labex
```

Example output:

```
labex : labex sudo developers testers
```

If you need to remove a user from a group, you can use the `gpasswd` command:

```bash
sudo gpasswd -d labex testers
```

Let's verify the user has been removed from the "testers" group:

```bash
groups labex
```

Example output:

```
labex : labex sudo developers
```

You can also use the `usermod` command to remove a user from a group:

```bash
sudo usermod -G labex,developers labex
```

This will remove the user "labex" from all groups except "labex" and "developers".
