# Install Linux Packages Using Snap

In this step, you will learn how to install Linux packages using the Snap package manager. Snap is a containerized software packaging and deployment system developed by Canonical for Ubuntu and other Linux distributions.

First, let's ensure that the Snap service is running:

```bash
sudo systemctl status snapd
```

Example output:

```
● snapd.service - Snap Daemon
     Loaded: loaded (/lib/systemd/system/snapd.service; enabled; vendor preset: enabled)
     Active: active (running) since Fri 2023-04-21 07:15:09 UTC; 1min 30s ago
       Docs: https://snapcraft.io
   Main PID: 1216 (snapd)
      Tasks: 10 (limit: 4915)
     Memory: 33.2M
        CPU: 375ms
     CGroup: /system.slice/snapd.service
             └─1216 /usr/lib/snapd/snapd

Apr 21 07:15:09 lab-ubuntu-22.04 systemd[1]: Started Snap Daemon.
```

Now, let's install the `vlc` package using the Snap command:

```bash
sudo snap install vlc
```

Example output:

```
vlc 3.0.18 from 'videolan' installed
```

The `snap install` command downloads and installs the specified Snap package on your system.

You can also remove packages using the `snap remove` command:

```bash
sudo snap remove vlc
```

Example output:

```
vlc removed
```

The `snap remove` command removes the specified Snap package from your system.
