# Automate Terminal Clearing with a Bash Script

In this step, you will learn how to automate the process of clearing the terminal screen using a Bash script.

First, let's create a new Bash script called `clear.sh` in the `~/project` directory:

```
$ cd ~/project
$ nano clear.sh
```

Add the following content to the script:

```bash
#!/bin/bash

clear
echo "The terminal has been cleared."
```

Save and close the file.

Now, make the script executable:

```
$ chmod +x clear.sh
```

You can now run the script to clear the terminal screen:

```
$ ./clear.sh
```

Example output:

```
[The terminal screen is now cleared]
The terminal has been cleared.
```

By creating a Bash script, you can easily automate the process of clearing the terminal screen. This can be particularly useful when you need to clear the screen before or after running a series of commands or scripts, making the output more organized and easier to read.

You can also add this script to your shell's startup configuration (e.g., `.bashrc` or `.zshrc`) to automatically clear the terminal screen every time you open a new terminal session.
