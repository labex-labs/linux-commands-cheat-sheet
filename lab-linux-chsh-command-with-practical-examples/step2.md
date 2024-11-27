# Change the Default Shell Using chsh

In this step, we will learn how to change the default shell for a user account using the `chsh` command.

First, let's check the current default shell for the `labex` user:

```
sudo chsh -s /bin/bash labex
echo $SHELL
```

Example output:

```
/bin/bash
```

As you can see, the current default shell for the `labex` user is `/bin/bash`.

Now, let's change the default shell to `/bin/zsh`:

```
sudo chsh -s /bin/zsh labex
```

This command will change the default shell for the `labex` user to `/bin/zsh`.

To verify the change, let's check the shell again:

```
echo $SHELL
```

Example output:

```
/bin/zsh
```

The output now shows that the default shell has been changed to `/bin/zsh`.
