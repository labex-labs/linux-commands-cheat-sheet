# Enforce Password Expiration Policy

In this step, you will learn how to enforce a password expiration policy for user accounts using the `chage` command.

First, let's check the current password expiration policy for the `labex` user:

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

As you can see, the password for the `labex` user is set to expire on April 1, 2023.

To enforce a password expiration policy, you can use the `chage` command with the following options:

- `-M`: Set the maximum number of days a password is valid
- `-m`: Set the minimum number of days between password changes
- `-W`: Set the number of days of warning before a password expires

For example, to set the password expiration policy for the `labex` user as follows:

- Maximum password age: 90 days
- Minimum password age: 7 days
- Password expiration warning: 7 days

You can run the following commands:

```
$ sudo chage -M 90 -m 7 -W 7 labex
```

Now, let's verify the updated password expiration policy:

```
$ sudo chage -l labex
Last password change                                    : Jan 01, 2023
Password expires                                        : Apr 01, 2023
Password inactive                                       : never
Account expires                                         : never
Minimum number of days between password change          : 7
Maximum number of days between password change          : 90
Number of days of warning before password expires       : 7
```

The output shows that the password expiration policy has been updated as expected.
