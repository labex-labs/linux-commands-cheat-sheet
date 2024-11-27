# Introduction to Snap Packages

In this step, we will introduce the Snap package manager and explore its key features. Snap is a modern, cross-platform, and secure package management system that allows you to easily install, update, and manage applications on your Linux system.

First, let's check the version of Snap installed on your system:

```bash
snap version
```

Example output:

```
snap    2.57.4
snapd   2.57.4
series  16
ubuntu  22.04
kernel  5.15.0-1023-aws
```

As you can see, the Snap version installed on your Ubuntu 22.04 Docker container is 2.57.4.

Snap packages are self-contained applications that include all the necessary dependencies, libraries, and runtime environments. This makes them easy to install, update, and manage, as they are isolated from the underlying system.

To list all the Snap packages currently installed on your system, run the following command:

```bash
sudo snap list
```

Example output:

```
Name       Version    Rev   Tracking       Publisher   Notes
core20     20220719   1518  latest/stable  canonical✓  core
gnome-3-38-2004  0+git.3036c14  20  latest/stable  canonical✓  -
gtk-common-themes  0.1-36-gc4e3006  1506  latest/stable  canonical✓  -
snap-store 42.3-48-g1b0d8d7  590  latest/stable  canonical✓  classic
snapd      2.57.4     8310  latest/stable  canonical✓  snapd
```

This command lists all the Snap packages installed on your system, including their names, versions, revisions, tracking channels, publishers, and notes.

Now that you have a basic understanding of Snap packages, let's move on to the next step, where we will learn how to install and update Snap packages.
