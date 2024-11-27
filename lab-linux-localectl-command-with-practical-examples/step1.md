# Understand the Purpose of the localectl Command

In this step, you will learn about the purpose and usage of the `localectl` command in Linux. The `localectl` command is a powerful tool provided by systemd that allows you to manage system locale settings, keyboard layouts, and keymaps.

The `localectl` command is used to:

- Set the system locale, which determines the language, date/time format, and other locale-specific settings.
- Configure the keyboard layout and keymap used by the system.
- Query the current system locale and keyboard settings.

Let's start by checking the current system locale settings using the `localectl` command:

```bash
localectl status
```

Example output:

```
   System Locale: LANG=en_US.UTF-8
       VC Keymap: us
      X11 Layout: us
```

This output shows that the system is currently using the `en_US.UTF-8` locale, and the keyboard layout is set to the US English layout.

You can also use `localectl` to list all available locales and keyboard layouts on the system:

```bash
localectl list-locales
localectl list-keymaps
```

These commands will display the full list of supported locales and keyboard layouts that can be configured on the system.
