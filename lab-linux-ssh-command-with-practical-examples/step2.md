# Connecting to a Remote Linux Server via SSH

In this step, you will learn how to connect to a remote Linux server using the SSH command.

First, let's verify that you can connect to the remote server using the `ssh` command:

```bash
ssh labex@localhost
```

When prompted, enter the password for the `labex` user. If the connection is successful, you should see the remote server's command prompt.

Now, let's explore some additional SSH connection options:

```bash
# Connect to the remote server and execute a command
ssh labex@localhost ls -l

# Connect to the remote server and open an interactive shell
ssh -t labex@localhost bash

# Connect to the remote server using a specific SSH port (default is 22)
ssh -p 2222 labex@localhost
```

Example output:

```
total 12
drwxr-xr-x 2 labex labex 4096 Apr 21 07:00 project
-rw-r--r-- 1 labex labex    0 Apr 21 07:00 test.txt
```

To exit the SSH session, type `exit` and press Enter.
