# Understand the Basics of Shell Scripting

In this step, you will learn the basics of shell scripting in Linux. Shell scripts are small programs written in the shell language that can automate various tasks and streamline your workflow.

First, let's create a new shell script file using the nano text editor:

```bash
cd ~/project
nano hello.sh
```

In the file, add the following content:

```bash
#!/bin/bash
echo "Hello, World!"
```

The first line `#!/bin/bash` is called the "shebang" and tells the system to use the Bash shell to execute the script.

To make the script executable, run:

```bash
chmod +x hello.sh
```

Now, you can run the script using:

```bash
./hello.sh
```

Example output:

```
Hello, World!
```

The `echo` command is used to print the "Hello, World!" message to the console.

Next, let's explore some basic shell variables. Create a new script called `variables.sh`:

```bash
nano variables.sh
```

Add the following content:

```bash
#!/bin/bash
NAME="John Doe"
echo "My name is $NAME"
```

Run the script:

```bash
chmod +x variables.sh
./variables.sh
```

Example output:

```
My name is John Doe
```

In this example, we defined a variable `NAME` and used it in the `echo` command.
