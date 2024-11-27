# Install Subversion (SVN) on Ubuntu 22.04

In this step, we will install the Subversion (SVN) version control system on the Ubuntu 22.04 environment.

First, let's update the package index and install the Subversion package:

```bash
sudo apt-get update
sudo apt-get install -y subversion
```

Example output:

```
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Get:2 http://security.ubuntu.com/ubuntu jammy-security InRelease [110 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [114 kB]
Get:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [99.8 kB]
...
Fetched 324 kB in 1s (324 kB/s)
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libapache2-mod-svn libsvn1 perl-modules-5.34 python3-subversion
Suggested packages:
  subversion-tools
The following NEW packages will be installed:
  libapache2-mod-svn libsvn1 perl-modules-5.34 python3-subversion subversion
0 upgraded, 5 newly installed, 0 to remove and 0 not upgraded.
Need to get 4,197 kB of archives.
After this operation, 16.1 MB of additional disk space will be used.
Do you want to continue? [Y/n] Y
...
```

After the installation is complete, we can verify the Subversion version:

```bash
svn --version
```

Example output:

```
svn, version 1.14.1 (r1943681)
   compiled Aug 10 2022, 13:12:26 on x86_64-pc-linux-gnu

Copyright (C) 2022 The Apache Software Foundation.
This software consists of contributions made by many people;
see the NOTICE file for more information.

Subversion is open source software, see http://subversion.apache.org/
```

Now, Subversion is successfully installed on the Ubuntu 22.04 environment.
