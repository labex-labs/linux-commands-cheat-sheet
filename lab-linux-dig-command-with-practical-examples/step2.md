# Perform Basic DNS Lookups Using dig

In this step, you will learn how to perform basic DNS lookups using the `dig` command.

Let's start by looking up the IP address for the domain `google.com`:

```
dig google.com
```

Example output:

```
; <<>> DiG 9.16.1-Ubuntu <<>> google.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 14703
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 65494
;; QUESTION SECTION:
;google.com.                     IN      A

;; ANSWER SECTION:
google.com.              300     IN      A       142.250.179.78

;; Query time: 14 msec
;; SERVER: 127.0.0.53#53(127.0.0.53)
;; WHEN: Fri Apr 14 10:10:12 UTC 2023
;; MSG SIZE  rcvd: 55
```

The output shows that the IP address for `google.com` is `142.250.179.78`.

You can also perform a reverse DNS lookup to find the domain name associated with an IP address. Let's look up the domain name for the IP address `8.8.8.8`:

```
dig -x 8.8.8.8
```

Example output:

```
; <<>> DiG 9.16.1-Ubuntu <<>> -x 8.8.8.8
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 4852
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 65494
;; QUESTION SECTION:
;8.8.8.8.in-addr.arpa.           IN      PTR

;; ANSWER SECTION:
8.8.8.8.in-addr.arpa.    14400   IN      PTR     dns.google.

;; Query time: 14 msec
;; SERVER: 127.0.0.53#53(127.0.0.53)
;; WHEN: Fri Apr 14 10:10:33 UTC 2023
;; MSG SIZE  rcvd: 73
```

The output shows that the domain name associated with the IP address `8.8.8.8` is `dns.google.`.

In the next step, you will explore more advanced `dig` options to retrieve detailed DNS information.
