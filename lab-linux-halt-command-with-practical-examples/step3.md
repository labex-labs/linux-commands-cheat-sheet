# Explore Additional halt Command Options

In this final step, we will explore some additional options available with the `halt` command.

One useful option is the `-h` (or `--help`) flag, which displays the help information for the `halt` command:

```bash
sudo halt --help
```

Example output:

```
Usage: halt [options]
  -a, --no-wall            do not write a message to all users
  -f, --force              force immediate halt
  -i, --interactive        ask for confirmation before halt
  -n, --no-sync            do not sync before halt
  -p, --poweroff           power-off the machine
  -w, --wait               wait for halt
  -h, --help               display this help and exit
  -V, --version            output version information and exit
```

This output shows the various options available with the `halt` command, such as forcing an immediate halt, powering off the machine, and waiting for the halt process to complete.

Another useful option is the `-i` (or `--interactive`) flag, which prompts the user for confirmation before executing the halt command:

```bash
sudo halt -i
```

Example output:

```
Broadcast message from root@labex (pts/0) (Fri Mar 31 12:34:56 2023):

The system is going down for halt NOW!
Proceed with halt (y/n)?
```

This allows the user to cancel the halt process if needed.

Finally, you can use the `-w` (or `--wait`) option to wait for the halt process to complete before the command returns:

```bash
sudo halt -w
```

This ensures that the system has been fully shut down before the command finishes.
