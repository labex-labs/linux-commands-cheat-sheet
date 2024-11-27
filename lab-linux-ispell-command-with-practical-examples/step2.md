# Use ispell to Check Spelling of a Single Word

In this step, we will use the ispell command to check the spelling of a single word.

First, let's create a file named `word.txt` in the `~/project` directory with a misspelled word:

```bash
echo "wrod" > ~/project/word.txt
```

Now, we can use the ispell command to check the spelling of the word in the `word.txt` file:

```bash
ispell ~/project/word.txt
```

Example output:

```
wrod, line 1: Unknown word
& wrod, 1 suggestion: word
i
```

The output shows that the word "wrod" is unknown, and ispell suggests the correct spelling "word".

To accept the suggested correction, type "i" and press Enter.
