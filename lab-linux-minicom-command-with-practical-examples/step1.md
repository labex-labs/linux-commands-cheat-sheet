# Install and Configure minicom on Ubuntu 22.04

In this step, we will install and configure the minicom terminal emulator on the Ubuntu 22.04 Docker container.

First, let's update the package index and install the minicom package:

```bash
sudo apt-get update
sudo apt-get install -y minicom
```

Example output:

```
Get:1 http://archive.ubuntu.com/ubuntu jammy InRelease [270 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [119 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy-security InRelease [110 kB]
...
Fetched 1,546 kB in 1s (1,546 kB/s)
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libuucp1 lrzsz
Suggested packages:
  cu
The following NEW packages will be installed:
  libuucp1 lrzsz minicom
0 upgraded, 3 newly installed, 0 to remove and 0 not upgraded.
Need to get 287 kB of archives.
After this operation, 1,036 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
...
```

Next, let's configure the minicom settings. Run the following command to open the minicom configuration:

```bash
sudo minicom -s
```

This will open the minicom configuration menu. Use the arrow keys to navigate and select the options you want to configure, such as:

- Serial port setup
- Modem and dialing
- Screen and keyboard
- Save setup as dfl

Once you have made the desired changes, select "Exit from minicom" to save the configuration and exit.

Now, you can start minicom by running the following command:

```bash
sudo minicom
```

This will launch the minicom terminal emulator, and you can start using it to connect to serial devices.
