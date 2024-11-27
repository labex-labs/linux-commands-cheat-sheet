# Perform File and Directory Operations using Midnight Commander

In this step, we will practice performing various file and directory operations using the Midnight Commander (mc) file manager.

First, let's create a new directory in the `~/project` directory:

```bash
mkdir ~/project/mc_demo
```

Example output:

```
labex@ubuntu:~/project$ mkdir ~/project/mc_demo
labex@ubuntu:~/project$
```

Now, let's navigate to the newly created directory using the Midnight Commander:

```bash
mc
```

This will open the Midnight Commander interface. Use the arrow keys to navigate to the `mc_demo` directory and press Enter to enter the directory.

Next, let's create a new file in the `mc_demo` directory:

1. Press F7 to create a new file.
2. Enter the file name, e.g., `example.txt`, and press Enter.
3. The new file will be created, and you can now edit its contents using the built-in editor.

Now, let's copy a file using the Midnight Commander:

1. Navigate to the file you want to copy (e.g., `example.txt`) using the arrow keys.
2. Press F5 to copy the file.
3. Enter the destination path (e.g., `~/project/mc_demo/copied_file.txt`) and press Enter.

Finally, let's delete a file using the Midnight Commander:

1. Navigate to the file you want to delete (e.g., `copied_file.txt`) using the arrow keys.
2. Press F8 to delete the file.
3. Confirm the deletion by pressing Enter.

You have now practiced creating, copying, and deleting files and directories using the Midnight Commander file manager.
