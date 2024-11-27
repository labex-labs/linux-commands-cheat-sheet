# Configure Automatic Service Startup with systemctl

In this final step, you will learn how to configure automatic service startup with `systemctl`.

Systemd provides a powerful way to manage service startup and dependencies. You can configure services to start automatically when the system boots up, or to start and stop based on the state of other services.

Let's start by creating a simple service unit file. Create a new file named `myservice.service` in the `~/project` directory:

```bash
sudo nano ~/project/myservice.service
```

Add the following content to the file:

```
[Unit]
Description=My Custom Service
After=network.target

[Service]
ExecStart=/bin/bash -c "while true; do echo 'Running my service'; sleep 10; done"
Restart=always

[Install]
WantedBy=multi-user.target
```

This service unit file defines a simple service that runs an infinite loop, printing a message every 10 seconds. The `After=network.target` line ensures that the service starts after the network is available, and the `Restart=always` line ensures that the service is automatically restarted if it ever stops.

Now, let's enable and start the service:

```bash
# Enable the myservice.service to start automatically on boot
sudo systemctl enable ~/project/myservice.service

# Start the myservice.service
sudo systemctl start myservice.service
```

You can check the status of the service using the `systemctl status` command:

```bash
sudo systemctl status myservice.service

# Example output:
# ● myservice.service - My Custom Service
#      Loaded: loaded (/home/labex/project/myservice.service; enabled; vendor preset: enabled)
#      Active: active (running) since Fri 2023-04-28 12:34:56 UTC; 1 minutes ago
#    Main PID: 12345 (bash)
#       Tasks: 2 (limit: 4915)
#      Memory: 2.0M
#      CGroup: /system.slice/myservice.service
#              ├─12345 /bin/bash -c while true; do echo 'Running my service'; sleep 10; done
#              └─12346 sleep 10
```

This shows that the `myservice.service` is running and has been enabled to start automatically on system boot.

You have now learned how to configure automatic service startup with `systemctl`. Congratulations on completing this lab!
