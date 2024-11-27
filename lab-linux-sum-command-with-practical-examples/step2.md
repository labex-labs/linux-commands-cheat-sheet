# Perform Basic Summation Operations

In this step, we will practice using the `sum` command to perform basic summation operations on files.

Let's start by creating some sample files to work with:

```
touch numbers1.txt numbers2.txt numbers3.txt
```

Now, let's add some numbers to each file:

```
echo "10 20 30" > numbers1.txt
echo "40 50 60" > numbers2.txt
echo "70 80 90" > numbers3.txt
```

To calculate the checksum of each file individually, we can use the following commands:

```
sum numbers1.txt
sum numbers2.txt
sum numbers3.txt
```

Example output:

```
60 3 numbers1.txt
150 3 numbers2.txt
240 3 numbers3.txt
```

To get the total sum of all the files, we can use the `-s` option:

```
sum -s numbers1.txt numbers2.txt numbers3.txt
```

Example output:

```
450 9 total
```

The output shows the total sum of all the numbers in the files is 450.

Now, let's try a more complex example. We'll create a file with floating-point numbers:

```
echo "3.14 6.28 9.42" > float_numbers.txt
```

We can calculate the checksum of this file using the `sum` command:

```
sum float_numbers.txt
```

Example output:

```
18.84 3 float_numbers.txt
```

As you can see, the `sum` command can handle floating-point numbers as well.

In the next step, we will explore how to handle floating-point numbers in more detail using the `sum` command.
