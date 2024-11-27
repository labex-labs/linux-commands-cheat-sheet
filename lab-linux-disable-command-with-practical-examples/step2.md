# Disable a Service Using the disable Command

In this step, you will learn how to disable a service using the `disable` command.

First, let's check the status of the `nginx` service:

```bash
sudo systemctl status nginx
```

Example output:

```
● nginx.service - A high performance web server and a reverse proxy server
     Loaded: loaded (/lib/systemd/system/nginx.service; enabled; vendor preset: enabled)
     Active: active (running) since Fri 2023-04-14 12:34:56 UTC; 1min 23s ago
```

As you can see, the `nginx` service is currently enabled and running.

Now, let's disable the `nginx` service using the `disable` command:

```bash
sudo disable nginx
```

Example output:

```
Disabling system service nginx.service.
```

To verify that the `nginx` service has been disabled, run the following command:

```bash
sudo systemctl status nginx
```

Example output:

```
● nginx.service - A high performance web server and a reverse proxy server
     Loaded: loaded (/lib/systemd/system/nginx.service; disabled; vendor preset: enabled)
     Active: inactive (dead)
```

The output shows that the `nginx` service is now disabled and inactive.
