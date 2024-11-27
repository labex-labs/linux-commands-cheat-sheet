# Practical Examples of Perl Commands for File Manipulation

In this step, we will explore some practical examples of using Perl commands for file manipulation tasks.

First, let's create a sample text file named `data.txt` in the `~/project` directory:

```bash
echo "Name,Age,City" > ~/project/data.txt
echo "John,30,New York" >> ~/project/data.txt
echo "Jane,25,Los Angeles" >> ~/project/data.txt
echo "Bob,35,Chicago" >> ~/project/data.txt
```

Now, let's use Perl to read and manipulate the contents of this file.

To read the contents of the file and print each line:

```bash
perl -e 'while (<>) { print; }' ~/project/data.txt
```

Example output:

```
Name,Age,City
John,30,New York
Jane,25,Los Angeles
Bob,35,Chicago
```

To extract specific fields from each line (e.g., name and city):

```bash
perl -lane 'print "$F[0], $F[2]"' ~/project/data.txt
```

Example output:

```
John, New York
Jane, Los Angeles
Bob, Chicago
```

To replace a specific value in the file:

```bash
perl -i -pe 's/New York/San Francisco/' ~/project/data.txt
```

Now, let's verify the contents of the file:

```bash
cat ~/project/data.txt
```

Example output:

```
Name,Age,City
John,30,San Francisco
Jane,25,Los Angeles
Bob,35,Chicago
```

In this step, we have learned how to use Perl commands to read, extract, and modify the contents of a text file. These examples demonstrate the versatility of Perl for file manipulation tasks.
