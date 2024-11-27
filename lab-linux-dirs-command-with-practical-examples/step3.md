# Manage the Directory Stack with pushd and popd Commands

In this step, you will learn how to manage the directory stack using the `pushd` and `popd` commands.

The `pushd` command adds the current directory to the top of the directory stack and then changes the current directory to the new directory specified as an argument. For example:

```bash
pushd /tmp
```

This will add `/tmp` to the top of the directory stack and change the current directory to `/tmp`.

You can then use the `popd` command to remove the top directory from the stack and change the current directory to the new top directory. For example:

```bash
popd
```

This will remove the top directory from the stack (which was `/tmp`) and change the current directory to the new top directory.

Let's try some more examples:

```bash
pushd /etc
pushd /var/log
pushd /home/labex/project
dirs -v
```

This will add `/etc`, `/var/log`, and `/home/labex/project` to the directory stack, and then display the stack with line numbers:

```
 0 /home/labex/project
 1 /var/log
 2 /etc
 3 /home/labex/project
```

Now, let's use `popd` to navigate back through the stack:

```bash
popd
popd
popd
dirs -v
```

This will remove the top three directories from the stack, and the output of `dirs -v` should now be:

```
 0 /home/labex/project
```

The `pushd` and `popd` commands provide a convenient way to navigate through directories and manage the directory stack. Experiment with these commands to become more familiar with their usage.
