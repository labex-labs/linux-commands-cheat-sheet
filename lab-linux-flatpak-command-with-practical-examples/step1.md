# Introduction to Flatpak

In this step, we will explore the Flatpak package management tool for Linux. Flatpak is a modern and secure way to install and manage applications on your system, providing a consistent and isolated environment for each application.

First, let's install the Flatpak package on our Ubuntu 22.04 system:

```bash
sudo apt install -y flatpak
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  dbus-x11 flatpak-session-helper libdconf-dbus-1-0 libflatpak0 libostree-1-1 libsoup2.4-1 libsoup2.4-dev libsoup2.4-doc libsoup2.4-gir libsoup2.4-gir-dev
  libsoup2.4-lang
Suggested packages:
  libsoup2.4-dev
The following NEW packages will be installed:
  dbus-x11 flatpak flatpak-session-helper libdconf-dbus-1-0 libflatpak0 libostree-1-1 libsoup2.4-1 libsoup2.4-dev libsoup2.4-doc libsoup2.4-gir libsoup2.4-gir-dev
  libsoup2.4-lang
0 upgraded, 11 newly installed, 0 to remove and 0 not upgraded.
Need to get 3,095 kB of archives.
After this operation, 15.5 MB of additional disk space will be used.
Do you want to continue? [Y/n] Y
```

Next, let's enable the Flatpak repository to access a wider range of applications:

```bash
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

Example output:

```
Added remote flathub
```

Now, we can start exploring and installing Flatpak applications. In the next step, we will learn how to manage Flatpak applications on our system.
