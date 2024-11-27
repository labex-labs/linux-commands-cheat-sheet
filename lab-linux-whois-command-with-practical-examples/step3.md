# Customize whois Output and Handle Exceptions

In this step, you will learn how to customize the output of the `whois` command and handle exceptions that may occur.

First, let's try customizing the output of the `whois` command. You can use the `-h` or `--host` option to specify the WHOIS server to use for the lookup. For example, to use the WHOIS server for the .com top-level domain, you can run:

```
whois -h whois.verisign-grs.com example.com
```

This will display the WHOIS information for the `example.com` domain using the Verisign WHOIS server.

You can also use the `-r` or `--raw` option to display the raw WHOIS response without any formatting:

```
whois -r example.com
```

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

Now, let's try handling exceptions that may occur when using the `whois` command. If a domain does not exist or the WHOIS server is unavailable, the `whois` command will return an error message. For example, let's try looking up a non-existent domain:

```
whois non-existent-domain.com
```

Example output:

```
No match for "non-existent-domain.com".
```

To handle these exceptions, you can use a combination of the `whois` command and shell scripting. For example, you can check the exit code of the `whois` command to determine if the lookup was successful:

```
whois example.com
if [ $? -eq 0 ]; then
  echo "WHOIS lookup successful"
else
  echo "WHOIS lookup failed"
fi
```

By using these techniques, you can customize the `whois` command output and handle exceptions that may occur during the lookup process.
