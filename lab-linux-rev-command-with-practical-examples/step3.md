# Reverse Lines in Files

In this step, you will learn how to use the `rev` command to reverse the order of lines in a file.

Let's start by creating a sample text file with multiple lines:

```bash
cat << EOF > example.txt
Line 1
Line 2
Line 3
Line 4
Line 5
EOF
```

Now, let's use the `rev` command to reverse the order of the lines in the file:

```bash
rev example.txt
```

Example output:

```
5 eniL
4 eniL
3 eniL
2 eniL
1 eniL
```

As you can see, the `rev` command has reversed the order of the lines in the `example.txt` file.

You can also combine the `rev` command with other commands to perform more complex line manipulations. For example, to reverse the lines and save the result to a new file:

```bash
rev example.txt > reversed_example.txt
cat reversed_example.txt
```

Example output:

```
5 eniL
4 eniL
3 eniL
2 eniL
1 eniL
```

In this example, we used the `rev` command to reverse the lines in the `example.txt` file, and then redirected the output to a new file called `reversed_example.txt`.

The `rev` command is a simple but powerful tool for manipulating lines in text files. It can be used in various scenarios, such as rearranging the order of lines in a configuration file, or as part of more complex text processing pipelines.
