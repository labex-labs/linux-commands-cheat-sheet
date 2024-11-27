# Filter the Output of the who Command

In this step, we will learn how to filter the output of the `who` command to get specific information.

The `who` command can generate a lot of output, especially on a system with multiple users. To filter the output, we can use various command-line tools, such as `grep`, `awk`, and `cut`.

Let's start by filtering the output to show only the usernames:

```bash
who | awk '{print $1}'
```

Example output:

```
labex
```

The `awk '{print $1}'` command extracts the first field (the username) from the `who` command output.

Next, let's filter the output to show only the login times:

```bash
who | awk '{print $4, $5}'
```

Example output:

```
2023-04-11 09:15
```

The `awk '{print $4, $5}'` command extracts the fourth and fifth fields (the login date and time) from the `who` command output.

You can also use `grep` to filter the output based on specific criteria. For example, to show only the users logged in from a specific remote host:

```bash
who | grep '(172.17.0.1)'
```

Example output:

```
labex   pts/0        2023-04-11 09:15 (172.17.0.1)
```

The `grep '(172.17.0.1)'` command filters the output to show only the lines that contain the string `(172.17.0.1)`, which represents the remote host.

These are just a few examples of how you can filter the output of the `who` command. You can combine these techniques to get the specific information you need.
