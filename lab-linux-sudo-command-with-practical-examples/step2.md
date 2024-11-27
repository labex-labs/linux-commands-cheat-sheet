# Manage User Permissions with sudo

In this step, you will learn how to manage user permissions using the `sudo` command. Understanding user permissions is crucial for maintaining the security and integrity of your Linux system.

Let's start by creating a new user account:

```bash
sudo useradd -m newuser
```

Now, let's verify the new user's permissions:

```bash
sudo id newuser
```

Example output:

```
uid=1001(newuser) gid=1001(newuser) groups=1001(newuser)
```

As you can see, the new user `newuser` has been created, but they do not have any special permissions. To grant the `newuser` access to execute commands with elevated privileges, we need to add them to the `sudo` group.

```bash
sudo usermod -aG sudo newuser
```

Now, let's verify the user's permissions again:

```bash
sudo id newuser
```

Example output:

```
uid=1001(newuser) gid=1001(newuser) groups=1001(newuser),27(sudo)
```

The output shows that the `newuser` has been added to the `sudo` group, which means they can now execute commands with elevated privileges using the `sudo` command.

Let's test the new user's permissions by having them run a command that requires sudo access:

```bash
sudo -u newuser apt-get update
```

Example output:

```
[sudo] password for newuser:
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Get:2 http://security.ubuntu.com/ubuntu jammy-security InRelease [110 kB]
...
```

Notice that the `sudo` command prompts the `newuser` for their password before executing the command. This is a security measure to ensure that only authorized users can perform actions with elevated privileges.

In the next step, you will learn how to secure your system with proper `sudo` usage.
