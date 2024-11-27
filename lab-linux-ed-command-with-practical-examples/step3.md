# Advanced ed Command Usage

In this step, you will learn about some more advanced usage of the `ed` command, including searching, substituting, and working with multiple files.

Let's start by creating another file called `example2.txt` with some sample content:

```bash
echo "This is the first line of example2.txt." > example2.txt
echo "This is the second line of example2.txt." >> example2.txt
echo "This is the third line of example2.txt." >> example2.txt
```

Now, let's open both `example.txt` and `example2.txt` in the `ed` editor:

```bash
ed example.txt example2.txt
```

You should see the following output:

```
41
41
```

This indicates that both files have been opened in the `ed` editor.

To switch between the files, you can use the `f` (file) command:

```
f example.txt
1p
This is the updated first line.
f example2.txt
1p
This is the first line of example2.txt.
```

To search for a pattern in the current file, you can use the `?pattern?` command. For example, to search for the word "line" in the current file:

```
?line?
This is the updated first line.
This is the third line.
```

This will print all the lines containing the word "line".

To substitute a pattern with a new string, you can use the `s/pattern/replacement/` command. For example, to replace all occurrences of "line" with "sentence" in the current file:

```
g/line/s//sentence/p
This is the updated first sentence.
This is the third sentence.
```

The `g` command is used to perform the substitution globally (on all matching lines).

Finally, let's try appending the contents of `example2.txt` to `example.txt`:

```
f example.txt
$a
$(cat example2.txt)
.
w
q
```

This will append the contents of `example2.txt` to the end of `example.txt`.

Let's verify the changes:

```bash
cat example.txt
```

Example output:

```
This is the updated first line.
This is the third line.
This is the first line of example2.txt.
This is the second line of example2.txt.
This is the third line of example2.txt.
```

Congratulations! You have now learned about the advanced usage of the `ed` command, including working with multiple files, searching, and substituting.
