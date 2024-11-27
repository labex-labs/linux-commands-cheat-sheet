# Introduction to the smbd Command

In this step, we will explore the `smbd` command, which is a key component of the Samba server. The `smbd` daemon is responsible for providing file and print services to SMB/CIFS clients.

First, let's check the status of the Samba service on our Ubuntu 22.04 Docker container:

```bash
sudo systemctl status smbd
```

Example output:

```
● smbd.service - Samba SMB Daemon
     Loaded: loaded (/lib/systemd/system/smbd.service; enabled; vendor preset: enabled)
     Active: inactive (dead)
```

As you can see, the `smbd` service is currently inactive. This is because we haven't configured the Samba server yet.

Next, let's start the `smbd` service:

```bash
sudo systemctl start smbd
```

Now, let's check the status again:

```bash
sudo systemctl status smbd
```

Example output:

```
● smbd.service - Samba SMB Daemon
     Loaded: loaded (/lib/systemd/system/smbd.service; enabled; vendor preset: enabled)
     Active: active (running) since Thu 2023-04-27 12:34:56 UTC; 10s ago
   Main PID: 12345 (smbd)
     Status: "smbd: ready to serve connections..."
```

The `smbd` service is now running and ready to serve Samba connections.

The `smbd` command is the main Samba server process that handles file and print sharing. It can be configured to share directories and printers on the local system with Windows, macOS, and other SMB/CIFS clients.

In the next steps, we will learn how to configure the Samba server and manage Samba shares and permissions.
