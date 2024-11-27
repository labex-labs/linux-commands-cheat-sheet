# Analyze ftpcount Output and Understand Session Details

In this final step, we will explore the detailed output of the `ftpcount` command and understand the information it provides about active FTP sessions.

First, let's start a new FTP session:

```bash
ftp localhost
```

In the FTP prompt, enter the following commands:

```
user labex
[password]
ls
exit
```

Now, let's run `ftpcount` again to see the updated session details:

```bash
ftpcount
```

Example output:

```
There are 2 FTP sessions active:

Session 1:
  User: labex
  Remote host: 172.17.0.1
  Connection time: 00:00:12

Session 2:
  User: labex
  Remote host: 172.17.0.1
  Connection time: 00:00:05
```

The `ftpcount` output now provides more detailed information about the active FTP sessions:

- The total number of active FTP sessions (2 in this example)
- For each session:
  - The user logged in
  - The remote host IP address
  - The connection time (in hours:minutes:seconds)

This information can be useful for monitoring and troubleshooting FTP activity on your system.
