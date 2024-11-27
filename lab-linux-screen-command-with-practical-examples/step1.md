# Introduction to the screen Command

In this step, you will learn about the `screen` command, a powerful tool that allows you to create and manage multiple terminal sessions. The `screen` command is particularly useful for long-running processes, remote sessions, or when you need to switch between different tasks without losing your work.

First, let's install the `screen` package on our Ubuntu 22.04 Docker container:

```
sudo apt-get update
sudo apt-get install -y screen
```

Now, let's create a new screen session:

```
screen
```

This will start a new screen session, and you will see a message indicating that you are now in a screen session.

To list all the currently running screen sessions, use the following command:

```
screen -ls
```

Example output:

```
There is a screen on:
	12345.pts-0.labex	(Detached)
1 Socket in /run/screen/S-labex.
```

To detach from the current screen session, press `Ctrl+A` followed by `d`. This will leave the session running in the background.

To reattach to the screen session, use the following command:

```
screen -r
```

This will reconnect you to the running screen session.
