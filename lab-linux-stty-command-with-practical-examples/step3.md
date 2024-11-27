# Practical Examples of Using the stty Command

In this final step, you will explore some practical examples of using the `stty` command.

1. **Disabling the Ctrl+C Interrupt**

```
# Disable Ctrl+C interrupt
stty -intr
```

This will disable the Ctrl+C interrupt, which is typically used to terminate a running process. You can verify this by running a command that would normally be interrupted by Ctrl+C, such as `sleep 60`.

2. **Changing the Erase Character**

```
# Change the erase character to Backspace
stty erase ^?
```

This will change the erase character from the default (usually Delete) to Backspace. You can test this by typing some text in the terminal and pressing Backspace.

3. **Changing the Terminal Size**

```
# Set the terminal size to 80 columns and 24 rows
stty cols 80 rows 24
```

This will change the terminal size to 80 columns and 24 rows. You can verify the change by running `stty -a` or using the `resize` command.

4. **Saving and Restoring Terminal Settings**

```
# Save the current terminal settings
stty -g > terminal_settings.txt

# Restore the saved terminal settings
stty $(cat terminal_settings.txt)
```

This example shows how to save the current terminal settings to a file and then restore them later. This can be useful if you need to temporarily change some settings and then revert back to the original configuration.
