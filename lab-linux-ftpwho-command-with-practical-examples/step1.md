# Understand the ftpwho Command

In this step, you will learn about the `ftpwho` command in Linux, which is used to monitor and display information about active FTP server connections and user activities.

The `ftpwho` command is a useful tool for system administrators to keep track of who is connected to the FTP server and what they are doing. It provides detailed information about the active FTP sessions, including the username, remote host, connection time, and the current directory.

To use the `ftpwho` command, simply run the following command in the terminal:

```
sudo ftpwho
```

Example output:

```
User          Remote Host        Login Time      Idle Time      Directory
-----------   ----------------   -------------   ------------   ---------
labex         192.168.1.100      14:32:45        00:01:23       /home/labex
admin         10.0.0.50          15:10:12        00:00:45       /var/www/html
```

The output shows that there are two active FTP connections. The first connection is from the user `labex` from the remote host `192.168.1.100`, who logged in at `14:32:45` and has been idle for `00:01:23`. The second connection is from the user `admin` from the remote host `10.0.0.50`, who logged in at `15:10:12` and has been idle for `00:00:45`. Both users are currently in their respective directories.

You can also use various options with the `ftpwho` command to customize the output or perform specific actions. We will explore these options in the next step.
