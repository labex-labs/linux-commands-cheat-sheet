# Encoding Conversion Using iconv

In this step, you will learn how to use the `iconv` command to perform various encoding conversions on text files.

Let's start by creating a sample text file in UTF-8 encoding:

```
echo "こんにちは世界" > ~/project/utf8.txt
```

Now, let's convert the file from UTF-8 to ISO-8859-1 (Latin-1) encoding:

```
iconv -f UTF-8 -t ISO-8859-1 ~/project/utf8.txt -o ~/project/latin1.txt
```

You can verify the conversion by comparing the contents of the two files:

```
cat ~/project/utf8.txt
cat ~/project/latin1.txt
```

Example output:

```
こんにちは世界
KonnichiwaSekai
```

As you can see, the Japanese characters were not preserved in the ISO-8859-1 encoding.

Next, let's try converting the file from UTF-8 to UTF-16 encoding:

```
iconv -f UTF-8 -t UTF-16 ~/project/utf8.txt -o ~/project/utf16.txt
```

Again, you can verify the conversion:

```
cat ~/project/utf16.txt
```

Example output:

```
こ�ん�に�ち�は�世�界�
```

In this case, the Japanese characters are preserved in the UTF-16 encoding.
