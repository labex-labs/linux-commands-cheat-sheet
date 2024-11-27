# Open Files and Directories with xdg-open

In this step, you will learn how to use the `xdg-open` command to open files and directories with their default applications.

First, let's create a sample text file in the `~/project` directory:

```bash
echo "This is a sample text file." > ~/project/sample.txt
```

Now, you can use the `xdg-open` command to open the file with the default text editor:

```bash
xdg-open ~/project/sample.txt
```

This will open the `sample.txt` file in the default text editor application on your system.

Similarly, you can use `xdg-open` to open directories with the default file manager:

```bash
xdg-open ~/project
```

This will open the `~/project` directory in the default file manager application on your system.

You can also use `xdg-open` to open files and directories with specific applications. For example, to open the `sample.txt` file with the `nano` text editor, you can run:

```bash
xdg-open -a nano ~/project/sample.txt
```

This will open the `sample.txt` file in the `nano` text editor.

The `xdg-open` command is a versatile tool that can be used to integrate your Linux desktop with various applications and file types. In the next step, you will learn how to customize the default applications for different file types and directories.
