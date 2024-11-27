# Configure agetty for Serial Console Access

In this step, we will configure `agetty` to enable serial console access on our system.

First, let's check the current configuration of `agetty` by examining the `/etc/inittab` file (note that in Ubuntu 22.04, the `/etc/inittab` file is no longer used, so we'll use the systemd configuration instead):

```bash
sudo cat /etc/systemd/system/getty@.service
```

This will show the default configuration for the `getty` service, which is used by `agetty` to manage the login process.

Next, let's configure `agetty` to enable serial console access. We'll create a new systemd service file for the serial console:

```bash
sudo nano /etc/systemd/system/serial-getty@.service
```

Add the following content to the file:

```
[Unit]
Description=Serial Getty on %I
After=systemd-user-sessions.service plymouth-quit-wait.service
[Service]
ExecStart=-/sbin/agetty --keep-baud 115200,38400,9600 --noclear %I $TERM
Type=idle
Restart=always
UtmpIdentifier=%I
TTYPath=/dev/%I
TTYReset=yes
TTYVHangup=yes
KillMode=process
IgnoreSIGPIPE=no
SendSIGHUP=yes
[Install]
WantedBy=getty.target
```

This configuration sets up `agetty` to listen on the serial console at 115200, 38400, and 9600 baud rates, and automatically restart the service if it crashes.

Save the file and enable the new systemd service:

```bash
sudo systemctl enable serial-getty@ttyS0.service
sudo systemctl start serial-getty@ttyS0.service
```

This will start the `agetty` process for the serial console on the `ttyS0` device.
