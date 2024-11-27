# Perform Basic Editing Operations with ex

In this step, you will learn how to perform basic editing operations using the ex command.

First, let's create a sample file to work with:

```
echo "This is the first line." > file.txt
echo "This is the second line." >> file.txt
echo "This is the third line." >> file.txt
```

Now, let's try some basic editing operations:

1. **Delete a line**:

   ```
   ex file.txt
   :2d
   :wq
   ```

   The `:2d` command deletes the second line of the file.

2. **Insert a line**:

   ```
   ex file.txt
   :2i
   This is a new line.
   .
   :wq
   ```

   The `:2i` command inserts a new line after the second line.

3. **Append text to a line**:

   ```
   ex file.txt
   :2a
   This is appended text.
   .
   :wq
   ```

   The `:2a` command appends text to the second line.

4. **Replace text in a line**:
   ```
   ex file.txt
   :%s/first/replaced/g
   :wq
   ```
   The `:%s/first/replaced/g` command replaces all occurrences of "first" with "replaced" in the file.

Example output:

```
$ cat file.txt
This is the replaced line.
This is a new line.
This is the third line.
```

As you can see, the ex command provides a powerful way to perform basic editing operations on files directly from the command line.
