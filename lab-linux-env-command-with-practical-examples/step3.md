# Execute Commands with Custom Environment Variables

In this final step, we will learn how to execute commands with custom environment variables using the `env` command.

First, let's create a new environment variable and use it in a command:

```bash
export MY_MESSAGE="Hello from the custom environment!"
env MY_MESSAGE=$MY_MESSAGE echo $MY_MESSAGE
```

Example output:

```
Hello from the custom environment!
```

In this example, we first set the `MY_MESSAGE` environment variable using the `export` command. Then, we use the `env` command to run the `echo` command with the `MY_MESSAGE` environment variable set to its value.

You can also use the `env` command to run a command with multiple custom environment variables:

```bash
env MY_MESSAGE="Hello" MY_NAME="John" echo "$MY_MESSAGE, my name is $MY_NAME!"
```

Example output:

```
Hello, my name is John!
```

In this example, we set two custom environment variables, `MY_MESSAGE` and `MY_NAME`, and then use the `env` command to run the `echo` command with both variables.

The `env` command is particularly useful when you need to run a command in a specific environment, such as when you're working with different versions of software or libraries that require different environment configurations.
