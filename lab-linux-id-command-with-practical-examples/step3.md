# Explore Additional Options and Customizations of the id Command

In this final step, we will explore some additional options and customizations available with the `id` command.

One useful option is the `-n` flag, which displays the name instead of the numeric ID. For example:

```
$ id -nu
labex
$ id -ng
labex
```

This will show the username and group name instead of the numeric IDs.

You can also use the `--help` option to see all the available options for the `id` command:

```
$ id --help
Usage: id [OPTION]... [USER]
Print user and group information for the specified USER,
or (when USER omitted) for the current user.

  -a             print all information in a readable format
  -Z, --context  print only the security context of the process
  -g, --group    print only the effective group ID
  -G, --groups   print all group IDs
  -n, --name     print a name instead of a number, for -ugG
  -r, --real     print the real ID instead of the effective ID, with -ugG
  -u, --user     print only the effective user ID
  -z, --zero     delimit entries with NUL character, not whitespace;
                   not permitted in default format
      --help     display this help and exit
      --version  output version information and exit

Examples:
  id
  id username
  id -a
  id -u
  id -g
```

This shows all the available options you can use with the `id` command to customize the output.

Finally, you can combine multiple options to get the desired information. For example, to get the username and group name for the current user:

```
$ id -un
labex
$ id -gn
labex
```

Example output:

```
$ id -un
labex
$ id -gn
labex
```
