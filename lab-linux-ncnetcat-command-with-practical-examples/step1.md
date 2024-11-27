# Introduction to nc (netcat) Command

In this step, you will learn about the nc (netcat) command, a powerful tool for network communication and troubleshooting in Linux. Netcat is a versatile utility that can be used for a variety of tasks, including TCP and UDP server-client communication, port scanning, and file transfers.

First, let's install the netcat package in our Ubuntu 22.04 Docker container:

```bash
sudo apt-get update
sudo apt-get install -y netcat
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  netcat-openbsd
The following NEW packages will be installed:
  netcat netcat-openbsd
0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.
Need to get 54.6 kB of archives.
After this operation, 206 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
...
```

Now that we have netcat installed, let's explore some basic usage examples.
