# Understand the Purpose of the groupdel Command

In this step, we will learn about the purpose of the `groupdel` command in Linux. The `groupdel` command is used to delete a group from the system. This is useful when you no longer need a particular group or when you want to remove a group that is no longer in use.

To understand the purpose of the `groupdel` command, let's first create a test group that we can use for demonstration purposes.

```bash
sudo groupadd testgroup
```

Example output:

```
[sudo] password for labex:
```

Now that we have created the `testgroup` group, we can use the `groupdel` command to delete it.

```bash
sudo groupdel testgroup
```

Example output:

```
[sudo] password for labex:
```

As you can see, the `groupdel` command was used to delete the `testgroup` group from the system.

The `groupdel` command is typically used when you need to remove a group that is no longer needed or when you want to reorganize the group structure on your system. It's important to note that deleting a group will not delete any users that are currently assigned to that group. If you need to remove users from a group, you can use the `gpasswd` or `usermod` commands.
