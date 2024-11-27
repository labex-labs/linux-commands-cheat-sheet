# Understand the Basics of nmap

In this step, we will learn the basics of the nmap (Network Mapper) command, a powerful tool used for network discovery and security auditing. Nmap is a free and open-source utility that can be used to scan networks and hosts, identify running services, and detect potential vulnerabilities.

First, let's start by installing nmap on our Ubuntu 22.04 Docker container:

```bash
sudo apt-get update
sudo apt-get install -y nmap
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  liblinear6 libpcap0.8 libpcre2-8-0 libsqlite3-0 libssl-dev libssl1.1 zlib1g
Suggested packages:
  nmap-frontend
The following NEW packages will be installed:
  liblinear6 libpcap0.8 libpcre2-8-0 libsqlite3-0 libssl-dev libssl1.1 nmap zlib1g
0 upgraded, 8 newly installed, 0 to remove and 0 not upgraded.
```

Now that we have nmap installed, let's explore some basic usage:

1. Performing a simple TCP connect scan on a target host:

```bash
nmap 192.168.1.100
```

Example output:

```
Starting Nmap scan on 192.168.1.100
Nmap scan report for 192.168.1.100
PORT     STATE SERVICE
22/tcp   open  ssh
80/tcp   open  http
443/tcp  open  https
```

2. Performing a more detailed scan with version detection and OS fingerprinting:

```bash
nmap -sV -O 192.168.1.100
```

Example output:

```
Starting Nmap scan on 192.168.1.100
Nmap scan report for 192.168.1.100
PORT     STATE SERVICE VERSION
22/tcp   open  ssh     OpenSSH 8.2p1 Ubuntu 4.1 (protocol 2.0)
80/tcp   open  http    Apache httpd 2.4.41 ((Ubuntu))
443/tcp  open  ssl/http Apache httpd 2.4.41 ((Ubuntu))
OS CPE: cpe:/o:linux:linux_kernel
OS details: Linux 5.4.0 - 5.15.0
```

In this step, we've learned the basic usage of the nmap command, including performing a simple TCP connect scan and a more detailed scan with version detection and OS fingerprinting. In the next step, we'll explore more advanced nmap features and techniques.
