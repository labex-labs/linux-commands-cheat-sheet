# Reverse the Order of Lines in a Text File

In this step, you will learn how to use the `tac` command to reverse the order of lines in a text file.

First, let's create a sample text file:

```
echo -e "Line 1\nLine 2\nLine 3\nLine 4" > sample.txt
```

Now, you can use the `tac` command to reverse the order of the lines in the file:

```
tac sample.txt
```

Example output:

```
Line 4
Line 3
Line 2
Line 1
```

As you can see, the `tac` command has reversed the order of the lines in the `sample.txt` file.

You can also save the reversed output to a new file:

```
tac sample.txt > reversed_sample.txt
```

Now, the `reversed_sample.txt` file will contain the lines in reverse order.
