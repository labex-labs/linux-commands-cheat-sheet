# Search and Remove Packages with apt

In this step, we will learn how to search for packages and remove installed packages using the `apt` command.

To search for a package, you can use the `apt search` command. For example, let's search for the "vim" package:

```
sudo apt search vim
```

Example output:

```
Sorting... Done
Full Text Search... Done
vim/jammy 2:8.2.3995-1ubuntu2 amd64
  Vi IMproved - enhanced vi editor
vim-common/jammy 2:8.2.3995-1ubuntu2 amd64
  Vi IMproved - Common files
vim-gtk3/jammy 2:8.2.3995-1ubuntu2 amd64
  Vi IMproved - GTK3 GUI version
vim-nox/jammy 2:8.2.3995-1ubuntu2 amd64
  Vi IMproved - enhanced vi editor (without GUI)
vim-runtime/jammy 2:8.2.3995-1ubuntu2 all
  Vi IMproved - Runtime files
vim-tiny/jammy 2:8.2.3995-1ubuntu2 amd64
  Vi IMproved - enhanced vi editor - compact version
```

The search results show that there are several `vim` packages available, including the full `vim` package, as well as more specialized variants like `vim-gtk3` and `vim-tiny`.

To remove an installed package, you can use the `apt remove` command. For example, let's remove the `tree` package that we installed in the previous step:

```
sudo apt remove tree
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following packages will be REMOVED:
  tree
0 upgraded, 0 newly installed, 1 to remove and 0 not upgraded.
After this operation, 184 kB of disk space will be freed.
Do you want to continue? [Y/n] Y
(Reading database ... 116032 files and directories currently installed.)
Removing tree (1.8.0-1build1) ...
```

If you want to remove a package and its associated configuration files, you can use the `apt purge` command instead of `apt remove`:

```
sudo apt purge tree
```

This will remove the package and its configuration files, leaving no trace of the package on the system.

In the next steps, we will explore more advanced package management tasks using the `apt` command.
