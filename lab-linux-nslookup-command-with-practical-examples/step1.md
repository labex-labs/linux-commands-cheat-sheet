# Introduction to the nslookup Command

In this step, you will learn about the `nslookup` command, which is a powerful tool used to query the Domain Name System (DNS) and troubleshoot DNS-related issues.

The `nslookup` command allows you to perform various types of DNS lookups, including:

- Resolving a domain name to its associated IP address
- Retrieving information about a domain's DNS records, such as A, AAAA, MX, and NS records
- Identifying the DNS servers responsible for a domain

To get started, open a terminal and run the `nslookup` command:

```
$ nslookup
```

This will bring you into the `nslookup` interactive mode, where you can enter different commands to perform DNS lookups.

Example output:

```
>
Server:		127.0.0.53
Address:	127.0.0.53#53

>
```

In the interactive mode, you can enter a domain name to perform a basic DNS lookup:

```
> google.com
Server:		127.0.0.53
Address:	127.0.0.53#53

Non-authoritative answer:
Name:	google.com
Address: 142.250.179.78
```

The output shows the IP address associated with the `google.com` domain.

To exit the `nslookup` interactive mode, simply type `exit` and press Enter.
