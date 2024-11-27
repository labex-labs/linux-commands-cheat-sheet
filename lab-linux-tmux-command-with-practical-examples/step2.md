# Navigating and Managing tmux Sessions

In this step, you will learn how to navigate and manage tmux sessions, including creating new sessions, switching between sessions, and closing sessions.

First, let's create a new tmux session:

```
tmux new -s my-session
```

This will create a new tmux session named "my-session". You can now see the new session when you run `tmux ls`:

```
my-session: 1 windows (created Tue Apr 18 16:01:23 2023) [80x24]
```

To switch between tmux sessions, use the following commands:

- `tmux switch -t my-session`: Switch to the "my-session" session.
- `tmux a -t my-session`: Attach to the "my-session" session.

To create a new window within the current tmux session, press `Ctrl+b` followed by `c`.

To switch between windows, use the following commands:

- `Ctrl+b` followed by `p`: Switch to the previous window.
- `Ctrl+b` followed by `n`: Switch to the next window.
- `Ctrl+b` followed by `w`: See a list of all windows and select one.

To close the current tmux session, press `Ctrl+b` followed by `d` to detach from the session. You can then reattach to the session later using `tmux a -t my-session`.

To kill a tmux session, use the following command:

```
tmux kill-session -t my-session
```

This will terminate the "my-session" session.
