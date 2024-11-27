# Installing and Updating Packages with zypper

In this step, we will learn how to use zypper to install and update packages on the system.

First, let's install a new package using the `zypper install` command. We'll install the `htop` package, which is a popular system monitoring tool:

```
sudo zypper install htop
```

Example output:

```
Loading repository data...
Reading installed packages...
Resolving package dependencies...

The following NEW package is going to be installed:
  htop

1 new package to install.
Overall download size: 105.0 KiB. After the operation, additional 326.0 KiB will be used.
Continue? [y/n/? shows all options] (y): y
Retrieving package htop-3.0.5-2.1.x86_64 (1/1), 105.0 KiB (326.0 KiB unpacked)
Installing: htop-3.0.5-2.1.x86_64 [done]
```

Now, let's verify that the `htop` package has been successfully installed:

```
which htop
```

Example output:

```
/usr/bin/htop
```

Next, let's update all the installed packages on the system using the `zypper update` command:

```
sudo zypper update
```

Example output:

```
Loading repository data...
Reading installed packages...
Resolving package dependencies...

The following packages are going to be upgraded:
  bash coreutils glibc grep gzip hostname iproute2 libacl1 libattr1 libcap2 libgcc_s1 libselinux1 libstdc++6 libudev1 libz1 login ncurses-utils openssl pam readline sed systemd systemd-sysvinit tar util-linux zlib

16 packages to upgrade.
Overall download size: 6.9 MiB. After the operation, additional 1.1 MiB will be used.
Continue? [y/n/? shows all options] (y): y
Retrieving package bash-5.1.16-3.1.x86_64 (1/16), 1.4 MiB (3.0 MiB unpacked)
Retrieving package coreutils-8.32-4.1.x86_64 (2/16), 1.2 MiB (3.8 MiB unpacked)
...
```

The `zypper update` command will update all installed packages to their latest versions.
