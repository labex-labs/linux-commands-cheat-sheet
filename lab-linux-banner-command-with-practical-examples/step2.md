# Display a Custom Message Using the banner Command

In this step, we will learn how to display a custom message using the `banner` command.

To display a custom message, simply pass the text you want to display as an argument to the `banner` command:

```
$ banner "Welcome to the Linux Lab!"
 _   _      _ _        __        __         _     _
| | | | ___| | | ___   \ \      / /__  _ __| | __| |
| |_| |/ _ \ | |/ _ \   \ \ /\ / / _ \| '__| |/ _` |
|  _  |  __/ | | (_) |   \ V  V / (_) | |  | | (_| |
|_| |_|\___|_|_|\___/     \_/\_/ \___/|_|  |_|\__,_|
```

You can also use the `-f` option to specify a different font file for the banner:

```
$ banner -f script "Linux Rocks!"
 _   _      _ _        __        __         _     _
| | | | ___| | | ___   \ \      / /__  _ __| | __| |
| |_| |/ _ \ | |/ _ \   \ \ /\ / / _ \| '__| |/ _` |
|  _  |  __/ | | (_) |   \ V  V / (_) | |  | | (_| |
|_| |_|\___|_|_|\___/     \_/\_/ \___/|_|  |_|\__,_|
```

In this example, we used the `-f script` option to display the message in a different font style.

You can also adjust the width of the banner using the `-w` option:

```
$ banner -w 40 "This is a wider banner!"
 _   _      _ _        __        __         _     _
| | | | ___| | | ___   \ \      / /__  _ __| | __| |
| |_| |/ _ \ | |/ _ \   \ \ /\ / / _ \| '__| |/ _` |
|  _  |  __/ | | (_) |   \ V  V / (_) | |  | | (_| |
|_| |_|\___|_|_|\___/     \_/\_/ \___/|_|  |_|\__,_|
```

By using the `-w 40` option, we've increased the width of the banner to 40 characters.

The `banner` command provides a simple and effective way to display custom messages in a visually striking format within your terminal.
