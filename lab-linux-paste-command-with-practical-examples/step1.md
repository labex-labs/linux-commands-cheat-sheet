# Understand the Basics of paste Command

In this step, we will learn the basics of the `paste` command in Linux. The `paste` command is used to combine multiple files horizontally, merging their corresponding lines into a single line.

First, let's create some sample files to work with:

```bash
echo -e "Apple\nBanana\nCherry" > file1.txt
echo -e "Red\nYellow\nPurple" > file2.txt
echo -e "Fruit\nFruit\nFruit" > file3.txt
```

Now, we can use the `paste` command to combine these files:

```bash
paste file1.txt file2.txt file3.txt
```

Example output:

```
Apple   Red     Fruit
Banana  Yellow  Fruit
Cherry  Purple  Fruit
```

The `paste` command takes the corresponding lines from the input files and combines them into a single line, separated by the default tab character.

You can also specify a different delimiter using the `-d` option:

```bash
paste -d "," file1.txt file2.txt file3.txt
```

Example output:

```
Apple,Red,Fruit
Banana,Yellow,Fruit
Cherry,Purple,Fruit
```

In this example, we used a comma (`,`) as the delimiter instead of the default tab character.
