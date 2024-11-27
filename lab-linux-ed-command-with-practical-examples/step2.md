# Editing Text Files with ed

In this step, you will learn how to edit existing text files using the `ed` command.

First, let's create a new file called `example.txt` with some sample content:

```bash
echo "This is the first line." > example.txt
echo "This is the second line." >> example.txt
echo "This is the third line." >> example.txt
```

Now, let's open the `example.txt` file in the `ed` editor:

```bash
ed example.txt
```

You should see the following output:

```
34
```

This number represents the number of characters in the file. Now, let's try some basic editing commands:

```
1p
```

This will print the first line of the file:

```
This is the first line.
```

To change the first line, we can use the `c` (change) command:

```
1c
This is the updated first line.
.
```

The `.` on a new line indicates the end of the change. Let's verify the changes:

```
1p
This is the updated first line.
2p
This is the second line.
3p
This is the third line.
```

To delete a line, we can use the `d` (delete) command:

```
2d
```

This will delete the second line. Let's print the file again to see the changes:

```
1p
This is the updated first line.
2p
This is the third line.
```

Finally, to save the changes and quit the `ed` editor, we can use the `w` (write) and `q` (quit) commands:

```
w
41
q
```

The number `41` represents the number of characters in the updated file.

Let's verify the changes by checking the contents of the `example.txt` file:

```bash
cat example.txt
```

Example output:

```
This is the updated first line.
This is the third line.
```

In the next step, you will learn about more advanced `ed` command usage.
