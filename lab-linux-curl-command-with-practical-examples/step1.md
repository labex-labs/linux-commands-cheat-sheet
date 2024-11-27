# Introduction to curl Command

In this step, we will explore the curl command, a powerful tool for transferring data using various protocols, including HTTP, FTP, and more. Curl is a versatile command-line tool that allows you to interact with web servers, download files, and perform various network-related tasks.

First, let's check the version of curl installed in our Ubuntu 22.04 Docker container:

```bash
curl --version
```

Example output:

```
curl 7.81.0 (x86_64-pc-linux-gnu) libcurl/7.81.0 OpenSSL/3.0.2 zlib/1.2.11 brotli/1.0.9 libidn2/2.3.2 libpsl/0.21.0 (+libidn2-2.3.2) libstdc++/9.4.0 libssh/0.9.6/openssl/zlib nghttp2/1.47.0 librtmp/2.3
Protocols: dict file ftp ftps gopher gophers http https imap imaps ldap ldaps mqtt pop3 pop3s rtmp rtsp scp sftp smb smbs smtp smtps telnet tftp
Features: alt-svc AsynchDNS brotli GSS-API HTTP2 HTTPS-proxy IPv6 Kerberos Largefile libz NTLM NTLM_WB PSL SPNEGO SSL TLS-SRP UnixSockets
```

As you can see, the output shows the version of curl, the protocols it supports, and the various features it provides.

Next, let's try using curl to fetch the content of a web page. We'll use the example of fetching the homepage of the curl project:

```bash
curl https://curl.se
```

Example output:

```
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>curl - transfer data with URL</title>
...
```

The output shows the HTML content of the curl project's homepage, which curl has fetched and displayed in the terminal.

In the next step, we'll explore more advanced use cases of the curl command, such as downloading files and interacting with different protocols.
