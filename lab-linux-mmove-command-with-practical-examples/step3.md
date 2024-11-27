# Explore Advanced mmove Options

In this final step, you will learn about some advanced options available with the `mmove` command to enhance your file management capabilities.

One useful option is the `-i` flag, which prompts you before overwriting an existing file:

```
# Move a file and prompt before overwriting
mmove -i file.txt ~/documents/new_folder/

# Example output:
file.txt -> ~/documents/new_folder/file.txt (overwrite? [y/n]) y
```

In this example, if a file named `file.txt` already exists in the `~/documents/new_folder/` directory, the `mmove` command will prompt you before overwriting it.

Another helpful option is the `-v` flag, which displays verbose output during the move operation:

```
# Move a directory with verbose output
mmove -v ~/projects/old_project ~/projects/new_project/

# Example output:
'/home/labex/projects/old_project/' -> '/home/labex/projects/new_project/old_project/'
```

The `-v` option shows you the source and destination paths as the files and directories are being moved.

Finally, let's explore the `-u` (update) option, which only moves the file if the source is newer than the destination:

```
# Move a file only if the source is newer
mmove -u file.txt ~/documents/new_folder/

# Example output:
file.txt -> ~/documents/new_folder/file.txt
```

The `-u` option is useful when you want to update files in a destination directory without overwriting newer files.

Remember, the `mmove` command provides a variety of options to help you manage your files and directories more efficiently. Experiment with these advanced options to find the ones that best suit your needs.
