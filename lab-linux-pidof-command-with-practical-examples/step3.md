# Locate Multiple Processes with the Same Name

In this step, you will learn how to use the `pidof` command to locate multiple processes with the same name.

Let's start by running two instances of the `nginx` web server:

```bash
sudo nginx
sudo nginx
```

Now, you can use the `pidof` command to find the PIDs of the running `nginx` processes:

```bash
pidof nginx
```

Example output:

```
1234 5678
```

The output shows that there are two `nginx` processes running, with PIDs `1234` and `5678`.

You can also use the `ps` command to view more details about the running `nginx` processes:

```bash
ps -p 1234 -o pid,comm
ps -p 5678 -o pid,comm
```

Example output:

```
  PID COMMAND
 1234 nginx
 5678 nginx
```

The `ps` command confirms that both PIDs belong to the `nginx` process.

If you want to target a specific `nginx` process, you can use the PID to interact with it. For example, to stop a specific `nginx` process, you can run:

```bash
sudo kill 1234
```

This will terminate the `nginx` process with PID `1234`.

In summary, the `pidof` command is a useful tool for locating multiple processes with the same name, and the PIDs can be used to target and manage those processes individually.
