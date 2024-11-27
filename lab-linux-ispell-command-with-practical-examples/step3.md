# Use ispell to Check Spelling of a Text File

In this step, we will use the ispell command to check the spelling of a text file.

First, let's create a file named `text.txt` in the `~/project` directory with some misspelled words:

```bash
cat > ~/project/text.txt << EOF
This is a test file with som misspelled words.
The quick brown fox jumps over the laxy dog.
EOF
```

Now, we can use the ispell command to check the spelling of the words in the `text.txt` file:

```bash
ispell ~/project/text.txt
```

Example output:

```
text.txt, line 1: som, misspelled
& som, 1 suggestion: some
i
text.txt, line 2: laxy, misspelled
& laxy, 1 suggestion: lazy
i
```

The output shows that the words "som" and "laxy" are misspelled, and ispell suggests the correct spellings "some" and "lazy". To accept the suggested corrections, type "i" and press Enter for each misspelled word.
