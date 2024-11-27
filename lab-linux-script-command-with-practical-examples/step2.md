# Use Variables and Command Substitution in Shell Scripts

In this step, you will learn how to use variables and command substitution in shell scripts. Variables allow you to store and reuse values, while command substitution enables you to incorporate the output of a command into your script.

First, let's create a new file for our shell script:

```bash
nano ~/project/variables.sh
```

In the nano editor, add the following content to the file:

```bash
#!/bin/bash

# Assign a value to a variable
name="John Doe"

# Use the variable in an echo statement
echo "Hello, $name!"

# Perform command substitution
current_date=$(date)
echo "The current date is: $current_date"
```

Save the file and make it executable:

```bash
chmod +x ~/project/variables.sh
```

Now, you can execute the script:

```bash
~/project/variables.sh
```

Example output:

```
Hello, John Doe!
The current date is: Fri Apr 14 12:34:56 UTC 2023
```

In the script, we first assign a value to the `name` variable using the assignment operator `=`. We then use the variable in an `echo` statement by prefixing it with a `$`.

The second part of the script demonstrates command substitution. The `$(date)` command is executed, and its output is stored in the `current_date` variable. We then use this variable in another `echo` statement.
