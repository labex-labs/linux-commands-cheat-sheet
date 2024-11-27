# Remove User's Home Directory and Mail Spool

In this step, we will learn how to remove a user's home directory and mail spool when deleting a user account.

By default, the `userdel` command does not remove the user's home directory and mail spool. To remove them, you need to use the `-r` option.

Let's create a new user account and then delete it with the `-r` option:

```bash
sudo useradd -m testuser
sudo userdel -r testuser
```

Example output:

```
Removing user 'testuser'...
Removing home directory '/home/testuser'...
```

In this example, the `testuser` account is deleted, and their home directory `/home/testuser` is also removed.

If the user has a mail spool, it will be removed as well. The mail spool is typically located in the `/var/spool/mail/` directory, named after the username.

You can verify the removal of the user's home directory and mail spool by checking the respective directories:

```bash
ls -l /home
ls -l /var/spool/mail
```

The output should not show any trace of the deleted user's home directory or mail spool.
