# Troubleshoot Network Connectivity with the telnet Command

In this step, you will learn how to use the `telnet` command to troubleshoot network connectivity issues.

One common use case for the `telnet` command is to test the connectivity to a specific port on a remote server. This can help you identify if a network service is running and accessible.

Let's try connecting to a web server on port 80:

```
$ telnet www.example.com 80
```

Example output:

```
Trying 93.184.216.34...
Connected to www.example.com.
Escape character is '^]'.
```

In this case, the connection was successful, indicating that the web server is running and accessible on port 80.

Now, let's try connecting to a port that is not open:

```
$ telnet www.example.com 8080
```

Example output:

```
Trying 93.184.216.34...
telnet: Unable to connect to remote host: Connection refused
```

The "Connection refused" message indicates that there is no service listening on port 8080 on the remote server.

You can also use the `telnet` command to test the connectivity to a specific IP address or hostname, without specifying a port. This can help you determine if the network connection is working at all:

```
$ telnet www.example.com
```

Example output:

```
Trying 93.184.216.34...
telnet: Unable to connect to remote host: No route to host
```

In this case, the "No route to host" message indicates that there is a problem with the network connection, and the remote host is not accessible.

By using the `telnet` command to test connectivity to different ports and hosts, you can quickly identify where the network issue might be occurring, whether it's a problem with the remote server, the network infrastructure, or your own network connection.
