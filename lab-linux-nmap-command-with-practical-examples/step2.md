# Perform Network Scanning with nmap

In this step, we will dive deeper into network scanning using nmap and explore some of its advanced features.

First, let's try a SYN scan, which is a stealthy way to scan a network:

```bash
sudo nmap -sS 192.168.1.1-254
```

Example output:

```
Starting Nmap scan on 192.168.1.0/24
Nmap scan report for 192.168.1.1
PORT     STATE SERVICE
22/tcp   open  ssh
80/tcp   open  http
443/tcp  open  https

Nmap scan report for 192.168.1.100
PORT     STATE SERVICE
22/tcp   open  ssh
80/tcp   open  http
443/tcp  open  https
```

Next, let's perform a UDP scan to identify open UDP ports:

```bash
sudo nmap -sU 192.168.1.100
```

Example output:

```
Starting Nmap UDP scan on 192.168.1.100
Nmap scan report for 192.168.1.100
PORT    STATE SERVICE
123/udp open  ntp
```

We can also use nmap to scan a specific port range:

```bash
sudo nmap -p 1-1000 192.168.1.100
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

Finally, let's try a TCP SYN scan with version detection and OS fingerprinting:

```bash
sudo nmap -sS -sV -O 192.168.1.100
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

In this step, we've learned how to perform various network scans using nmap, including SYN scans, UDP scans, port range scans, and scans with version detection and OS fingerprinting. These techniques can be useful for network discovery, security auditing, and troubleshooting.
