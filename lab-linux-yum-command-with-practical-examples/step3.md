# Updating and Removing Packages with yum

In this step, we will learn how to update and remove packages using the yum package manager.

First, let's check for any available updates for the packages installed on our system:

```bash
sudo yum check-update
```

Example output:

```
Loaded plugins: amazon-id, rhui-lb, search-disabled-repos
There are no packages to update
```

The output shows that there are no available updates for the installed packages.

Now, let's update a specific package. We'll use the "tree" package as an example:

```bash
sudo yum update tree
```

Example output:

```
Loaded plugins: amazon-id, rhui-lb, search-disabled-repos
Resolving Dependencies
--> Running transaction check
---> Package tree.x86_64 0:1.8.0-10.el8 will be updated
---> Package tree.x86_64 0:1.8.0-12.el8 will be an update
--> Finished Dependency Resolution

Dependencies Resolved

=============================================================================
 Package        Arch           Version                 Repository      Size
=============================================================================
Updating:
 tree           x86_64         1.8.0-12.el8            AppStream       55 k

Transaction Summary
=============================================================================
Upgrade  1 Package

Total download size: 55 k
Downloading Packages:
tree-1.8.0-12.el8.x86_64.rpm                         55 kB/s | 55 kB     00:01
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Preparing        :                                                    1/1
  Updating         : tree-1.8.0-12.el8.x86_64                           1/1
  Cleanup          : tree-1.8.0-10.el8.x86_64                           1/1
  Verifying        : tree-1.8.0-12.el8.x86_64                           1/1

Updated:
  tree-1.8.0-12.el8.x86_64

Complete!
```

The `yum update` command updates the specified package to the latest available version.

Finally, let's remove the "tree" package:

```bash
sudo yum remove tree
```

Example output:

```
Loaded plugins: amazon-id, rhui-lb, search-disabled-repos
Resolving Dependencies
--> Running transaction check
---> Package tree.x86_64 0:1.8.0-12.el8 will be erased
--> Finished Dependency Resolution

Dependencies Resolved

=============================================================================
 Package        Arch           Version                 Repository      Size
=============================================================================
Removing:
 tree           x86_64         1.8.0-12.el8            @AppStream      55 k

Transaction Summary
=============================================================================
Remove  1 Package

Installed size: 94 k
Downloading Packages:
Running transaction check
Running transaction test
Transaction test succeeded
Running transaction
  Preparing        :                                                    1/1
  Erasing          : tree-1.8.0-12.el8.x86_64                           1/1
  Verifying        : tree-1.8.0-12.el8.x86_64                           1/1

Removed:
  tree-1.8.0-12.el8.x86_64

Complete!
```

The `yum remove` command removes the specified package from the system.
