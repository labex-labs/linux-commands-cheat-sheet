# Lock the Current Terminal Session with vlock

In this step, you will learn how to lock the current terminal session using the `vlock` command.

First, let's ensure that the `vlock` command is installed on your system:

```bash
# Check if vlock is installed
sudo apt-get update
sudo apt-get install -y vlock
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
The following NEW packages will be installed:
  vlock
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
```

Now, let's lock the current terminal session:

```bash
# Lock the current terminal session
sudo vlock
```

Example output:

```
Terminal is now locked.
```

To unlock the terminal, you will need to enter your user password:

```bash
# Unlock the terminal session
sudo vlock -u
```

Example output:

```
Terminal is now unlocked.
```

The `vlock` command effectively locks the current terminal session, preventing anyone from accessing your system while you are away. This is a useful feature for securing your system when you need to step away temporarily.
