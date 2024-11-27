# Remove Duplicate Lines from a File

In this step, you will learn how to use the `uniq` command to remove duplicate lines from a file.

First, let's create a sample file with some duplicate lines:

```
echo -e "apple\norange\napple\nbanana\norange\napple" > sample.txt
```

Example output:

```
apple
orange
apple
banana
orange
apple
```

To remove the duplicate lines, we can use the `uniq` command:

```
uniq sample.txt
```

Example output:

```
apple
orange
banana
```

The `uniq` command compares adjacent lines and removes any duplicates. However, it only removes consecutive duplicates. If the duplicates are not next to each other, `uniq` will not remove them.

To remove all duplicate lines, regardless of their position, we can use the `sort` command in combination with `uniq`:

```
sort sample.txt | uniq
```

Example output:

```
apple
banana
orange
```

The `sort` command arranges the lines in alphabetical order, which ensures that the duplicate lines are adjacent. Then, the `uniq` command can remove the duplicates.
