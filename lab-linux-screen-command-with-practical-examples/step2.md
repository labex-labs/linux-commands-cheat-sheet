# Creating and Navigating Screen Sessions

In this step, you will learn how to create and navigate multiple screen sessions, which is a powerful feature of the `screen` command.

First, let's create a new screen session with a custom name:

```
screen -S mysession
```

This will create a new screen session named "mysession".

Now, let's create another screen session:

```
screen -S othersession
```

You now have two screen sessions running.

To list all the current screen sessions, use the following command:

```
screen -ls
```

Example output:

```
There are screens on:
	12345.mysession	(Detached)
	67890.othersession	(Detached)
2 Sockets in /run/screen/S-labex.
```

To switch between the screen sessions, use the following commands:

```
# Switch to the "mysession" screen session
screen -r mysession

# Switch to the "othersession" screen session
screen -r othersession
```

When you are inside a screen session, you can use the following keyboard shortcuts to navigate:

- `Ctrl+A c`: Create a new screen window
- `Ctrl+A n`: Switch to the next screen window
- `Ctrl+A p`: Switch to the previous screen window
- `Ctrl+A "`: List all the screen windows

Try creating and switching between multiple screen sessions to get a feel for how it works.
