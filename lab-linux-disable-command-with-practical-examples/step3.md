# Verify the Service Disabled Status

In this final step, you will learn how to verify the disabled status of a service.

After disabling a service using the `disable` command, it's important to ensure that the service is indeed disabled and will not start automatically at system boot.

Let's verify the disabled status of the `nginx` service:

```bash
sudo systemctl is-enabled nginx
```

Example output:

```
disabled
```

The output shows that the `nginx` service is now disabled.

You can also check the service status directly:

```bash
sudo systemctl status nginx
```

Example output:

```
● nginx.service - A high performance web server and a reverse proxy server
     Loaded: loaded (/lib/systemd/system/nginx.service; disabled; vendor preset: enabled)
     Active: inactive (dead)
```

The output confirms that the `nginx` service is disabled and not running.
