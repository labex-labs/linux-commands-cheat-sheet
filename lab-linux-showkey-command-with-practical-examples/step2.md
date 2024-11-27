# Capture Keyboard Input Using the showkey Command

In this step, we will learn how to use the `showkey` command to capture keyboard input.

First, let's start the `showkey` command in the terminal:

```bash
sudo showkey
```

This will put the `showkey` command in a listening mode, waiting for you to press keys on your keyboard.

Now, try pressing some keys on your keyboard. You should see the key codes being displayed in the terminal:

```
Press any keys - Ctrl-C to end
key pressed 1 is 65 (a)
key pressed 2 is 66 (b)
key pressed 3 is 67 (c)
```

The output shows the decimal code for each key, as well as the corresponding character in parentheses.

You can also try pressing special keys, such as the arrow keys, function keys, or modifier keys (Shift, Ctrl, Alt). The `showkey` command will display the corresponding key codes for these as well.

To exit the `showkey` command, press `Ctrl+C`.
