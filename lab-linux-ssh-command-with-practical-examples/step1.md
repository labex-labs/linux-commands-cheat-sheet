# Introduction to SSH (Secure Shell)

In this step, you will learn about the Secure Shell (SSH) protocol, which is a widely used method for securely connecting to remote Linux servers. SSH provides encrypted communication between your local machine and the remote server, ensuring the privacy and integrity of your data.

First, let's check the SSH server status on the Ubuntu 22.04 Docker container:

```bash
sudo systemctl status ssh
```

Example output:

```
● ssh.service - OpenSSH server daemon
     Loaded: loaded (/lib/systemd/system/ssh.service; enabled; vendor preset: enabled)
     Active: active (running) since Fri 2023-04-21 06:53:22 UTC; 1min 30s ago
   Main PID: 1026 (sshd)
      Tasks: 1 (limit: 1071)
     Memory: 3.0M
        CPU: 17ms
     CGroup: /system.slice/ssh.service
             └─1026 /usr/sbin/sshd -D
```

The output shows that the SSH server is running and active on the Ubuntu container.

Next, let's try connecting to the remote server using the SSH command:

```bash
ssh labex@localhost
```

When prompted, enter the password for the `labex` user. If the connection is successful, you should see the remote server's command prompt.

To exit the SSH session, type `exit` and press Enter.
