# Manage System Services Using systemctl Commands

In this step, you will learn how to use various `systemctl` commands to manage system services.

Let's start by enabling a service to start automatically on system boot:

```bash
# Enable the sshd service to start automatically on boot
sudo systemctl enable sshd.service

# Example output:
# Created symlink /etc/systemd/system/multi-user.target.wants/sshd.service → /lib/systemd/system/sshd.service.
```

This command creates a symbolic link to the service unit file, ensuring that the `sshd` service will start automatically when the system boots up.

To disable a service from starting automatically, you can use the `disable` subcommand:

```bash
# Disable the sshd service from starting automatically on boot
sudo systemctl disable sshd.service

# Example output:
# Removed /etc/systemd/system/multi-user.target.wants/sshd.service.
```

Now, let's start and stop a service manually:

```bash
# Start the sshd service
sudo systemctl start sshd.service

# Stop the sshd service
sudo systemctl stop sshd.service
```

These commands allow you to control the running state of the `sshd` service.

If you need to restart a service, you can use the `restart` subcommand:

```bash
# Restart the sshd service
sudo systemctl restart sshd.service
```

This command will first stop the service and then start it again.

Finally, you can check the status of a service using the `status` subcommand:

```bash
# Check the status of the sshd service
sudo systemctl status sshd.service
```

This command will display the current state of the `sshd` service, including whether it is running, when it was started, and any error messages.

In the next step, you will learn how to configure automatic service startup with `systemctl`.
