# Decode a Uuencoded File

In this step, you will learn how to decode a uuencoded file using the `uudecode` command.

First, let's create a new file that we will encode and then decode:

```bash
echo "This is another sample text file." > sample2.txt
```

Example output:

```

```

Now, let's encode the `sample2.txt` file using the `uuencode` command:

```bash
uuencode sample2.txt sample2.txt > encoded2.txt
```

Example output:

```
begin 644 sample2.txt
M"&5R92!I<R!A(&1E;F=H92!S+G-O=&AE(&%N9"!O<F4@;6]D:6YG("=A<F4@
M9&EL92!T:&4@=&AE(&%N9"!O<F4@;6]D:6YG("=A<F4@9&EL92!T:&4@=&AE
M(&%N9"!O<F4@;6]D:6YG("=A<F4@9&EL92!T:&4@=&AE(&%N9"!O<F4@;6]D
M:6YG("=A<F4@9&EL92!T:&4@=&AE(&%N9"!O<F4@;6]D:6YG("=A<F4@9&EL
M92!T:&4@=&AE(&%N9"!O<F4@;6]D:6YG("=A<F4@9&EL92!T:&4@
`
end
```

The `uuencode` command has created a new file called `encoded2.txt` that contains the encoded version of `sample2.txt`.

Now, let's use the `uudecode` command to decode the `encoded2.txt` file back to its original binary format:

```bash
uudecode encoded2.txt
```

Example output:

```

```

After running the `uudecode` command, you should see a new file called `sample2.txt` in the current directory, which contains the original text content.

The `uudecode` command has successfully decoded the uuencoded file, restoring the original binary data.
