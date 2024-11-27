# Install and Update Packages Using apt-get

In this step, you will learn how to install and update packages using the `apt-get` command.

First, let's install a new package, `tree`, which is a command-line tool that displays the directory structure in a tree-like format.

```
sudo apt-get install tree
Example output:
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  tree
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 0 B/56.0 kB of archives.
After this operation, 152 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
```

Now, let's update all the installed packages on your system to their latest versions.

```
sudo apt-get upgrade
Example output:
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Calculating upgrade... Done
The following packages will be upgraded:
  base-files base-passwd bash bsdutils coreutils dash dbus dbus-user-session dbus-x11 ...
57 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
Need to get 29.1 MB of archives.
After this operation, 3,772 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
```

In the example above, we first installed the `tree` package, and then we upgraded all the installed packages on the system to their latest versions.
