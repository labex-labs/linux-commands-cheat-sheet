# Automate iptables-save in a Systemd Service

In this step, you will learn how to automate the backup of iptables firewall rules using a Systemd service.

First, create a new Systemd service file:

```
sudo nano /etc/systemd/system/iptables-save.service
```

Add the following content to the file:

```
[Unit]
Description=Backup iptables firewall rules
After=network.target

[Service]
Type=oneshot
ExecStart=/usr/sbin/iptables-save -f /etc/iptables/rules.v4

[Install]
WantedBy=multi-user.target
```

This Systemd service will run the `iptables-save` command and save the firewall rules to the `/etc/iptables/rules.v4` file.

Next, enable and start the Systemd service:

```
sudo systemctl enable iptables-save.service
sudo systemctl start iptables-save.service
```

This will ensure that the iptables firewall rules are automatically backed up whenever the system starts up.

To verify that the service is working correctly, check the status of the service:

```
sudo systemctl status iptables-save.service
```

Example output:

```
● iptables-save.service - Backup iptables firewall rules
     Loaded: loaded (/etc/systemd/system/iptables-save.service; enabled; vendor preset: enabled)
     Active: active (exited) since Wed 2023-04-12 12:34:56 UTC; 1min 23s ago
   Main PID: 12345 (code=exited, status=0/SUCCESS)
      Tasks: 0 (limit: 1071)
     Memory: 0B
     CGroup: /system.slice/iptables-save.service

Apr 12 12:34:56 labex systemd[1]: Started Backup iptables firewall rules.
```

The service should be in the "active (exited)" state, indicating that the `iptables-save` command has been executed successfully.

You can also check the contents of the `/etc/iptables/rules.v4` file to verify that the firewall rules have been saved:

```
cat /etc/iptables/rules.v4
```

This should display the current iptables firewall configuration.
