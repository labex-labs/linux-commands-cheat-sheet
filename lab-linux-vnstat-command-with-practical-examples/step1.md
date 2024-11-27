# Install vnstat on Ubuntu 22.04

In this step, we will install the vnstat network monitoring tool on the Ubuntu 22.04 Docker container.

First, let's update the package index and install the vnstat package:

```bash
sudo apt-get update
sudo apt-get install -y vnstat
```

Example output:

```
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Get:2 http://security.ubuntu.com/ubuntu jammy-security InRelease [110 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [114 kB]
Get:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [99.8 kB]
Fetched 324 kB in 1s (324 kB/s)
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libgd3 libonig5 libpcre2-8-0 libsqlite3-0 libxml2
Suggested packages:
  vnstat-cgi vnstati
The following NEW packages will be installed:
  libgd3 libonig5 libpcre2-8-0 libsqlite3-0 libxml2 vnstat
0 upgraded, 6 newly installed, 0 to remove and 0 not upgraded.
Need to get 1,093 kB of archives.
After this operation, 3,800 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
...
```

Now, let's verify that vnstat is installed correctly:

```bash
sudo vnstat --version
```

Example output:

```
vnstat 2.6 by Teemu Toivonen <tst@iki.fi>
```

Great! We have successfully installed the vnstat network monitoring tool on our Ubuntu 22.04 Docker container.
