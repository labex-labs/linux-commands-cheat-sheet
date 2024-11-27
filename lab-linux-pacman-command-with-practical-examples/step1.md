# Introduction to the pacman Package Manager

In this step, you will learn about the pacman package manager, which is the default package management tool used in Arch Linux and its derivatives, such as Manjaro and Endeavour OS. Pacman is a powerful and efficient package manager that allows you to install, update, and remove software packages on your system.

First, let's check the version of pacman installed on your system:

```bash
pacman --version
```

Example output:

```
pacman version 6.0.2
```

Pacman uses a simple and intuitive command-line interface, with the following basic syntax:

```bash
sudo pacman [options] [action] [package_name(s)]
```

The most common actions with pacman are:

- `-S`: Install a package
- `-Sy`: Synchronize the package database and then install a package
- `-Syu`: Synchronize the package database and then upgrade all installed packages
- `-R`: Remove a package
- `-Ss`: Search for a package in the repositories
- `-Qi`: Display information about an installed package

In the next steps, you will learn how to perform these common actions with pacman.
