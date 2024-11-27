# Use xargs to Execute Commands with Arguments

In this step, you will learn how to use `xargs` to execute commands with arguments passed from standard input.

Let's start by creating a file with a list of URLs:

```
echo "https://www.example.com https://www.google.com https://www.github.com" > urls.txt
```

Now, we can use `xargs` to execute the `curl` command on each URL:

```
cat urls.txt | xargs curl -s -o /dev/null -w '%{url_effective} -> %{http_code}\n'
```

Example output:

```
https://www.example.com -> 200
https://www.google.com -> 200
https://www.github.com -> 200
```

In this example, `xargs` takes the input from `cat urls.txt` and passes each URL as an argument to the `curl` command. The `-s` option suppresses the output, `-o /dev/null` redirects the output to the null device, and `-w '%{url_effective} -> %{http_code}\n'` prints the effective URL and the HTTP status code.

Next, let's use `xargs` to delete the directories we created in the previous step:

```
ls | grep -E 'Alice|Bob|Charlie|David' | xargs rm -rf
```

Example output:

```

```

In this example, `ls` lists all the directories in the current directory, `grep -E 'Alice|Bob|Charlie|David'` filters the output to only include the directories we created, and `xargs rm -rf` deletes each directory.

The `xargs` command is a versatile tool that can be combined with various other Linux commands to create powerful workflows. In the next step, you will explore more advanced use cases of `xargs`.
