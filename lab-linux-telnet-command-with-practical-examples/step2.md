# Connect to a Remote Server Using the telnet Command

In this step, you will learn how to use the `telnet` command to connect to a remote server.

First, let's try connecting to a web server using the `telnet` command:

```
$ telnet www.example.com 80
```

Example output:

```
Trying 93.184.216.34...
Connected to www.example.com.
Escape character is '^]'.
```

Once connected, you can send HTTP requests directly to the web server. For example, to request the root page, you can type:

```
GET / HTTP/1.1
Host: www.example.com

```

Example output:

```
HTTP/1.1 200 OK
Date: Fri, 14 Apr 2023 12:34:56 GMT
Server: Apache
Content-Length: 1256
Content-Type: text/html

<!doctype html>
<html>
<head>
    <title>Example Domain</title>
    ...
</head>
<body>
<div>
    <h1>Example Domain</h1>
    <p>This domain is for use in illustrative examples in documents. You may use this
    domain in examples without prior coordination or asking for permission.</p>
    ...
</div>
```

In this example, we used the `telnet` command to connect to the web server running on `www.example.com` on port 80. We then manually sent an HTTP `GET` request to the server and received the response.

The `telnet` command can be used to connect to various types of servers, not just web servers. For example, you can use it to connect to an FTP server, an email server, or any other network service that uses a TCP/IP protocol.
