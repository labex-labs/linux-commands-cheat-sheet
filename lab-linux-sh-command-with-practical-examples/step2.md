# Utilize Shell Variables and Parameters

In this step, you will learn how to work with shell variables and parameters in your scripts.

First, let's create a new script called `args.sh` that demonstrates how to use command-line arguments:

```bash
cd ~/project
nano args.sh
```

Add the following content:

```bash
#!/bin/bash
echo "Positional parameter 1: $1"
echo "Positional parameter 2: $2"
echo "All parameters: $@"
echo "Number of parameters: $#"
```

Save the file and make it executable:

```bash
chmod +x args.sh
```

Now, run the script with some arguments:

```bash
./args.sh apple banana cherry
```

Example output:

```
Positional parameter 1: apple
Positional parameter 2: banana
All parameters: apple banana cherry
Number of parameters: 3
```

In this example, we accessed the command-line arguments using the special variables `$1`, `$2`, `$@`, and `$#`.

Next, let's create a script that demonstrates the use of environment variables:

```bash
nano env_vars.sh
```

Add the following content:

```bash
#!/bin/bash
echo "User's home directory: $HOME"
echo "Current working directory: $PWD"
echo "User's shell: $SHELL"
```

Save the file, make it executable, and run it:

```bash
chmod +x env_vars.sh
./env_vars.sh
```

Example output:

```
User's home directory: /home/labex
Current working directory: /home/labex/project
User's shell: /bin/bash
```

In this example, we used the predefined environment variables `$HOME`, `$PWD`, and `$SHELL`.
