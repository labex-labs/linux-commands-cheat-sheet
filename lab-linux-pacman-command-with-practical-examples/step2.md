# Installing and Updating Packages with pacman

In this step, you will learn how to install and update packages using the pacman package manager.

First, let's update the package database to ensure we have the latest package information:

```bash
sudo pacman -Sy
```

Example output:

```
:: Synchronizing package databases...
 core is up to date
 extra is up to date
 community is up to date
 multilib is up to date
```

Now, let's install a new package, for example, the `htop` system monitor tool:

```bash
sudo pacman -S htop
```

Example output:

```
:: There are 4 providers available for htop:
:: Repository extra
   1) htop

Enter a number (default=1): 1
:: Installing htop (3.2.1-1) via pacman
```

To update all installed packages on your system, run:

```bash
sudo pacman -Syu
```

Example output:

```
:: Synchronizing package databases...
 core is up to date
 extra is up to date
 community is up to date
 multilib is up to date
:: Starting full system upgrade...
:: Replace linux with linux-zen? [y/N]
```

This will synchronize the package database and then upgrade all installed packages to their latest versions.
