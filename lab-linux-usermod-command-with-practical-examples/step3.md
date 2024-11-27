# Disable User Account Expiration

In this step, we will learn how to disable the expiration date for a user account using the `usermod` command.

By default, user accounts in Linux do not have an expiration date. However, you can set an expiration date for a user account, after which the account will be disabled.

To disable the expiration date for the `labex` user, we can use the `usermod` command with the `-e` option:

```bash
sudo usermod -e "" labex
```

Example output:

```
No changes
```

The `-e` option sets the expiration date for the user account. By setting it to an empty string `""`, we effectively disable the expiration date.

To verify that the expiration date has been disabled, we can use the `chage` command to display the user's account information:

```bash
sudo chage -l labex
```

Example output:

```
Last password change                                    : May 15, 2023
Password expires                                        : never
Password inactive                                       : never
Account expires                                         : never
Minimum number of days between password change          : 0
Maximum number of days between password change          : 99999
Number of days of warning before password expires       : 7
```

As you can see, the "Account expires" field is set to "never", indicating that the user account expiration has been disabled.

Now, let's create a file and check the ownership:

```bash
touch ~/project/test2.txt
ls -l ~/project/test2.txt
```

Example output:

```
-rw-r--r-- 1 labex developers 0 May 15 12:34 /home/labex/project/test2.txt
```

The file is owned by the `labex` user and the "developers" group, as expected.
