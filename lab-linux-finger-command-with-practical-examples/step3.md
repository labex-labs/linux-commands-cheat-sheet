# Customizing the finger Command Output

In this final step, we will learn how to customize the output of the `finger` command to display only the information we need.

By default, the `finger` command displays a lot of information about each user, which may not always be necessary. We can customize the output by using the `-l` (long) or `-p` (personal) options.

To display a more concise user information, let's use the `-l` option:

```bash
finger -l labex
```

Example output:

```
Login: labex                             Name: Labex User
Directory: /home/labex                   Shell: /bin/bash
On since Apr 11 12:34 (UTC) on pts/0 from 192.168.1.100
No mail.
No plan.
```

The `-l` option displays the user's login name, real name, home directory, shell, login time, and terminal information.

If we only want to see the user's login name, real name, and login time, we can use the `-p` option:

```bash
finger -p labex
```

Example output:

```
labex Labex User    Apr 11 12:34
```

The `-p` option displays a more compact user information format, including just the login name, real name, and login time.

By customizing the `finger` command output, you can quickly access the user information that is most relevant to your needs.
