# Delete Groups Using the groupdel Command

In this step, we will use the `groupdel` command to delete the test groups we created in the previous step.

First, let's verify that the test groups still exist:

```bash
cat /etc/group | grep -E 'group1|group2|group3'
```

Example output:

```
group1:x:1001:
group2:x:1002:
group3:x:1003:
```

Now, let's delete the `group1` and `group2` groups using the `groupdel` command:

```bash
sudo groupdel group1
sudo groupdel group2
```

Example output:

```
[sudo] password for labex:
```

To verify that the groups have been deleted, let's check the `/etc/group` file again:

```bash
cat /etc/group | grep -E 'group1|group2|group3'
```

Example output:

```
group3:x:1003:
```

As you can see, the `group1` and `group2` groups have been successfully deleted, while the `group3` group still remains.

The `groupdel` command is a simple and effective way to remove groups from your system when they are no longer needed. Remember that deleting a group will not delete any users that are currently assigned to that group, so you may need to take additional steps to remove users from the group if necessary.
