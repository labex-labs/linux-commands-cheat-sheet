# Create and Manage Email Aliases Using newaliases

In this step, you will learn how to create and manage email aliases using the `newaliases` command.

First, let's add another email alias to the `/etc/aliases` file:

```bash
sudo nano /etc/aliases
```

Add the following line to the file:

```
info: labex
```

This creates an email alias that maps the "info" email address to the "labex" user account.

After saving the changes, run the `newaliases` command to update the mail delivery system's database:

```bash
sudo newaliases
```

Example output:

```
newaliases: rebuilding /etc/aliases.db
```

Now, let's verify that the new alias has been added to the system:

```bash
sudo cat /etc/aliases
```

Example output:

```
# See man 5 aliases for format
# postmaster: root
support: labex
info: labex
```

As you can see, the new "info" alias has been added to the `/etc/aliases` file.

To remove an email alias, simply delete the corresponding line from the `/etc/aliases` file and run the `newaliases` command again to update the database.

For example, to remove the "info" alias, you would:

1. Open the `/etc/aliases` file with `sudo nano /etc/aliases`.
2. Delete the line `info: labex`.
3. Save the file and run `sudo newaliases` to update the database.
