# Customize Keyboard Layout and Keymaps with localectl

In this final step, you will learn how to use the `localectl` command to customize the keyboard layout and keymaps on your system.

The keyboard layout determines the physical arrangement of the keys on the keyboard, while the keymap defines the mapping of keys to characters and functions.

Let's start by checking the current keyboard layout and keymap:

```bash
localectl status
```

Example output:

```
   System Locale: LANG=en_US.UTF-8
       VC Keymap: us
      X11 Layout: us
```

This shows that the system is currently using the US English keyboard layout and keymap.

To change the keyboard layout, you can use the `localectl set-x11-keymap` command:

```bash
sudo localectl set-x11-keymap de
```

This will set the keyboard layout to German (de). You can verify the change by running `localectl status` again:

```bash
localectl status
```

Example output:

```
   System Locale: LANG=en_US.UTF-8
       VC Keymap: us
      X11 Layout: de
```

Notice that the `X11 Layout` field has been updated to `de`.

If you need to use a more specific keyboard layout, you can specify the full layout name:

```bash
sudo localectl set-x11-keymap de nodeadkeys
```

This will set the German keyboard layout with the "nodeadkeys" variant, which changes the behavior of dead keys.

You can list all available keyboard layouts and keymaps using the following commands:

```bash
localectl list-x11-keymap-models
localectl list-x11-keymap-layouts
localectl list-x11-keymap-variants
```

These commands will display the full list of supported keyboard layouts and keymaps that can be configured on the system.
