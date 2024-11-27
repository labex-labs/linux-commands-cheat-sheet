# Understand the Purpose and Syntax of the whois Command

In this step, you will learn about the purpose and syntax of the `whois` command in Linux. The `whois` command is a tool used to retrieve information about domain names, IP addresses, and other internet resources.

To use the `whois` command, open a terminal and type the following command:

```
whois example.com
```

This will display the available information about the `example.com` domain, including the registrant, registration date, expiration date, and other details.

The basic syntax of the `whois` command is:

```
whois [options] [query]
```

Here, `[options]` are the optional flags you can use to customize the output, and `[query]` is the domain name, IP address, or other resource you want to look up.

Some common options for the `whois` command include:

- `-h` or `--host`: Specifies the WHOIS server to use for the lookup.
- `-p` or `--port`: Specifies the port number to use for the WHOIS lookup.
- `-r` or `--raw`: Displays the raw WHOIS response without any formatting.
- `-6`: Performs the WHOIS lookup using IPv6.

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

This output shows the key information about the `example.com` domain, including the registrant, creation date, and expiration date.
