# Implement Conditional Statements and Loops in Shell Scripts

In this step, you will learn how to use conditional statements and loops in shell scripts. Conditional statements allow you to execute different code based on certain conditions, while loops enable you to repeat a block of code multiple times.

Let's create a new file for our shell script:

```bash
nano ~/project/conditional_loops.sh
```

In the nano editor, add the following content to the file:

```bash
#!/bin/bash

# Conditional statement
age=18
if [ $age -ge 18 ]; then
  echo "You are an adult."
else
  echo "You are a minor."
fi

# Loop
echo "Counting from 1 to 5:"
for i in 1 2 3 4 5; do
  echo "$i"
done
```

Save the file and make it executable:

```bash
chmod +x ~/project/conditional_loops.sh
```

Now, you can execute the script:

```bash
~/project/conditional_loops.sh
```

Example output:

```
You are a minor.
Counting from 1 to 5:
1
2
3
4
5
```

In the first part of the script, we use an `if` statement to check if the `age` variable is greater than or equal to 18. Based on the result, we print different messages.

In the second part, we use a `for` loop to iterate from 1 to 5, printing each number.
