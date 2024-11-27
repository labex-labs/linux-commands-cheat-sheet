# Understand the ex Command Basics

In this step, you will learn the basics of the ex command, a powerful text editor in Linux. The ex command is a line-oriented text editor that allows you to perform various editing operations on files directly from the command line.

First, let's start by understanding the ex command syntax:

```
ex [options] [file]
```

Here, `[options]` represents the various options you can use with the ex command, and `[file]` is the file you want to edit.

Now, let's try some basic ex commands:

1. **Open a file in ex mode**:

   ```
   ex file.txt
   ```

   This will open the `file.txt` in ex mode, where you can perform various editing operations.

2. **Display the current line number**:

   ```
   :number
   ```

   This will display the current line number.

3. **Move to a specific line**:

   ```
   :10
   ```

   This will move the cursor to line 10.

4. **Insert text**:

   ```
   i
   This is a new line.
   .
   ```

   The `i` command enters insert mode, and the `.` command exits insert mode.

5. **Append text**:

   ```
   a
   This is another new line.
   .
   ```

   The `a` command enters append mode, and the `.` command exits append mode.

6. **Save and quit**:
   ```
   :wq
   ```
   The `:wq` command saves the file and exits ex mode.

Example output:

```
$ ex file.txt
"/file.txt" [New File]
:number
1
:10
10
i
This is a new line.
.
a
This is another new line.
.
:wq
```

These are just a few basic ex commands. In the next step, you will learn how to perform more advanced editing operations with the ex command.
