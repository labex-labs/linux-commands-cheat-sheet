# Basic pico Commands and Functionality

In this step, you will learn about the basic commands and functionality of the pico text editor.

First, let's create a new file using pico:

```
pico new_file.txt
```

This will open the pico editor with a new, blank file named `new_file.txt`.

Now, let's explore some of the basic pico commands:

- `Ctrl + G`: Display the help menu, which shows all the available commands and their shortcuts.
- `Ctrl + X`: Exit the editor and save the file. Pico will prompt you to save the file if you have made any changes.
- `Ctrl + O`: Save the current file.
- `Ctrl + K`: Cut the current line of text.
- `Ctrl + U`: Uncut (paste) the last line that was cut.
- `Ctrl + C`: Display the current cursor position (line and column number).
- `Ctrl + T`: Invoke the spell checker (if available).

Try using these commands to create a short text file, edit it, and save it.

Example output:

```
GNU nano 6.2                 new_file.txt                              Modified

This is a sample text file created using the pico text editor.
I can use various commands to edit the content of this file.
For example, I can cut and paste lines of text using Ctrl+K and Ctrl+U.
I can also save the file using Ctrl+O.

^G Get Help  ^O WriteOut  ^W Where Is  ^K Cut Text  ^J Justify   ^C Cur Pos
^X Exit     ^R Read File ^\ Replace  ^U Uncut Text^T To Spell  ^_ Go To Line
```
