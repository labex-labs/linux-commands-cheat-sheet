# Utilize Advanced nmap Features

In this final step, we will explore some advanced features of nmap and how they can be used for more sophisticated network scanning and analysis.

Let's start by performing a script scan to detect potential vulnerabilities on our target host:

```bash
sudo nmap -sV --script=vuln 192.168.1.100
```

Example output:

```
Starting Nmap scan on 192.168.1.100
Nmap scan report for 192.168.1.100
PORT     STATE SERVICE VERSION
22/tcp   open  ssh     OpenSSH 8.2p1 Ubuntu 4.1 (protocol 2.0)
| ssh-hostkey:
|   3072 c4:f8:9c:0c:cb:8a:d0:95:87:04:a9:44:b2:2e:ac:e5 (RSA)
|   256 ac:00:66:17:63:c0:80:9d:43:bd:ee:e9:a6:ca:e5:84 (ECDSA)
|_  256 f5:90:d8:9e:6b:b3:19:e5:7c:ab:02:5a:c1:4b:08:e4 (ED25519)
80/tcp   open  http    Apache httpd 2.4.41 ((Ubuntu))
| http-slowloris-check:
|   VULNERABLE:
|   Slowloris DOS attack
|     State: VULNERABLE
|     IDs:  CVE-2007-6750, CWE-476
|       Slowloris tries to keep many connections to the target web server open and hold
|       them for as long as possible.  This can effectively starve the web server of
|       resources, slowing it down or causing it to crash.
|
|     Disclosure date: 2009-09-03
|     References:
|       https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2007-6750
|_      http://ha.ckers.org/slowloris/
443/tcp  open  ssl/http Apache httpd 2.4.41 ((Ubuntu))
| http-slowloris-check:
|   VULNERABLE:
|   Slowloris DOS attack
|     State: VULNERABLE
|     IDs:  CVE-2007-6750, CWE-476
|       Slowloris tries to keep many connections to the target web server open and hold
|       them for as long as possible.  This can effectively starve the web server of
|       resources, slowing it down or causing it to crash.
|
|     Disclosure date: 2009-09-03
|     References:
|       https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2007-6750
|_      http://ha.ckers.org/slowloris/
```

We can also use nmap to perform a TCP connect scan and save the results to a file:

```bash
sudo nmap -oA nmap_results 192.168.1.100
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

The results are saved in the following files:

- nmap_results.nmap
- nmap_results.gnmap
- nmap_results.xml

Finally, let's try a TCP SYN scan with service and version detection, OS fingerprinting, and script scanning:

```bash
sudo nmap -sS -sV -O -sC 192.168.1.100
```

Example output:

```
Starting Nmap scan on 192.168.1.100
Nmap scan report for 192.168.1.100
PORT     STATE SERVICE VERSION
22/tcp   open  ssh     OpenSSH 8.2p1 Ubuntu 4.1 (protocol 2.0)
| ssh-hostkey:
|   3072 c4:f8:9c:0c:cb:8a:d0:95:87:04:a9:44:b2:2e:ac:e5 (RSA)
|   256 ac:00:66:17:63:c0:80:9d:43:bd:ee:e9:a6:ca:e5:84 (ECDSA)
|_  256 f5:90:d8:9e:6b:b3:19:e5:7c:ab:02:5a:c1:4b:08:e4 (ED25519)
80/tcp   open  http    Apache httpd 2.4.41 ((Ubuntu))
| http-server-header:
|   Apache/2.4.41 (Ubuntu)
|_  Server: Apache/2.4.41 (Ubuntu)
443/tcp  open  ssl/http Apache httpd 2.4.41 ((Ubuntu))
| http-server-header:
|   Apache/2.4.41 (Ubuntu)
|_  Server: Apache/2.4.41 (Ubuntu)
OS CPE: cpe:/o:linux:linux_kernel
OS details: Linux 5.4.0 - 5.15.0
```

In this final step, we've explored some advanced nmap features, including script scanning for vulnerability detection, saving scan results to files, and performing a comprehensive scan with service and version detection, OS fingerprinting, and script scanning. These techniques can be invaluable for network security assessment and troubleshooting.
