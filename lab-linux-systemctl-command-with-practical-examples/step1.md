# Understand the Purpose and Functionality of systemctl

In this step, you will learn about the purpose and functionality of the `systemctl` command, which is the primary tool for managing system services in Linux.

The `systemctl` command is a part of the systemd init system, which is the default init system used by many modern Linux distributions, including Ubuntu 22.04. Systemd provides a unified way to manage system services, allowing you to start, stop, enable, and disable services, as well as view their status and logs.

Let's start by exploring the basic usage of `systemctl`:

```bash
# List all running services
sudo systemctl list-units --type=service

# Example output:
# UNIT                           LOAD   ACTIVE SUB     DESCRIPTION
# accounts-daemon.service        loaded active running Accounts Service
# acpid.service                  loaded active running ACPI event daemon
# apparmor.service               loaded active exited  AppArmor initialization
# ...
```

This command lists all the running services on the system. You can see the service name, their load, active, and sub states, as well as a brief description of each service.

To view the status of a specific service, you can use the `status` subcommand:

```bash
# Check the status of the sshd service
sudo systemctl status sshd.service

# Example output:
# ● sshd.service - OpenSSH server daemon
#      Loaded: loaded (/lib/systemd/system/sshd.service; enabled; vendor preset: enabled)
#      Active: active (running) since Fri 2023-04-28 12:34:56 UTC; 1 day 2h ago
#        Docs: man:sshd(8)
#              man:sshd_config(5)
#    Main PID: 12345 (sshd)
#       Tasks: 1 (limit: 4915)
#      Memory: 12.8M
#      CGroup: /system.slice/sshd.service
#              └─12345 /usr/sbin/sshd -D
```

This output provides detailed information about the `sshd` service, including its current state, when it was started, and the process ID of the running service.

You can also use `systemctl` to start, stop, or restart a service:

```bash
# Start the sshd service
sudo systemctl start sshd.service

# Stop the sshd service
sudo systemctl stop sshd.service

# Restart the sshd service
sudo systemctl restart sshd.service
```

These commands allow you to control the lifecycle of system services.

In the next step, you will learn how to use additional `systemctl` commands to manage system services.
