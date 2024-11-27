# Implement Conditional Statements and Loops

In this step, you will learn how to use conditional statements and loops in your shell scripts.

First, let's create a script that demonstrates the use of `if-else` statements:

```bash
cd ~/project
nano if_else.sh
```

Add the following content:

```bash
#!/bin/bash
NUM=10
if [ $NUM -gt 0 ]; then
  echo "The number is positive."
else
  echo "The number is non-positive."
fi
```

Save the file, make it executable, and run it:

```bash
chmod +x if_else.sh
./if_else.sh
```

Example output:

```
The number is positive.
```

In this example, we used the `if-else` statement to check if the value of the `NUM` variable is greater than 0.

Next, let's create a script that demonstrates the use of `for` loops:

```bash
nano for_loop.sh
```

Add the following content:

```bash
#!/bin/bash
for i in 1 2 3 4 5; do
  echo "Iteration $i"
done
```

Save the file, make it executable, and run it:

```bash
chmod +x for_loop.sh
./for_loop.sh
```

Example output:

```
Iteration 1
Iteration 2
Iteration 3
Iteration 4
Iteration 5
```

In this example, we used a `for` loop to iterate over a list of numbers from 1 to 5.
