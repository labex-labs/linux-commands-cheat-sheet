# Perform Basic Spell Checking on Text Files

In this step, we will learn how to use the `spell` command to perform basic spell checking on text files.

First, let's create a sample text file with some intentional spelling mistakes:

```bash
echo "The quick brown fox jumps over the lazy doog." > sample.txt
```

Now, we can use the `spell` command to check the spelling in the `sample.txt` file:

```bash
spell sample.txt
```

Example output:

```
doog
```

The `spell` command has identified the word "doog" as a misspelled word in the `sample.txt` file.

Let's try another example with a longer text file:

```bash
cat > sample2.txt << EOF
This is a sample text file with some misspelled words.
The quick brown fox jumps over the lazy dog.
Hellow world!
EOF
spell sample2.txt
```

Example output:

```
Hellow
```

In this case, the `spell` command has identified the word "Hellow" as a misspelled word in the `sample2.txt` file.

The `spell` command is a simple but effective tool for quickly checking the spelling of words in text files. It can be particularly useful for proofreading and editing documents to ensure they are free of spelling errors.
