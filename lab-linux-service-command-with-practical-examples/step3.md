# Troubleshoot Service Issues with Practical Examples

In this final step, we will explore how to troubleshoot issues with system services using the `service` command and other related tools.

Let's start by intentionally stopping the Apache web server service:

```
sudo service apache2 stop
```

Example output:

```
Stopping Apache httpd web server: apache2.
```

Now, let's try to access the Apache web server:

```
curl http://localhost
```

Example output:

```
curl: (7) Failed to connect to localhost port 80: Connection refused
```

As expected, the web server is not running, and we get a connection refused error.

To troubleshoot the issue, we can check the status of the Apache service:

```
sudo service apache2 status
```

Example output:

```
Apache2 is not running.
```

The status command confirms that the Apache service is not running.

Next, let's try to start the Apache service again:

```
sudo service apache2 start
```

Example output:

```
Starting Apache httpd web server: apache2.
```

Now, let's check the status again:

```
sudo service apache2 status
```

Example output:

```
Apache2 is running.
```

The service is now running, and we can access the web server:

```
curl http://localhost
```

Example output:

```
<!DOCTYPE html>
<html>
<body>
<h1>It works!</h1>
</body>
</html>
```

In this example, we demonstrated how to troubleshoot a simple service issue by checking the service status, starting the service, and verifying the service is running correctly.

In a real-world scenario, you might encounter more complex issues, such as service startup failures, configuration problems, or resource exhaustion. In such cases, you can use additional tools and techniques, such as checking service logs, monitoring system resources, and investigating configuration files, to identify and resolve the underlying issues.
