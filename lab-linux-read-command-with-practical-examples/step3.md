# Validate User Input with the read Command

In this step, you will learn how to use the `read` command to validate user input.

One common way to validate user input is to use a `while` loop with the `read` command. This allows you to keep prompting the user for input until they provide a valid response.

Example:

```
while true; do
    read -p "Enter a number between 1 and 10: " num
    if [[ "$num" -ge 1 && "$num" -le 10 ]]; then
        echo "You entered: $num"
        break
    else
        echo "Invalid input. Please try again."
    fi
done
```

Example output:

```
Enter a number between 1 and 10: 15
Invalid input. Please try again.
Enter a number between 1 and 10: 7
You entered: 7
```

In this example, the `read` command is used inside a `while` loop to continuously prompt the user for input until they enter a number between 1 and 10. The `if` statement checks the user's input, and if it's valid, the loop is exited using the `break` command. If the input is invalid, an error message is displayed, and the loop continues.

You can also use the `read` command with the `-n` option to limit the number of characters the user can enter, or the `-t` option to set a timeout for the input.

Example:

```
read -n 1 -p "Enter 'y' or 'n': " answer
echo "You entered: $answer"
```

Example output:

```
Enter 'y' or 'n': y
You entered: y
```

In this example, the `-n 1` option limits the user's input to a single character, and the `-p` option displays a prompt.
