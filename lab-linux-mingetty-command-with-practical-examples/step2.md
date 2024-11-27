# Configure mingetty for Automatic Login

In this step, we will configure the mingetty command to enable automatic login on our Linux system.

Automatic login is a useful feature that allows users to log in to the system without manually entering their credentials. This can be particularly helpful in scenarios where the system is intended for a single user or in kiosk-style applications.

To configure mingetty for automatic login, we need to modify the configuration file located at /etc/inittab. However, since we are using a Docker container, we cannot directly edit this file as the init system is not available. Instead, we will create a custom configuration file and use it to override the default behavior.

First, let's create a new file called mingetty.conf in the ~/project directory:

```bash
nano ~/project/mingetty.conf
```

In this file, we will add the following configuration to enable automatic login for the 'labex' user:

```
# /etc/inittab-like config for mingetty
1:2345:respawn:/sbin/mingetty --autologin labex tty1
```

This configuration instructs mingetty to automatically log in the 'labex' user on the first virtual terminal (tty1) whenever the system enters runlevels 2, 3, 4, or 5.

Next, we need to start the mingetty service using the custom configuration file:

```bash
sudo mingetty --config ~/project/mingetty.conf
```

This command will launch the mingetty service and apply the automatic login settings.

To verify the automatic login functionality, you can switch to the first virtual terminal (Ctrl+Alt+F1) and observe that the system logs in the 'labex' user automatically without prompting for credentials.
