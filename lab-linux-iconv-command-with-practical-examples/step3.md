# Handling Multilingual Text with iconv

In this final step, you will learn how to use the `iconv` command to handle multilingual text, which can be a common scenario when working with internationalized applications or data.

Let's start by creating a file with mixed language content:

```
cat > ~/project/multilingual.txt <<EOF
Hello, World!
こんにちは世界
Bonjour le monde
Hola, mundo
EOF
```

Now, let's try to convert the entire file to a different encoding:

```
iconv -f UTF-8 -t ISO-8859-1 ~/project/multilingual.txt -o ~/project/multilingual_latin1.txt
```

When you examine the converted file, you'll notice that the non-Latin characters are not preserved:

```
cat ~/project/multilingual_latin1.txt
```

Example output:

```
Hello, World!
?????????????
Bonjour le monde
Hola, mundo
```

To handle this scenario, we can use the `//TRANSLIT` option with `iconv`, which will transliterate the characters that cannot be represented in the target encoding:

```
iconv -f UTF-8 -t ISO-8859-1//TRANSLIT ~/project/multilingual.txt -o ~/project/multilingual_latin1_translit.txt
```

Now, let's compare the original and the transliterated files:

```
cat ~/project/multilingual.txt
cat ~/project/multilingual_latin1_translit.txt
```

Example output:

```
Hello, World!
こんにちは世界
Bonjour le monde
Hola, mundo
Hello, World!
Konnichiwa sekai
Bonjour le monde
Hola, mundo
```

As you can see, the non-Latin characters were transliterated to their closest Latin equivalents, allowing you to preserve the content in the target encoding.
