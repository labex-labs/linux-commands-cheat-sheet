# Use the exit Command to Terminate a Shell Script

In this step, you will learn how to use the `exit` command to terminate a shell script.

Let's create a simple shell script that demonstrates the usage of the `exit` command.

```bash
nano ~/project/script.sh
```

Add the following content to the script:

```bash
#!/bin/bash

echo "This is the beginning of the script."
exit 1
echo "This line will not be executed."
```

Save and close the file.

Now, let's run the script:

```bash
chmod +x ~/project/script.sh
~/project/script.sh
```

Example output:

```
This is the beginning of the script.
```

As you can see, the script terminated after the `exit 1` command, and the last echo statement was not executed.

The `exit 1` command in the script indicates that the script has encountered an error or failed to execute successfully. The exit status of 1 is commonly used to represent a failure or an error condition.

You can also use the `exit` command to terminate the script with a successful exit status of 0:

```bash
#!/bin/bash

echo "This is the beginning of the script."
exit 0
echo "This line will be executed."
```

In this case, the script will terminate after the `exit 0` command, but the last echo statement will be executed because the script has exited successfully.
