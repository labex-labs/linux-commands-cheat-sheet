# Understand the chsh Command

In this step, we will learn about the `chsh` command, which is used to change the default shell for a user account in a Linux system.

The `chsh` command allows you to change the default shell, which is the program that is executed when you log in to your user account. The default shell is typically set to `/bin/bash`, but you can change it to any other shell installed on your system, such as `/bin/zsh`, `/bin/fish`, or `/bin/tcsh`.

To use the `chsh` command, simply run the following command in the terminal:

```
sudo chsh -s /bin/zsh labex
```

This command will change the default shell for the `labex` user to `/bin/zsh`.

Example output:

```
Changing shell for labex.
chsh: shell '/bin/zsh' does not exist
```

In this example, the shell `/bin/zsh` does not exist on the system, so the command will fail. Make sure to specify a valid shell that is installed on your system.

Once you have changed the default shell, you can verify the change by running the following command:

```
echo $SHELL
```

This will output the current shell that is being used by the user.

Example output:

```
/bin/bash
```

In this example, the default shell is still `/bin/bash`, so the change has not been applied yet. You may need to log out and log back in for the change to take effect.
