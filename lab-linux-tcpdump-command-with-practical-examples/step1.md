# Introduction to tcpdump Command

In this step, you will learn about the tcpdump command, a powerful network packet analyzer tool used to capture and analyze network traffic on Linux systems.

The tcpdump command allows you to monitor and inspect network packets in real-time, making it a valuable tool for network troubleshooting, security analysis, and understanding network behavior.

Let's start by installing the tcpdump package on our Ubuntu 22.04 Docker container:

```bash
sudo apt-get update
sudo apt-get install -y tcpdump
```

Example output:

```
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Get:2 http://security.ubuntu.com/ubuntu jammy-security InRelease [110 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [114 kB]
Get:4 http://archive.ubuntu.com/ubuntu jammy-backports InRelease [99.8 kB]
Get:5 http://security.ubuntu.com/ubuntu jammy-security/main amd64 Packages [2,276 kB]
Get:6 http://archive.ubuntu.com/ubuntu jammy-updates/main amd64 Packages [2,644 kB]
Get:7 http://archive.ubuntu.com/ubuntu jammy-backports/main amd64 Packages [11.3 kB]
Fetched 5,255 kB in 2s (2,627 kB/s)
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libpcap-dev libpcap0.8 tcpdump
Suggested packages:
  tcpdump-dbg
The following NEW packages will be installed:
  libpcap-dev libpcap0.8 tcpdump
0 upgraded, 3 newly installed, 0 to remove and 0 not upgraded.
Need to get 521 kB of archives.
After this operation, 1,455 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://archive.ubuntu.com/ubuntu jammy/main amd64 libpcap0.8 amd64 1.10.1-5ubuntu1 [146 kB]
Get:2 http://archive.ubuntu.com/ubuntu jammy/main amd64 libpcap-dev amd64 1.10.1-5ubuntu1 [185 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy/main amd64 tcpdump amd64 4.99.1-3ubuntu1 [190 kB]
Fetched 521 kB in 0s (3,837 kB/s)
Selecting previously unselected package libpcap0.8:amd64.
(Reading database ... 14289 files and directories currently installed.)
Preparing to unpack .../libpcap0.8_1.10.1-5ubuntu1_amd64.deb ...
Unpacking libpcap0.8:amd64 (1.10.1-5ubuntu1) ...
Selecting previously unselected package libpcap-dev:amd64.
Preparing to unpack .../libpcap-dev_1.10.1-5ubuntu1_amd64.deb ...
Unpacking libpcap-dev:amd64 (1.10.1-5ubuntu1) ...
Selecting previously unselected package tcpdump.
Preparing to unpack .../tcpdump_4.99.1-3ubuntu1_amd64.deb ...
Unpacking tcpdump (4.99.1-3ubuntu1) ...
Setting up libpcap0.8:amd64 (1.10.1-5ubuntu1) ...
Setting up libpcap-dev:amd64 (1.10.1-5ubuntu1) ...
Setting up tcpdump (4.99.1-3ubuntu1) ...
Processing triggers for man-db (2.10.2-1) ...
Processing triggers for libc-bin (2.35-0ubuntu3.1) ...
```

Now that we have installed tcpdump, let's explore some basic usage:

```bash
sudo tcpdump -i any -n
```

Example output:

```
tcpdump: verbose output suppressed, use -v or -vv for full protocol decode
listening on any, link-type LINUX_SLL (Linux cooked), capture size 262144 bytes
16:25:32.792941 IP 172.17.0.2 > 172.17.0.1: ICMP echo request, id 1, seq 1, length 64
16:25:32.793005 IP 172.17.0.1 > 172.17.0.2: ICMP echo reply, id 1, seq 1, length 64
16:25:33.792998 IP 172.17.0.2 > 172.17.0.1: ICMP echo request, id 1, seq 2, length 64
16:25:33.793058 IP 172.17.0.1 > 172.17.0.2: ICMP echo reply, id 1, seq 2, length 64
^C
4 packets captured
4 packets received by filter
0 packets dropped by kernel
```

The `-i any` option tells tcpdump to capture traffic on all available network interfaces, and `-n` suppresses the DNS resolution of IP addresses, which can slow down the capture process.

This command will start capturing network traffic and display the captured packets in real-time. You can press Ctrl+C to stop the capture.
