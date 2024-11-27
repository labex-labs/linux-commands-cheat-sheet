# Explore Advanced dig Options for Detailed DNS Information

In this step, you will learn how to use advanced `dig` options to retrieve more detailed DNS information.

Let's start by performing a DNS lookup with the `+trace` option, which will show the complete chain of DNS servers used to resolve the domain name:

```
dig +trace google.com
```

Example output:

```
; <<>> DiG 9.16.1-Ubuntu <<>> +trace google.com
;; global options: +cmd
.                       518400  IN      NS      a.root-servers.net.
.                       518400  IN      NS      b.root-servers.net.
...
google.com.             300     IN      A       142.250.179.78
```

The output shows the step-by-step process of resolving the `google.com` domain, starting from the root DNS servers and following the referrals to the final IP address.

You can also use the `+norecurse` option to perform a non-recursive DNS lookup, which will only query the specified DNS server without following any referrals:

```
dig +norecurse @8.8.8.8 google.com
```

Example output:

```
; <<>> DiG 9.16.1-Ubuntu <<>> +norecurse @8.8.8.8 google.com
; (1 server found)
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 48840
;; flags: qr rd; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 512
;; QUESTION SECTION:
;google.com.                     IN      A

;; ANSWER SECTION:
google.com.              300     IN      A       142.250.179.78

;; Query time: 33 msec
;; SERVER: 8.8.8.8#53(8.8.8.8)
;; WHEN: Fri Apr 14 10:19:14 UTC 2023
;; MSG SIZE  rcvd: 55
```

This command queries the Google DNS server (`8.8.8.8`) directly for the `google.com` domain, without following any referrals.

You can also use the `+short` option to get a more concise output:

```
dig +short google.com
```

Example output:

```
142.250.179.78
```

This will only display the final IP address, without the additional information.

In the next step, you will put all the knowledge you've learned about the `dig` command into practice.
