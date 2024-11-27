# Customize the Default Applications with xdg-open

In this step, you will learn how to use the `xdg-open` command to customize the default applications for different file types and directories.

The `xdg-open` command uses a set of configuration files to determine the default applications for different file types and directories. These configuration files are located in the user's home directory and can be modified to change the default applications.

Let's start by creating a new text file and associating it with a specific application:

```bash
touch ~/project/custom.txt
xdg-open -a gedit ~/project/custom.txt
```

This will open the `custom.txt` file in the `gedit` text editor, and also set `gedit` as the default application for `.txt` files.

You can also set the default application for a directory. For example, to set the default file manager for the `~/project` directory, you can run:

```bash
xdg-open -d -a nautilus ~/project
```

This will set the `nautilus` file manager as the default application for the `~/project` directory.

To view the current default applications, you can use the `xdg-mime` command:

```bash
xdg-mime query default text/plain
xdg-mime query default inode/directory
```

This will show the default applications for text files and directories, respectively.

You can also use the `xdg-settings` command to manage other desktop-related settings, such as the default web browser, email client, and more.

In the next step, you will learn how to use the `xdg-open` command to integrate your Linux desktop with various applications and file types.
