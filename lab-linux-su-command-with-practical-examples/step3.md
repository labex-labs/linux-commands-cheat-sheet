# Manage Privileges with su Command

In this step, you will learn how to use the `su` command to manage privileges and execute commands with elevated permissions.

As you've learned in the previous steps, the `su` command allows you to switch to a different user account. When you switch to the `root` user account, you have the highest level of privileges in the system, which means you can perform any operation.

Let's try executing a command that requires elevated privileges, such as installing a package:

```bash
sudo su
apt-get update
apt-get install -y htop
```

Example output:

```
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Get:2 http://security.ubuntu.com/ubuntu jammy-security InRelease [110 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [114 kB]
...
Setting up htop (3.0.5-7ubuntu1) ...
```

In the example above, we first switched to the `root` user using `sudo su`, then we were able to execute the `apt-get` commands to update the package lists and install the `htop` package.

If you're not the `root` user, you can still execute commands with elevated privileges using the `sudo` command. For example:

```bash
sudo apt-get update
sudo apt-get install -y htop
```

The `sudo` command allows you to execute a command with the privileges of the `root` user, without actually switching to the `root` user account.

It's important to use the `sudo` command carefully, as it grants elevated privileges that can potentially be misused or cause unintended consequences if not used properly.
