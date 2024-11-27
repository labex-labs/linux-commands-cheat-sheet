# Introduction to the finger Command

In this step, we will explore the Linux `finger` command, which provides information about system users. The `finger` command is a useful tool for system administrators and users to quickly access user-related details.

To begin, let's start by checking if the `finger` command is installed on our Ubuntu 22.04 Docker container:

```bash
sudo apt-get update
sudo apt-get install -y finger
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  finger
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 45.8 kB of archives.
After this operation, 119 kB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu jammy/main amd64 finger amd64 0.17-14build1 [45.8 kB]
Fetched 45.8 kB in 0s (0 B/s)
Selecting previously unselected package finger.
(Reading database ... 14375 files and directories currently installed.)
Preparing to unpack .../finger_0.17-14build1_amd64.deb ...
Unpacking finger (0.17-14build1) ...
Setting up finger (0.17-14build1) ...
```

The `finger` command is now installed and ready to use. Let's move on to the next step to learn how to display user information with the `finger` command.
