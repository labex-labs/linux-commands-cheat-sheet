# Modify User Account Properties

In this step, we will learn how to modify user account properties using the `usermod` command in Linux.

The `usermod` command is used to modify an existing user account. We can use it to change the user's login name, home directory, shell, password expiration date, and other properties.

Let's start by modifying the user's full name and shell:

```bash
sudo usermod -c "John Doe" -s /bin/zsh labex
```

Example output:

```
No changes
```

The `-c` option sets the user's full name, and the `-s` option sets the user's login shell to `/bin/zsh`.

Next, let's change the user's home directory:

```bash
sudo usermod -d /home/newuser labex
```

Example output:

```
usermod: user 'labex' does not exist
```

Oops, the user `labex` doesn't exist. Let's create the user first:

```bash
sudo useradd -m -s /bin/zsh labex
```

Now, let's try changing the home directory again:

```bash
sudo usermod -d /home/newuser labex
```

Example output:

```
No changes
```

The `-d` option sets the user's home directory to `/home/newuser`.

Finally, let's disable the user account by locking the password:

```bash
sudo usermod -L labex
```

Example output:

```
No changes
```

The `-L` option locks the user's password, effectively disabling the account.
