# Add User to Existing Groups

In this step, we will learn how to add a user to existing groups on the Linux system.

First, let's switch back to the `labex` user, who has sudo privileges:

```bash
exit
```

Now, let's list the existing groups on the system:

```bash
sudo grouplist
```

Example output:

```
labex
newuser
sudo
```

We can see that there are three groups: `labex`, `newuser`, and `sudo`.

Now, let's add the `newuser` account to the `sudo` group, which will allow the user to execute commands with sudo privileges:

```bash
sudo usermod -a -G sudo newuser
```

The `-a` option adds the user to the specified groups, and the `-G` option specifies the groups to add the user to.

To verify that the `newuser` account has been added to the `sudo` group, we can use the `id` command:

```bash
id newuser
```

Example output:

```
uid=1001(newuser) gid=1001(newuser) groups=1001(newuser),27(sudo)
```

You can see that the `newuser` account is now a member of the `sudo` group.
