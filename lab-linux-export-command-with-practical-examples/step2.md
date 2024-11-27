# Set Environment Variables Using the export Command

In this step, we will learn how to set environment variables using the `export` command and explore some practical examples.

First, let's create a new environment variable:

```bash
export MY_APP_HOME="/home/labex/myapp"
```

We can verify that the variable has been set:

```bash
echo $MY_APP_HOME
```

Example output:

```
/home/labex/myapp
```

Environment variables set using `export` are accessible within the current shell session. However, if you open a new shell or terminal, the variable will not be available. To make the variable persist, you can add the `export` command to your shell's startup script, such as `~/.bashrc` or `~/.zshrc`.

Let's add the `MY_APP_HOME` variable to the `~/.bashrc` file:

```bash
echo 'export MY_APP_HOME="/home/labex/myapp"' >> ~/.bashrc
```

Now, the `MY_APP_HOME` variable will be available in all new shell sessions.

You can also use the `export` command to set multiple environment variables at once:

```bash
export MY_APP_VERSION="1.2.3" MY_APP_CONFIG="/etc/myapp.conf"
```

This will set both `MY_APP_VERSION` and `MY_APP_CONFIG` environment variables.

Environment variables set using `export` can be used in your scripts and applications. For example, you can use the `$MY_APP_HOME` variable in a script to reference the application's home directory:

```bash
cd $MY_APP_HOME
```

In the next step, we will explore more practical examples of using the `export` command.
