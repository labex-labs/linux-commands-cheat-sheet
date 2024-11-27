# Installing and Managing Flatpak Applications

In this step, we will learn how to install and manage Flatpak applications on our Ubuntu 22.04 system.

First, let's search for available Flatpak applications on the Flathub repository:

```bash
flatpak search gimp
```

Example output:

```
Name                 Description                       Version Branch        Remotes
org.gimp.GIMP         The GNU Image Manipulation Program 2.10.30 stable       flathub
```

To install the GIMP application as a Flatpak, we can use the following command:

```bash
sudo flatpak install flathub org.gimp.GIMP
```

Example output:

```
Looking for matches...
Found remote 'flathub'
Resolving dependencies...
Downloading metadata...
Downloading: org.gimp.GIMP/x86_64/stable (1/1)
Importing: org.gimp.GIMP/x86_64/stable (1/1)
Installation complete.
```

Now, let's launch the GIMP application using Flatpak:

```bash
flatpak run org.gimp.GIMP
```

This will start the GIMP application in a sandboxed environment provided by Flatpak.

To manage your installed Flatpak applications, you can use the following commands:

List all installed Flatpak applications:

```bash
flatpak list
```

Update all installed Flatpak applications:

```bash
sudo flatpak update
```

Remove a Flatpak application:

```bash
sudo flatpak uninstall org.gimp.GIMP
```

In the next step, we will explore how to customize Flatpak environments to suit your specific needs.
