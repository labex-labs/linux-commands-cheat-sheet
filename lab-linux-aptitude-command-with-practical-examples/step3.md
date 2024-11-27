# Install, Upgrade, and Remove Packages using aptitude

In this step, we will learn how to use aptitude to install, upgrade, and remove packages.

First, let's install a new package using the `aptitude install` command. We'll install the "tree" package, which is a command-line utility that displays the directory structure in a tree-like format:

```bash
sudo aptitude install tree
```

Example output:

```
The following NEW packages will be installed:
  tree
0 packages upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 44.2 kB of archives. After this operation, 123 kB of additional disk space will be used.
Do you want to continue? [Y/n/?] y
Get:1 http://archive.ubuntu.com/ubuntu jammy/main amd64 tree amd64 1.8.0-1build1 [44.2 kB]
Fetched 44.2 kB in 0s (89.3 kB/s)
Selecting previously unselected package tree.
(Reading database ... 18291 files and directories currently installed.)
Preparing to unpack .../tree_1.8.0-1build1_amd64.deb ...
Unpacking tree (1.8.0-1build1) ...
Setting up tree (1.8.0-1build1) ...
Processing triggers for man-db (2.10.2-1) ...
```

Next, let's upgrade a package using the `aptitude safe-upgrade` command. We'll upgrade the "vim" package to the latest version:

```bash
sudo aptitude safe-upgrade vim
```

Example output:

```
The following packages will be upgraded:
  vim vim-common vim-runtime
3 packages upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
Need to get 6,483 kB of archives. After this operation, 0 B of additional disk space will be used.
Do you want to continue? [Y/n/?] y
Get:1 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 vim-common amd64 2:8.2.3995-1ubuntu2.1 [2,138 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 vim-runtime all 2:8.2.3995-1ubuntu2.1 [4,178 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 vim amd64 2:8.2.3995-1ubuntu2.1 [167 kB]
Fetched 6,483 kB in 1s (6,483 kB/s)
(Reading database ... 18292 files and directories currently installed.)
Preparing to unpack .../vim-common_2%3a8.2.3995-1ubuntu2.1_amd64.deb ...
Unpacking vim-common (2:8.2.3995-1ubuntu2.1) over (2:8.2.3995-1ubuntu2) ...
Preparing to unpack .../vim-runtime_2%3a8.2.3995-1ubuntu2.1_all.deb ...
Unpacking vim-runtime (2:8.2.3995-1ubuntu2.1) over (2:8.2.3995-1ubuntu2) ...
Preparing to unpack .../vim_2%3a8.2.3995-1ubuntu2.1_amd64.deb ...
Unpacking vim (2:8.2.3995-1ubuntu2.1) over (2:8.2.3995-1ubuntu2) ...
Setting up vim-common (2:8.2.3995-1ubuntu2.1) ...
Setting up vim-runtime (2:8.2.3995-1ubuntu2.1) ...
Setting up vim (2:8.2.3995-1ubuntu2.1) ...
Processing triggers for man-db (2.10.2-1) ...
```

Finally, let's remove the "tree" package using the `aptitude remove` command:

```bash
sudo aptitude remove tree
```

Example output:

```
The following packages will be REMOVED:
  tree
0 packages upgraded, 0 newly installed, 1 to remove and 0 not upgraded.
Need to get 0 B of archives. After this operation, 123 kB disk space will be freed.
Do you want to continue? [Y/n/?] y
(Reading database ... 18292 files and directories currently installed.)
Removing tree (1.8.0-1build1) ...
Processing triggers for man-db (2.10.2-1) ...
```
