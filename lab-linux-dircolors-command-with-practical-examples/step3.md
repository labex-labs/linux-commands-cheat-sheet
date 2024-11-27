# Manage dircolors Configuration Files

In this final step, you will learn how to manage the `dircolors` configuration files.

The `dircolors` command reads configuration files to determine the color settings for directory and file listings. The default configuration file is located at `/etc/DIR_COLORS`, but you can also use a custom configuration file in your home directory (`~/.dircolors`).

Let's explore the different ways to manage the `dircolors` configuration files:

1. **View the system-wide configuration file**:

```bash
cat /etc/DIR_COLORS
```

This file contains the default color settings for the system.

2. **Create a custom configuration file**:

```bash
nano ~/.dircolors
```

You can create a custom configuration file in your home directory (`~/.dircolors`) and override the system-wide settings.

3. **Apply the custom configuration**:

```bash
eval $(dircolors ~/.dircolors)
```

After creating the custom configuration file, you need to apply the changes using the `eval` command.

4. **Make the custom configuration permanent**:

```bash
echo 'eval $(dircolors ~/.dircolors)' >> ~/.bashrc
```

To make the custom configuration permanent, you can add the `eval` command to your shell's startup file (e.g., `~/.bashrc` or `~/.zshrc`).

Now, let's verify that the custom configuration is being used:

```bash
ls -l ~/project
```

The directory and file colors should reflect the custom settings you defined in the `~/.dircolors` file.
