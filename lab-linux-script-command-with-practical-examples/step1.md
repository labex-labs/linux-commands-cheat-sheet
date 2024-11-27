# Write and Execute a Simple Shell Script

In this step, you will learn how to write and execute a simple shell script. Shell scripts are text files that contain a series of commands that can be executed by the shell (the command-line interface).

First, let's create a new file for our shell script:

```bash
nano ~/project/hello.sh
```

In the nano editor, add the following content to the file:

```bash
#!/bin/bash
echo "Hello, World!"
```

The first line `#!/bin/bash` is called the "shebang" and tells the system to use the Bash shell to execute the script.

To make the script executable, run the following command:

```bash
chmod +x ~/project/hello.sh
```

Now, you can execute the script using the following command:

```bash
~/project/hello.sh
```

Example output:

```
Hello, World!
```

The `~/project/hello.sh` command runs the `hello.sh` script located in the `~/project` directory.
