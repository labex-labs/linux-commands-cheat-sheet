# Decode Multiple Uuencoded Files

In this step, you will learn how to decode multiple uuencoded files using the `uudecode` command.

First, let's create two more sample text files that we will encode and then decode:

```bash
echo "This is a third sample text file." > sample3.txt
echo "This is a fourth sample text file." > sample4.txt
```

Example output:

```

```

Now, let's encode the `sample3.txt` and `sample4.txt` files using the `uuencode` command:

```bash
uuencode sample3.txt sample3.txt > encoded3.txt
uuencode sample4.txt sample4.txt > encoded4.txt
```

Example output:

```
begin 644 sample3.txt
M"&5R92!I<R!A(&1E;F=H92!S+G-O=&AE(&%N9"!O<F4@;6]D:6YG("=A<F4@
M9&EL92!T:&4@=&AE(&%N9"!O<F4@;6]D:6YG("=A<F4@9&EL92!T:&4@=&AE
M(&%N9"!O<F4@;6]D:6YG("=A<F4@9&EL92!T:&4@=&AE(&%N9"!O<F4@;6]D
M:6YG("=A<F4@9&EL92!T:&4@=&AE(&%N9"!O<F4@;6]D:6YG("=A<F4@9&EL
M92!T:&4@
`
end
begin 644 sample4.txt
M"&5R92!I<R!A(&1E;F=H92!S+G-O=&AE(&%N9"!O<F4@;6]D:6YG("=A<F4@
M9&EL92!T:&4@=&AE(&%N9"!O<F4@;6]D:6YG("=A<F4@9&EL92!T:&4@=&AE
M(&%N9"!O<F4@;6]D:6YG("=A<F4@9&EL92!T:&4@=&AE(&%N9"!O<F4@;6]D
M:6YG("=A<F4@9&EL92!T:&4@=&AE(&%N9"!O<F4@;6]D:6YG("=A<F4@9&EL
M92!T:&4@
`
end
```

The `uuencode` command has created two new files called `encoded3.txt` and `encoded4.txt` that contain the encoded versions of `sample3.txt` and `sample4.txt`, respectively.

Now, let's use the `uudecode` command to decode both of the encoded files:

```bash
uudecode encoded3.txt
uudecode encoded4.txt
```

Example output:

```

```

After running the `uudecode` command, you should see two new files called `sample3.txt` and `sample4.txt` in the current directory, which contain the original text content.

The `uudecode` command has successfully decoded the multiple uuencoded files, restoring the original binary data.
