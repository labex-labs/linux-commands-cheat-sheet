# Install arpwatch on Ubuntu 22.04

In this step, you will learn how to install the arpwatch package on your Ubuntu 22.04 system.

First, let's update the package index:

```bash
sudo apt-get update
```

Next, install the arpwatch package:

```bash
sudo apt-get install -y arpwatch
```

This will install the arpwatch package and its dependencies on your system.

Once the installation is complete, you can start the arpwatch service:

```bash
sudo arpwatch
```

This will start the arpwatch daemon and begin monitoring your network for ARP table changes.

Example output:

```
arpwatch: listening on eth0
```

You can also check the status of the arpwatch service:

```bash
sudo systemctl status arpwatch
```

This will show the current status of the arpwatch service.
