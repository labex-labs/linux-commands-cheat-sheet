# Installing Packages Using yum

In this step, we will learn how to install new packages using the yum package manager.

First, let's search for a package we want to install. For example, we'll search for the "tree" package:

```bash
yum search tree
```

Example output:

```
Loaded plugins: amazon-id, rhui-lb, search-disabled-repos
============================== N/S Matched: tree ===============================
tree.x86_64 : Display a directory tree, in color
```

The output shows that the "tree" package is available. Now, let's install it:

```bash
sudo yum install -y tree
```

Example output:

```
Loaded plugins: amazon-id, rhui-lb, search-disabled-repos
Resolving Dependencies
--> Running transaction check
---> Package tree.x86_64 0:1.8.0-10.el8 will be installed
--> Finished Dependency Resolution

Dependencies Resolved

=============================================================================
 Package        Arch           Version                 Repository      Size
=============================================================================
Installing:
 tree           x86_64         1.8.0-10.el8            AppStream       55 k

Transaction Summary
=============================================================================
Install  1 Package

Total download size: 55 k
Installed size: 94 k
Downloading Packages:
tree-1.8.0-10.el8.x86_64.rpm                         55 kB/s | 55 kB     00:01
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Preparing        :                                                    1/1
  Installing       : tree-1.8.0-10.el8.x86_64                           1/1
  Verifying        : tree-1.8.0-10.el8.x86_64                           1/1

Installed:
  tree-1.8.0-10.el8.x86_64

Complete!
```

The `yum install` command downloads and installs the specified package, along with any required dependencies.

Let's verify that the "tree" package is now installed:

```bash
tree --version
```

Example output:

```
tree v1.8.0 (c) 1996 - 2018 by Steve Baker, Thomas Moore, Francesc Rocher, Florian Sesser, Kyosuke Tokoro
```

Great! We have successfully installed the "tree" package using yum.
