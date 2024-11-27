# Utilize the whoami Command in Shell Scripts

In this step, you will learn how to utilize the `whoami` command within shell scripts to automate tasks and manage user permissions.

Let's start by creating a simple shell script that uses the `whoami` command:

```bash
#!/bin/bash

echo "The current user is: $(whoami)"

if [ "$(whoami)" == "labex" ]; then
  echo "You are the labex user."
else
  echo "You are not the labex user."
fi
```

Save the script as `check_user_script.sh` and make it executable:

```bash
chmod +x check_user_script.sh
```

Now, run the script:

```bash
./check_user_script.sh
```

Example output:

```
The current user is: labex
You are the labex user.
```

In this script, we first use the `whoami` command to get the current user's name and store it in a variable. Then, we use an `if` statement to check if the user is `labex` and print a corresponding message.

This is just a simple example, but you can use the `whoami` command in more complex shell scripts to automate tasks or enforce user permissions. For instance, you could use the `whoami` command to determine the user's identity and then perform different actions based on the user's permissions.

Let's try another example. Imagine you have a script that needs to be run with elevated privileges. You can use the `whoami` command to check if the current user has the necessary permissions:

```bash
#!/bin/bash

if [ "$(whoami)" == "root" ]; then
  echo "Performing administrative task..."
  # Add your administrative task here
else
  echo "You do not have permission to run this script."
  exit 1
fi
```

Save the script as `admin_task.sh` and make it executable:

```bash
chmod +x admin_task.sh
```

Now, try running the script as the `labex` user:

```bash
./admin_task.sh
```

Example output:

```
You do not have permission to run this script.
```

As you can see, the script checks if the current user is `root` (the administrative user) and performs the task only if the user has the necessary permissions.

By incorporating the `whoami` command into your shell scripts, you can create more robust and secure automation tools that adapt to the user's identity and permissions.
