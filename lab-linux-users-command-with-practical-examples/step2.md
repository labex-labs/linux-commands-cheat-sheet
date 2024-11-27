# Understand User Privileges and Permissions

In this step, you will learn about user privileges and permissions in Linux. We will cover how to view and manage user permissions, as well as how to grant and revoke privileges.

First, let's create a new user and a new group:

```bash
sudo useradd -m -s /bin/bash newuser
sudo groupadd devgroup
```

Next, let's add the `newuser` to the `devgroup` group:

```bash
sudo usermod -a -G devgroup newuser
```

To verify the user and group memberships, we can use the `id` command:

```bash
id newuser
```

Example output:

```
uid=1001(newuser) gid=1001(newuser) groups=1001(newuser),1002(devgroup)
```

We can see that `newuser` is now a member of the `devgroup` group.

Now, let's create a new directory and set permissions on it:

```bash
sudo mkdir /opt/myapp
sudo chown newuser:devgroup /opt/myapp
sudo chmod 770 /opt/myapp
```

The `chown` command sets the owner and group of the directory to `newuser` and `devgroup`, respectively. The `chmod` command sets the permissions to `rwxrwx---`, which means the owner and group members can read, write, and execute, but others have no access.

To verify the permissions, we can use the `ls -l` command:

```bash
ls -l /opt
```

Example output:

```
total 4
drwxrwx--- 2 newuser devgroup 4096 Apr 17 12:34 myapp
```

Now, let's try to access the directory as a different user:

```bash
sudo -u otheruser ls -l /opt/myapp
```

Example output:

```
ls: cannot open directory '/opt/myapp': Permission denied
```

As you can see, the `otheruser` is not able to access the `myapp` directory because they are not part of the `devgroup` group.
