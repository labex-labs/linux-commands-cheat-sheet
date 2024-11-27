# Retrieve Domain Information Using the whois Command

In this step, you will learn how to use the `whois` command to retrieve detailed information about a domain.

First, let's look up the information for the `example.com` domain:

```
whois example.com
```

This will display the full WHOIS record for the `example.com` domain, including the registrant, registration date, expiration date, and other details.

Example output:

```
Domain Name: EXAMPLE.COM
Registry Domain ID: 2336799_DOMAIN_COM-VRSN
Registrar WHOIS Server: whois.example.com
Registrar URL: http://www.example.com
Updated Date: 2023-04-01T12:00:00Z
Creation Date: 1995-08-14T04:00:00Z
Registry Expiry Date: 2024-08-14T04:00:00Z
Registrant Organization: Example Corporation
Registrant State/Province: California
Registrant Country: US
```

Now, let's try looking up the information for a different domain, such as `google.com`:

```
whois google.com
```

Example output:

```
Domain Name: GOOGLE.COM
Registry Domain ID: 2138514_DOMAIN_COM-VRSN
Registrar WHOIS Server: whois.registrar.com
Registrar URL: http://www.registrar.com
Updated Date: 2023-03-15T08:00:00Z
Creation Date: 1997-09-15T04:00:00Z
Registry Expiry Date: 2024-09-14T04:00:00Z
Registrant Organization: Google LLC
Registrant State/Province: California
Registrant Country: US
```

As you can see, the `whois` command provides detailed information about the domain, including the registrant, registration date, and expiration date.
