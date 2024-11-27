# Introduction to jed Text Editor

In this step, we will introduce the jed text editor, a powerful and versatile tool for text processing and editing on Linux systems. jed is a lightweight and efficient editor that provides a wide range of features and customization options.

First, let's install the jed package on our Ubuntu 22.04 Docker container:

```bash
sudo apt-get update
sudo apt-get install -y jed
```

Example output:

```
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  libslang2
The following NEW packages will be installed:
  jed libslang2
0 upgraded, 2 newly installed, 0 to remove and 0 not upgraded.
Need to get 1,105 kB of archives.
After this operation, 3,746 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
...
```

Now that we have jed installed, let's explore some basic commands and navigation:

- To start the jed editor, run the following command:

```bash
jed
```

This will open the jed editor in the terminal.

- To exit the jed editor, press `Ctrl+X` and then `y` to save the changes (or `n` to discard the changes).

- To open a file in jed, use the following command:

```bash
jed file.txt
```

This will open the `file.txt` in the jed editor.

- To navigate within the jed editor, use the following keys:

  - `Ctrl+N` or `↓` to move down
  - `Ctrl+P` or `↑` to move up
  - `Ctrl+F` or `→` to move right
  - `Ctrl+B` or `←` to move left

- To save the current file, press `Ctrl+X` and then `s`.

- To search for text within the file, press `Ctrl+S` and enter the search term.

- To replace text, press `Ctrl+Q` and then `r`, enter the search term, and then the replacement text.

That's a basic introduction to the jed text editor. In the next step, we will explore more advanced jed commands and customization options.
