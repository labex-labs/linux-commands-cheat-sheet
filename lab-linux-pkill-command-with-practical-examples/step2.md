# Terminate Processes by Process Name

In this step, you will learn how to use the `pkill` command to terminate processes by their process name.

First, let's start a few processes that we can use for this example:

```bash
# Start a few processes
sleep 1000 &
firefox &
gedit &
```

Now, let's use `pkill` to terminate the Firefox process by its name:

```bash
sudo pkill -f firefox
```

Example output:

```
[2]+ Terminated              firefox
```

As you can see, the Firefox process has been terminated.

You can also use wildcards with the `pkill` command to match multiple processes by name. For example, to terminate all processes that have "gedit" in their name:

```bash
sudo pkill -f gedit
```

Example output:

```
[3]+ Terminated              gedit
```

If you want to terminate all processes that match a specific pattern, you can use the `-e` option to specify a regular expression:

```bash
sudo pkill -ef 'sleep|firefox'
```

This command will terminate all processes that have "sleep" or "firefox" in their name.

Example output:

```
[1]+ Terminated              sleep 1000
[2]+ Terminated              firefox
```

Remember, the `pkill` command is a powerful tool, so use it with caution to avoid accidentally terminating important system processes.
