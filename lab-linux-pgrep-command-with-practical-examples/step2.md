# Use pgrep to Search for Processes by Name

In this step, you will learn how to use the `pgrep` command to search for processes by their name.

The basic syntax for using `pgrep` to search for processes by name is:

```bash
pgrep <process_name>
```

This will return the PID(s) of the process(es) that match the specified `<process_name>`.

You can also use additional options with `pgrep` to refine your search. For example:

```bash
# Search for processes with a name that starts with "web"
pgrep -f ^web

# Search for processes owned by the "labex" user
pgrep -u labex

# Search for processes with a name that contains "nginx"
pgrep -l nginx
```

The `-f` option allows you to search for processes based on the full command line, not just the process name. The `-u` option lets you search for processes owned by a specific user, and the `-l` option prints the process name along with the PID.

Example output:

```
1234 webserver
5678 nginx
9012 webapplication
```

This output shows the PIDs and process names of the matching processes.
