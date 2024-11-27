# Explore the Directory Stack Using the dirs Command

In this step, you will learn how to explore and manipulate the directory stack using the `dirs` command.

First, let's review the current state of the directory stack:

```bash
dirs
```

You should see the following output:

```
 /etc
 /var/log
 /tmp
 /home/labex/project
```

The `dirs` command displays the current contents of the directory stack, with the most recently added directory at the top.

Now, let's explore some additional options for the `dirs` command:

```bash
dirs -v
```

This will display the directory stack with line numbers:

```
 0 /etc
 1 /var/log
 2 /tmp
 3 /home/labex/project
```

The `-v` option adds line numbers to the output, making it easier to reference specific directories in the stack.

You can also use the `dirs` command to navigate the directory stack. For example, to change to the directory at index 1 (in this case, `/var/log`), you can use the following command:

```bash
cd +1
```

This will change the current directory to `/var/log`.

To navigate back to the previous directory, you can use:

```bash
cd -
```

This will change the current directory to the previous one in the stack, which is `/etc`.

Try experimenting with the `dirs` command and the `cd +n` and `cd -` commands to navigate the directory stack.
