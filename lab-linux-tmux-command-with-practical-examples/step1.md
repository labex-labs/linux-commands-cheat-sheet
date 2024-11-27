# Introduction to tmux

In this step, you will learn about the tmux command-line tool and how it can help you manage and control multiple terminal sessions on your Linux system.

Tmux, short for "Terminal Multiplexer", is a powerful tool that allows you to create, access, and switch between multiple terminal sessions within a single window. This can be particularly useful when working on complex tasks that require you to have multiple terminal windows open simultaneously.

To install tmux, run the following command:

```
sudo apt-get update
sudo apt-get install -y tmux
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libevent-2.1-7 libncurses6 libncursesw6 libx11-6 libxcb1 libxdmcp6 libxext6 libxmuu1
Suggested packages:
  xdg-utils
The following NEW packages will be installed:
  libevent-2.1-7 libncurses6 libncursesw6 libx11-6 libxcb1 libxdmcp6 libxext6 libxmuu1 tmux
0 upgraded, 9 newly installed, 0 to remove and 0 not upgraded.
```

Now that you have tmux installed, let's explore some basic commands to get started.

To start a new tmux session, simply run the `tmux` command:

```
tmux
```

This will create a new tmux session and you will see a status bar at the bottom of the terminal window.

Example output:

```
[No output]
```

To detach from the current tmux session, press `Ctrl+b` followed by `d`. This will leave the session running in the background, allowing you to return to it later.

To list all the running tmux sessions, use the following command:

```
tmux ls
```

Example output:

```
0: 1 windows (created Tue Apr 18 15:45:49 2023) [80x24]
```

This shows that you have one running tmux session.
