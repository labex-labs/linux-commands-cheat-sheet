# Understand the gpasswd Command

In this step, we will learn about the `gpasswd` command in Linux, which is used to administer the /etc/group file and the /etc/gshadow file. The `gpasswd` command allows you to add users to a group, remove users from a group, and manage group passwords.

To view the available options for the `gpasswd` command, you can run:

```
$ gpasswd --help
Usage: gpasswd [options] GROUP
Options:
  -a, --add USER                add USER to GROUP
  -d, --delete USER             remove USER from GROUP
  -h, --help                    display this help message and exit
  -M, --members USER[,USER...]  set the list of members of GROUP
  -r, --remove-password         remove the password from GROUP
  -R, --restrict                restrict access to GROUP
  -A, --administrators USER[,USER...]
                                set the list of administrators for GROUP
  -P, --password PASSWORD       use this password for the group
```

The most commonly used options are:

- `-a, --add USER`: Add a user to the specified group.
- `-d, --delete USER`: Remove a user from the specified group.
- `-M, --members USER[,USER...]`: Set the list of members for the group.

Let's explore some examples of using the `gpasswd` command.
