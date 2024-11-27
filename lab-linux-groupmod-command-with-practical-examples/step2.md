# Modify a Group's Name Using the groupmod Command

In this step, we will learn how to modify the name of an existing group using the `groupmod` command.

First, let's create a new group named "devops" on our system:

```
sudo groupadd devops
```

Now, let's use the `groupmod` command to change the name of the "devops" group to "developers":

```
sudo groupmod -n developers devops
```

Example output:

```
groupmod: group 'devops' changed to 'developers'
```

As you can see, the `groupmod` command with the `-n` (or `--new-name`) option allows us to change the name of the group from "devops" to "developers".

To verify the group name change, we can use the `getent` command:

```
getent group developers
```

Example output:

```
developers:x:1001:
```

The output confirms that the group name has been successfully changed to "developers".
