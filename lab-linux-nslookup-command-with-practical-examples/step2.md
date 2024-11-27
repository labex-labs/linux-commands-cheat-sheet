# Performing Basic DNS Lookups with nslookup

In this step, you will learn how to perform basic DNS lookups using the `nslookup` command.

First, let's try a simple domain lookup:

```
$ nslookup example.com
Server:		127.0.0.53
Address:	127.0.0.53#53

Non-authoritative answer:
Name:	example.com
Address: 93.184.216.34
```

The output shows the IP address associated with the `example.com` domain.

Next, let's look up the DNS records for a domain:

```
$ nslookup -type=any example.com
Server:		127.0.0.53
Address:	127.0.0.53#53

Non-authoritative answer:
example.com	canonical name = example.com.
example.com	internet address = 93.184.216.34
example.com	has AAAA address 2606:2800:220:1:248:1893:25c8:1946
example.com	mail exchanger = 0 alt1.aspmx.l.google.com.
example.com	mail exchanger = 1 alt2.aspmx.l.google.com.
example.com	mail exchanger = 5 alt3.aspmx.l.google.com.
example.com	mail exchanger = 10 alt4.aspmx.l.google.com.
example.com	nameserver = a.iana-servers.net.
example.com	nameserver = b.iana-servers.net.
```

This command retrieves all available DNS records for the `example.com` domain, including the IP addresses, mail exchangers, and name servers.

You can also perform reverse DNS lookups to find the domain name associated with an IP address:

```
$ nslookup 8.8.8.8
Server:		127.0.0.53
Address:	127.0.0.53#53

Non-authoritative answer:
8.8.8.8.in-addr.arpa	name = dns.google.
```

The output shows that the IP address `8.8.8.8` is associated with the `dns.google.` domain.
