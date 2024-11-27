# Troubleshooting DNS Issues Using nslookup

In this step, you will learn how to use the `nslookup` command to troubleshoot DNS-related issues.

Let's start by simulating a DNS resolution failure:

```
$ nslookup non-existent-domain.com
Server:		127.0.0.53
Address:	127.0.0.53#53

** server can't find non-existent-domain.com: NXDOMAIN
```

The output shows that the DNS server was unable to resolve the `non-existent-domain.com` domain, indicating that the domain does not exist.

Next, let's try to query a specific DNS server:

```
$ nslookup example.com 8.8.8.8
Server:		8.8.8.8
Address:	8.8.8.8#53

Non-authoritative answer:
Name:	example.com
Address: 93.184.216.34
```

In this example, we're using the Google DNS server (`8.8.8.8`) to perform the DNS lookup for the `example.com` domain. This can be useful when troubleshooting issues with your local DNS server.

You can also use `nslookup` to identify the DNS servers responsible for a domain:

```
$ nslookup -type=ns example.com
Server:		127.0.0.53
Address:	127.0.0.53#53

Non-authoritative answer:
example.com	nameserver = a.iana-servers.net.
example.com	nameserver = b.iana-servers.net.
```

The output shows that the name servers for the `example.com` domain are `a.iana-servers.net` and `b.iana-servers.net`.

By using these `nslookup` techniques, you can effectively troubleshoot various DNS-related issues, such as domain resolution problems, incorrect DNS configurations, or issues with specific DNS servers.
