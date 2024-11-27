# Modify User Password Expiration Date

In this step, you will learn how to modify the password expiration date for a user account using the `chage` command.

First, let's check the current password expiration date for the `labex` user:

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

As you can see, the password for the `labex` user is set to expire on February 1, 2023.

To modify the password expiration date, you can use the `chage` command with the `-E` option followed by the new expiration date in the format `YYYY-MM-DD`. For example, to set the password expiration date to 90 days from now:

```
$ sudo chage -E $(date -d "+90 days" '+%Y-%m-%d') labex
```

Now, let's verify the new password expiration date:

```
$ sudo chage -l labex
Last password change                                    : Jan 01, 2023
Password expires                                        : Apr 01, 2023
Password inactive                                       : never
Account expires                                         : never
Minimum number of days between password change          : 0
Maximum number of days between password change          : 99999
Number of days of warning before password expires       : 7
```

The output shows that the password expiration date has been updated to April 1, 2023.
