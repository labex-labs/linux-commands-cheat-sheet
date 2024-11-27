# Manage System Locale Settings with localectl

In this step, you will learn how to use the `localectl` command to manage the system locale settings.

The system locale determines the language, date/time format, and other locale-specific settings used by the system and applications. Let's start by listing the available locales on the system:

```bash
localectl list-locales
```

This will display a long list of supported locales. To set the system locale, you can use the `localectl set-locale` command:

```bash
sudo localectl set-locale LANG=fr_FR.UTF-8
```

This will set the system locale to French (France) with the UTF-8 character encoding. You can verify the change by running the `localectl status` command again:

```bash
localectl status
```

Example output:

```
   System Locale: LANG=fr_FR.UTF-8
       VC Keymap: us
      X11 Layout: us
```

Now, let's try using a locale-aware command like `date` to see the effect of the locale change:

```bash
date
```

Example output:

```
dim. mai 14 16:24:53 UTC 2023
```

Notice how the date and time are now displayed in French format.

To revert the locale back to the default `en_US.UTF-8`, you can run:

```bash
sudo localectl set-locale LANG=en_US.UTF-8
```
