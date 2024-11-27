# Understand the Purpose of the unexpand Command

In this step, you will learn about the purpose and usage of the `unexpand` command in Linux. The `unexpand` command is used to convert spaces in the input to tabs.

The `unexpand` command is useful when you need to convert text files that contain spaces to a format that uses tabs instead. This can be helpful when working with text-based data that is often easier to read and manipulate when it is tab-separated.

Let's start by running the `unexpand` command on a sample text file:

```
$ cat sample.txt
This   is   a   sample   text   file   with   spaces.
```

Now, let's use the `unexpand` command to convert the spaces to tabs:

```
$ unexpand sample.txt
This	is	a	sample	text	file	with	spaces.
```

As you can see, the `unexpand` command has replaced the spaces with tabs in the output.

Example output:

```
This	is	a	sample	text	file	with	spaces.
```

The `unexpand` command can be further customized with additional options, which we will explore in the next step.
