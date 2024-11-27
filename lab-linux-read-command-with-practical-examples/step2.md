# Read User Input and Store it in a Variable

In this step, you will learn how to use the `read` command to capture user input and store it in a variable.

To read user input and store it in a variable, you can use the following syntax:

```
read variable_name
```

Here, `variable_name` is the name of the variable where the user input will be stored.

Example:

```
echo "What is your favorite color?"
read favorite_color
echo "Your favorite color is $favorite_color."
```

Example output:

```
What is your favorite color?
blue
Your favorite color is blue.
```

In this example, the user is prompted to enter their favorite color, and the input is stored in the `favorite_color` variable. The `echo` command then uses the value of the `favorite_color` variable to display a message.

You can also use the `-p` option with the `read` command to display a prompt for the user:

```
read -p "Enter your age: " age
echo "You are $age years old."
```

Example output:

```
Enter your age: 30
You are 30 years old.
```

In this example, the `-p` option is used to display the "Enter your age: " prompt before waiting for user input, and the input is stored in the `age` variable.
