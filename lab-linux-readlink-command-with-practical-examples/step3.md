# Practice Resolving Symbolic Links with the readlink Command

In this final step, you will practice resolving symbolic links using the `readlink` command.

First, let's create a few more symbolic links in the `~/project` directory:

```bash
cd ~/project
ln -s /bin/ls ls_link
ln -s ls_link nested_link
```

Now, let's use the `readlink` command to resolve the paths of these symbolic links:

```bash
readlink ls_link
readlink nested_link
```

Example output:

```
/bin/ls
ls_link
```

As you can see, the `readlink` command displays the actual path that the `ls_link` symbolic link points to, which is `/bin/ls`. For the `nested_link` symbolic link, `readlink` shows that it points to the `ls_link` symbolic link.

To follow the chain of symbolic links and get the final target, you can use the `-f` option:

```bash
readlink -f nested_link
```

Example output:

```
/bin/ls
```

The `-f` option follows all symbolic links and returns the final target of the link chain.

Try practicing with these symbolic links and the `readlink` command to become more familiar with resolving symbolic links in Linux.
