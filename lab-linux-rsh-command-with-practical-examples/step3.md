# Executing Remote Commands with rsh

In this final step, we will learn how to execute remote commands using the `rsh` command.

The basic syntax for executing a remote command is:

```bash
rsh remote-server command
```

Replace `remote-server` with the hostname or IP address of the remote system, and `command` with the command you want to execute on the remote system.

For example, to check the uptime of the remote system, you can run:

```bash
rsh remote-server uptime
```

Example output:

```
 15:30:42 up 1 day, 12:34,  0 users,  load average: 0.00, 0.00, 0.00
```

You can also execute multiple commands on the remote system by enclosing them in quotes:

```bash
rsh remote-server "ls -l; pwd; uname -a"
```

Example output:

```
total 8
-rw-r--r-- 1 labex labex 0 Apr 12 15:30 file1.txt
-rw-r--r-- 1 labex labex 0 Apr 12 15:30 file2.txt
drwxr-xr-x 2 labex labex 4096 Apr 12 15:30 directory1
/home/labex
Linux remote-server 5.15.0-46-generic #49-Ubuntu SMP Thu Aug 4 18:21:17 UTC 2022 x86_64 x86_64 x86_64 GNU/Linux
```

This allows you to execute multiple commands on the remote system and view the combined output.
