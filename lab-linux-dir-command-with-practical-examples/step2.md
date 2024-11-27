# Explore Directory Listing Options

In this step, we will dive deeper into the various options available with the `dir` command to customize the directory listing.

Let's start by listing the contents of the current directory in long format:

```bash
dir -l
```

Example output:

```
total 16
drwxr-xr-x 2 labex labex 4096 Apr 17 12:34 Desktop
drwxr-xr-x 2 labex labex 4096 Apr 17 12:34 Documents
drwxr-xr-x 2 labex labex 4096 Apr 17 12:34 Downloads
drwxr-xr-x 2 labex labex 4096 Apr 17 12:34 Music
drwxr-xr-x 2 labex labex 4096 Apr 17 12:34 Pictures
drwxr-xr-x 2 labex labex 4096 Apr 17 12:34 Public
drwxr-xr-x 2 labex labex 4096 Apr 17 12:34 Templates
drwxr-xr-x 2 labex labex 4096 Apr 17 12:34 Videos
```

The `-l` option displays the long-format listing, which includes file permissions, ownership, size, and modification time.

You can also list all files, including hidden files (files starting with a dot), by using the `-a` option:

```bash
dir -a
```

Example output:

```
.  ..  .config  .local  Desktop  Documents  Downloads  Music  Pictures  Public  Templates  Videos
```

To reverse the order of the listing, you can use the `-r` option:

```bash
dir -r
```

Example output:

```
Videos  Templates  Public  Pictures  Music  Downloads  Documents  Desktop  ..  .
```

Finally, you can sort the listing by modification time, with the most recent files first, using the `-t` option:

```bash
dir -t
```

Example output:

```
Desktop  Documents  Downloads  Music  Pictures  Public  Templates  Videos
```

You can also combine multiple options to achieve the desired output. For example, to list all files in long format, sorted by modification time, you can use:

```bash
dir -alt
```

Example output:

```
total 16
drwxr-xr-x 2 labex labex 4096 Apr 17 12:34 Desktop
drwxr-xr-x 2 labex labex 4096 Apr 17 12:34 Documents
drwxr-xr-x 2 labex labex 4096 Apr 17 12:34 Downloads
drwxr-xr-x 2 labex labex 4096 Apr 17 12:34 Music
drwxr-xr-x 2 labex labex 4096 Apr 17 12:34 Pictures
drwxr-xr-x 2 labex labex 4096 Apr 17 12:34 Public
drwxr-xr-x 2 labex labex 4096 Apr 17 12:34 Templates
drwxr-xr-x 2 labex labex 4096 Apr 17 12:34 Videos
```

Exploring these options will help you customize the directory listing to suit your specific needs and preferences.
