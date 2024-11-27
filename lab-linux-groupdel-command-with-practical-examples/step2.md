# Create Test Groups for Demonstration

In this step, we will create several test groups that we can use for demonstration purposes throughout the lab.

First, let's create three new groups:

```bash
sudo groupadd group1
sudo groupadd group2
sudo groupadd group3
```

Example output:

```
[sudo] password for labex:
```

Now, let's verify that the groups were created successfully:

```bash
cat /etc/group | grep -E 'group1|group2|group3'
```

Example output:

```
group1:x:1001:
group2:x:1002:
group3:x:1003:
```

As you can see, the `group1`, `group2`, and `group3` groups have been created successfully.

These test groups will be used in the following steps to demonstrate the usage of the `groupdel` command.
