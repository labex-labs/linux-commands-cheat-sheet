# Explore the info Command Options and Navigational Techniques

In the previous step, we learned about the basic purpose and usage of the `info` command. Now, let's explore the various options and navigational techniques available within the `info` command.

First, let's take a look at some of the common options for the `info` command:

```
$ info --help
Usage: info [OPTION]... [MENU-ITEM...]
Start the Info tutorial and read documentation for MENU-ITEM.

Options:
  -k, --apropos=STRING       look up STRING in all indices of all manuals
  -d, --directory=DIR        add DIR to INFOPATH
  -f, --file=FILENAME        specify Info file to visit
  -n, --node=NODENAME        specify nodes in first visited Info file
  -o, --output=FILENAME      output selected nodes to FILENAME
  -R, --raw-escapes          pass through escape sequences (for debugging)
  -P, --pager=PROGRAM        use PROGRAM as the pager
  --vi-keys                  use vi-like key bindings
  -h, --help                 display this help and exit
  -V, --version              display version information and exit
```

As you can see, the `info` command supports various options that allow you to customize its behavior, such as specifying the Info file to visit, the node to start from, or the pager program to use.

Now, let's explore some of the key navigational commands within the `info` command:

```
$ info
```

Once you're in the `info` command, you can use the following commands to navigate:

- `n`: Move to the next node
- `p`: Move to the previous node
- `u`: Move up to the parent node
- `d`: Move to the directory node (top-level menu)
- `l`: Go back to the last node you visited
- `m`: Go to a menu item by name
- `g`: Go to a node by name
- `s`: Search for a string within the current node
- `?`: Display a list of all available commands

Try out these navigation commands and explore the various topics and nodes within the `info` system. Remember, you can always return to the top-level directory by typing `d`.
