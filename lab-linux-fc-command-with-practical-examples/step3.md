# Customize fc Command Behavior

In this final step, you will learn how to customize the behavior of the `fc` command to better suit your needs.

The `fc` command has several options that allow you to control its behavior. Let's explore a few of them:

1. **Specify a Different Editor**:
   By default, the `fc` command uses the editor specified by the `FCEDIT` environment variable, or the `EDITOR` variable if `FCEDIT` is not set. You can override this by using the `-e` option:

```
$ fc -e nano
# This will open the command in the nano editor
```

2. **List Command History without Line Numbers**:
   If you prefer to see the command history without line numbers, you can use the `-n` option:

```
$ fc -n -l
ls
cd project
touch file.txt
echo "Hello, World!" > file.txt
cat file.txt
```

3. **Edit a Range of Commands**:
   You can also edit a range of commands by specifying the start and end command numbers:

```
$ fc 3 5
# This will open the commands from 3 to 5 in the editor
```

4. **Reexecute the Edited Command Directly**:
   Instead of opening the command in the editor, you can reexecute the edited command directly using the `-s` option:

```
$ fc -s 4
# This will reexecute the command that created the file.txt file
```

By exploring these customization options, you can tailor the `fc` command to your specific needs and improve your productivity when working in the terminal.
