# Installing and Updating Snap Packages

In this step, we will learn how to install and update Snap packages on your Ubuntu 22.04 Docker container.

First, let's install a Snap package. We'll use the popular "vlc" media player as an example:

```bash
sudo snap install vlc
```

Example output:

```
vlc 3.0.17.3 from 'videolan' installed
```

This command installs the latest version of the VLC media player as a Snap package.

To update an installed Snap package, you can use the following command:

```bash
sudo snap refresh vlc
```

Example output:

```
vlc refreshed
```

This command checks for and installs any available updates for the VLC Snap package.

You can also update all installed Snap packages at once:

```bash
sudo snap refresh
```

Example output:

```
All snaps up to date.
```

This command updates all installed Snap packages to their latest versions.

To remove a Snap package, you can use the following command:

```bash
sudo snap remove vlc
```

Example output:

```
vlc removed
```

This command uninstalls the VLC Snap package from your system.

Now that you know how to install, update, and remove Snap packages, let's move on to the next step, where we will explore more advanced Snap package management commands.
