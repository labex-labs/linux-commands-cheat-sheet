# Understand the Purpose of the newaliases Command

In this step, you will learn about the purpose and usage of the `newaliases` command in Linux. The `newaliases` command is used to rebuild the database used by the mail delivery system for the aliases defined in the `/etc/aliases` file.

The `/etc/aliases` file is a configuration file that maps email addresses to local user accounts or other email addresses. When you create or modify email aliases in this file, you need to run the `newaliases` command to update the mail delivery system's database with the new or changed aliases.

Let's start by checking the current aliases defined in the system:

```bash
sudo cat /etc/aliases
```

Example output:

```
# See man 5 aliases for format
# postmaster: root
```

As you can see, the `/etc/aliases` file is currently empty, except for a commented-out example.

Now, let's add a new email alias using the `nano` text editor:

```bash
sudo nano /etc/aliases
```

Add the following line to the file:

```
support: labex
```

This creates an email alias that maps the "support" email address to the "labex" user account.

After saving the changes, run the `newaliases` command to update the mail delivery system's database:

```bash
sudo newaliases
```

Example output:

```
newaliases: rebuilding /etc/aliases.db
```

The `newaliases` command has updated the database file `/etc/aliases.db` to reflect the new email alias.
