# Understand the chage Command

In this step, you will learn about the `chage` command in Linux, which is used to modify a user's password expiration date and other password aging information.

The `chage` command allows you to view and modify the following password aging information for a user account:

- Last password change date
- Password expiration date
- Password expiration warning period
- Minimum number of days between password changes
- Maximum number of days between password changes

To view the current password aging information for a user, you can use the `chage` command with the `-l` option:

```
$ sudo chage -l labex
Last password change                                    : Jan 01, 2023
Password expires                                        : never
Password inactive                                       : never
Account expires                                         : never
Minimum number of days between password change          : 0
Maximum number of days between password change          : 99999
Number of days of warning before password expires       : 7
```

This output shows that the user `labex` has no password expiration date set, and the password will never expire.

To modify the password expiration date for a user, you can use the `chage` command with the `-E` option followed by the new expiration date in the format `YYYY-MM-DD`. For example, to set the password expiration date for the `labex` user to 30 days from now:

```
$ sudo chage -E $(date -d "+30 days" '+%Y-%m-%d') labex
```

Example output:

```
$ sudo chage -l labex
Last password change                                    : Jan 01, 2023
Password expires                                        : Feb 01, 2023
Password inactive                                       : never
Account expires                                         : never
Minimum number of days between password change          : 0
Maximum number of days between password change          : 99999
Number of days of warning before password expires       : 7
```

The `chage` command provides several other options to manage password aging policies. You can explore them using the `man chage` command.
