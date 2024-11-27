# Verify the Changed Default Shell

In this final step, we will verify that the default shell for the `labex` user has been changed to `/bin/zsh`.

First, let's check the current shell:

```
echo $SHELL
```

Example output:

```
/bin/zsh
```

As you can see, the default shell is now `/bin/zsh`, confirming that the change was successful.

You can also check the user's shell information in the `/etc/passwd` file:

```
sudo cat /etc/passwd | grep labex
```

Example output:

```
labex:x:1000:1000:labex,,,:/home/labex:/bin/zsh
```

The output shows that the shell for the `labex` user is set to `/bin/zsh`.

Finally, you can log out and log back in as the `labex` user to ensure that the new default shell is used.
