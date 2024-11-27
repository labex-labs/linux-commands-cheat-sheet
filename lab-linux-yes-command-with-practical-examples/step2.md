# Use yes Command to Generate Repeated Output

In this step, you will learn how to use the `yes` command to generate repeated output, which can be useful for various purposes such as testing, automation, and data generation.

First, let's generate 10 instances of the default "y" output:

```
$ yes | head -n 10
y
y
y
y
y
y
y
y
y
y
```

As you can see, the `yes` command outputs "y" repeatedly until we stop it using Ctrl+C or limit the output using a command like `head`.

You can also specify a custom string to be repeated:

```
$ yes "hello" | head -n 5
hello
hello
hello
hello
hello
```

In this case, the `yes` command will output the string "hello" repeatedly.

The `yes` command can be particularly useful when combined with other Linux commands. For example, you can use it to automate responses to prompts:

```
$ yes | rm -rf ~/some_directory
```

This will delete the `~/some_directory` directory without any confirmation prompts.

Another example is generating test data for a script or application:

```
$ yes "user@example.com" | head -n 100 > email_list.txt
```

This will create a file named `email_list.txt` containing 100 lines of the email address "user@example.com".
