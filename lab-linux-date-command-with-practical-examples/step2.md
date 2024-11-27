# Display Current Date and Time

In this step, we will learn how to use the `date` command to display the current date and time on your Linux system.

To display the current date and time in the default format, simply run the `date` command:

```
date
```

Example output:

```
Fri Apr 14 15:30:45 UTC 2023
```

The default output includes the day of the week, month, day, time, and time zone.

If you want to display the date and time in a specific format, you can use the `+FORMAT` option with the `date` command. For example, to display the date in the format "YYYY-MM-DD", you can use:

```
date +"%Y-%m-%d"
```

Example output:

```
2023-04-14
```

You can also combine multiple format specifiers to display the date and time in a more customized way. For instance, to display the date and time in the format "YYYY-MM-DD HH:MM:SS", you can use:

```
date +"%Y-%m-%d %H:%M:%S"
```

Example output:

```
2023-04-14 15:30:45
```

By understanding how to use the `+FORMAT` option with the `date` command, you can easily display the current date and time in the desired format on your Linux system.
