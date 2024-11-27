# Install aspell Package on Ubuntu 22.04

In this step, we will install the aspell package on the Ubuntu 22.04 Docker container. Aspell is a spell-checking library and program that can be used to correct spelling errors in text files.

First, let's update the package index:

```bash
sudo apt-get update
```

Example output:

```
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Get:2 http://security.ubuntu.com/ubuntu jammy-security InRelease [110 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [114 kB]
Get:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [99.8 kB]
Fetched 324 kB in 1s (324 kB/s)
Reading package lists... Done
```

Next, install the aspell package:

```bash
sudo apt-get install -y aspell
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  aspell-en libaspell15 libpopt0 libsys-hostname-long-perl
Suggested packages:
  aspell-doc
The following NEW packages will be installed:
  aspell aspell-en libaspell15 libpopt0 libsys-hostname-long-perl
0 upgraded, 5 newly installed, 0 to remove and 0 not upgraded.
Need to get 1,232 kB of archives.
After this operation, 4,866 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://archive.ubuntu.com/ubuntu jammy/main amd64 libpopt0 amd64 1.18-2build1 [32.0 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 libaspell15 amd64 0.60.8-1build1 [182 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy/main amd64 aspell amd64 0.60.8-1build1 [159 kB]
Get:4 http://archive.ubuntu.com/ubuntu jammy/main amd64 libsys-hostname-long-perl all 1.5-1 [12.5 kB]
Get:5 http://archive.ubuntu.com/ubuntu jammy/main amd64 aspell-en amd64 2020.12.07-1 [846 kB]
Fetched 1,232 kB in 0s (3,056 kB/s)
Selecting previously unselected package libpopt0:amd64.
(Reading database ... 16022 files and directories currently installed.)
Preparing to unpack .../libpopt0_1.18-2build1_amd64.deb ...
Unpacking libpopt0:amd64 (1.18-2build1) ...
Selecting previously unselected package libaspell15:amd64.
Preparing to unpack .../libaspell15_0.60.8-1build1_amd64.deb ...
Unpacking libaspell15:amd64 (0.60.8-1build1) ...
Selecting previously unselected package aspell.
Preparing to unpack .../aspell_0.60.8-1build1_amd64.deb ...
Unpacking aspell (0.60.8-1build1) ...
Selecting previously unselected package libsys-hostname-long-perl.
Preparing to unpack .../libsys-hostname-long-perl_1.5-1_all.deb ...
Unpacking libsys-hostname-long-perl (1.5-1) ...
Selecting previously unselected package aspell-en.
Preparing to unpack .../aspell-en_2020.12.07-1_amd64.deb ...
Unpacking aspell-en (2020.12.07-1) ...
Setting up libpopt0:amd64 (1.18-2build1) ...
Setting up libaspell15:amd64 (0.60.8-1build1) ...
Setting up libsys-hostname-long-perl (1.5-1) ...
Setting up aspell (0.60.8-1build1) ...
Setting up aspell-en (2020.12.07-1) ...
Processing triggers for man-db (2.10.2-1) ...
Processing triggers for libc-bin (2.35-0ubuntu3) ...
```

The aspell package is now installed on the Ubuntu 22.04 Docker container.
