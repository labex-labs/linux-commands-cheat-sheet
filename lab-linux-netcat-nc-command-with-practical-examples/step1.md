# Introduction to Netcat (nc) Command

In this step, you will learn about the Netcat (nc) command, a powerful networking tool that allows you to establish connections, transfer files, and perform various network-related tasks.

Netcat is a command-line utility that can be used as both a client and a server. It is often referred to as the "Swiss Army knife" of networking tools due to its versatility and wide range of applications.

Let's start by installing Netcat on our Ubuntu 22.04 Docker container:

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
```

Now that we have Netcat installed, let's explore some of its basic usage.
