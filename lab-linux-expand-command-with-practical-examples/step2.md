# Expand Tabs to Spaces in a Single File

In this step, you will learn how to use the `expand` command to convert tabs to spaces in a single file.

First, let's create a sample file with tabs:

```
$ cat > example.txt
Hello	World
  This	is a	test file.
```

Now, to convert the tabs to spaces, run the `expand` command on the file:

```
$ expand example.txt
Hello    World
  This is a    test file.
```

Example output:

```
Hello    World
  This is a    test file.
```

As you can see, the tabs have been replaced with the equivalent number of spaces.

By default, the `expand` command uses 8 spaces to replace each tab. If you want to use a different number of spaces, you can use the `-t` or `--tabs` option:

```
$ expand -t4 example.txt
Hello    World
  This is a  test file.
```

Example output:

```
Hello    World
  This is a  test file.
```

In this example, we used `-t4` to replace each tab with 4 spaces.

Now, let's try saving the expanded file:

```
$ expand example.txt -o expanded.txt
$ cat expanded.txt
Hello    World
  This is a    test file.
```

The `-o` option allows you to specify the output file name, in this case, `expanded.txt`. The original `example.txt` file remains unchanged.
