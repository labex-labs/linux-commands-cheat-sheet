# Suspend a Foreground Process and Move it to the Background

In this step, you will learn how to suspend a foreground process and move it to the background using the `bg` command.

First, let's start a long-running process in the foreground:

```bash
$ sleep 120
```

While the `sleep 120` command is running, press `Ctrl+Z` to suspend the process:

```
^Z
[1]+  Stopped                 sleep 120
```

Now, the `sleep 120` process is suspended and in the background. To move it to the background, use the `bg` command:

```bash
$ bg
[1]+ sleep 120 &
```

The `bg` command resumes the suspended process and moves it to the background, allowing you to continue working in the foreground.

Example output:

```
[1]+ sleep 120 &
```

You can also list the background processes using the `jobs` command:

```bash
$ jobs
[1]+ Running                 sleep 120 &
```

This shows that the `sleep 120` process is now running in the background.
