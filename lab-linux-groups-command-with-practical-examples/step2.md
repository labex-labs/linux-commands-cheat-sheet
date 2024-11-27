# Create and Manage User Groups

In this step, we will learn how to create and manage user groups in Linux using the `groupadd`, `groupmod`, and `groupdel` commands.

First, let's create a new group called "developers":

```bash
sudo groupadd developers
```

Example output:

```
No output, but the group "developers" is now created.
```

To verify the group was created, we can list all the groups again:

```bash
cat /etc/group
```

You should see the "developers" group in the output.

Now, let's add the user "labex" to the "developers" group:

```bash
sudo usermod -a -G developers labex
```

To confirm the user was added to the group, we can check the groups the user belongs to:

```bash
groups labex
```

Example output:

```
labex : labex sudo developers
```

If you need to modify the properties of a group, you can use the `groupmod` command. For example, to change the group name from "developers" to "engineering":

```bash
sudo groupmod -n engineering developers
```

Finally, to delete a group, use the `groupdel` command:

```bash
sudo groupdel engineering
```

Example output:

```
No output, but the "engineering" group is now deleted.
```
