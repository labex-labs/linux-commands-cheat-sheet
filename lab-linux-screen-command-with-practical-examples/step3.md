# Detaching and Reattaching Screen Sessions

In this step, you will learn how to detach from a screen session and then reattach to it later.

First, let's create a new screen session:

```
screen -S myapp
```

Now, let's start a long-running process inside the screen session, such as running a web server:

```
python3 -m http.server 8000
```

To detach from the screen session, press `Ctrl+A` followed by `d`. This will leave the process running in the background.

You can verify that the screen session is still running using the `screen -ls` command:

```
screen -ls
```

Example output:

```
There is a screen on:
	12345.myapp	(Detached)
1 Socket in /run/screen/S-labex.
```

To reattach to the screen session, use the following command:

```
screen -r myapp
```

This will reconnect you to the "myapp" screen session, and you should see the web server still running.

To exit the screen session, press `Ctrl+C` to stop the web server, then press `Ctrl+D` to exit the screen session.
