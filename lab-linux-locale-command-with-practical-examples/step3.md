# Change the System Locale and Observe the Impact

In this final step, we will change the system locale and observe the impact on various aspects of the system.

First, let's check the current locale settings:

```bash
locale
```

Now, let's change the system locale to a different one, for example, French (France):

```bash
sudo localectl set-locale LANG=fr_FR.UTF-8
```

After running this command, the system locale should have changed. Let's verify it:

```bash
locale
```

You should see the new locale settings, with `LANG=fr_FR.UTF-8`.

To observe the impact of the changed locale, try the following:

1. Display the current date and time:

   ```bash
   date
   ```

   The output should now be in French.

2. Open the calculator application and observe the decimal separator and thousands separator:

   ```bash
   gnome-calculator
   ```

3. Open a text editor and observe the default language of the spell checker:

   ```bash
   gedit
   ```

4. Check the language of the system menus and applications:
   Explore the system settings, terminal, and other applications to see how the language has changed.

After exploring the impact, let's change the locale back to the original `en_US.UTF-8`:

```bash
sudo localectl set-locale LANG=en_US.UTF-8
```

Verify the locale change by running `locale` again.
