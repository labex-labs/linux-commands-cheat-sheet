# Install the spell Command on Ubuntu 22.04

In this step, we will install the `spell` command on our Ubuntu 22.04 system.

First, let's update the package lists and install the `spell` package:

```bash
sudo apt-get update
sudo apt-get install -y spell
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following NEW packages will be installed:
  spell
0 upgraded, 1 newly installed, 0 to remove and 0 not upgraded.
Need to get 0 B/38.6 kB of archives.
After this operation, 140 kB of additional disk space will be used.
Selecting previously unselected package: spell
(Reading database ... 14525 files and directories currently installed.)
Preparing to unpack .../spell_1.1-6_amd64.deb ...
Unpacking spell (1.1-6) ...
Setting up spell (1.1-6) ...
```

The installation process should complete successfully, and the `spell` command will now be available on your system.

Let's verify that the `spell` command is installed and working correctly:

```bash
spell --version
```

Example output:

```
spell 1.1
```

The output shows the version of the installed `spell` command, confirming that it is now available on your Ubuntu 22.04 system.
