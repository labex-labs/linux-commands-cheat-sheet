# Translate and Delete Characters Using tr

In this step, you will learn how to use the `tr` command to translate and delete characters in text.

First, let's try translating characters. Suppose you have a file with both uppercase and lowercase letters, and you want to convert all the letters to lowercase.

```
echo "Hello, World!" | tr 'A-Z' 'a-z'
```

Example output:

```
hello, world!
```

In this example, the `tr` command translates all uppercase letters in the input to their lowercase counterparts.

Now, let's try deleting characters. Suppose you have a file with some unwanted characters, and you want to remove them.

```
echo "Hello, World!" | tr -d ',' '!'
```

Example output:

```
Hello World
```

In this example, the `tr` command deletes the comma (`,`) and exclamation mark (`!`) characters from the input.
