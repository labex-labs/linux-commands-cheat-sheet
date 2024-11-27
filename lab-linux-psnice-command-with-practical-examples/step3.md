# Practical Use Cases of the psnice Command

In this step, we will explore some practical use cases for the `psnice` command.

One common use case is to prioritize important processes over less critical ones. For example, let's say you have a web server running on your system, and you want to ensure that the web server process has a higher priority than other background processes.

First, let's start a background process that simulates a less important task:

```bash
while true; do echo "Background process running"; sleep 1; done &
```

This will start a background process that runs indefinitely, printing a message every second.

Now, let's find the process ID of the web server process (replace `apache2` with the name of your web server process):

```bash
WEB_SERVER_PID=$(pgrep -n apache2)
```

We can then use the `psnice` command to increase the priority of the web server process:

```bash
sudo psnice -n -5 -p $WEB_SERVER_PID
```

This sets the nice value of the web server process to -5, giving it a higher priority than the background process.

You can verify the priority changes by running the `ps` command:

```bash
ps -o pid,ni,cmd -p $WEB_SERVER_PID
```

Example output:

```
  PID   NI CMD
 1236  -5 /usr/sbin/apache2 -k start
```

Another practical use case for `psnice` is to temporarily reduce the priority of a resource-intensive process, such as a long-running backup or data processing job, to ensure that other critical processes can run smoothly.

For example, let's say you have a data processing job running in the background:

```bash
python data_processing.py &
```

You can use `psnice` to temporarily reduce the priority of this process:

```bash
sudo psnice -n 5 -p $(pgrep -n python)
```

This will allow other important processes to have a higher priority and access more system resources, while the data processing job continues to run in the background at a lower priority.
