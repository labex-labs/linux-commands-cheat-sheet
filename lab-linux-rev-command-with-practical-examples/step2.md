# Reverse Text in Files

In this step, you will learn how to use the `rev` command to reverse the text within files.

Let's start by creating a sample text file:

```bash
cat << EOF > example.txt
This is a sample text file.
The quick brown fox jumps over the lazy dog.
EOF
```

Now, let's use the `rev` command to reverse the text in the file:

```bash
rev example.txt
```

Example output:

```
.elif txet elpmas a si sihT
.god yzal eht revo spmuj xof nworb kciuq ehT
```

As you can see, the `rev` command has reversed the order of characters in each line of the file.

You can also combine the `rev` command with other commands to perform more complex text manipulations. For example, to reverse the text and save the result to a new file:

```bash
rev example.txt > reversed_example.txt
cat reversed_example.txt
```

Example output:

```
.elif txet elpmas a si sihT
.god yzal eht revo spmuj xof nworb kciuq ehT
```

In this example, we used the `rev` command to reverse the text in the `example.txt` file, and then redirected the output to a new file called `reversed_example.txt`.

The `rev` command is a simple but powerful tool for manipulating text in Linux. It can be used in various scenarios, such as obfuscating sensitive information, or as part of more complex text processing pipelines.
