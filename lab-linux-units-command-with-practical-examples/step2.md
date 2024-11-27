# Convert Between Different Time Units

In this step, we will learn how to use the `units` command to convert between different time units.

Let's start by launching the `units` interactive mode again:

```bash
units
```

Now, let's try some time unit conversions:

```
# Convert hours to minutes
> 5 hour to minute
* 300

# Convert days to seconds
> 7 day to second
* 604800

# Convert milliseconds to microseconds
> 500 millisecond to microsecond
* 500000
```

Example output:

```
You have: 5 hour
You want: minute
* 300

You have: 7 day
You want: second
* 604800

You have: 500 millisecond
You want: microsecond
* 500000
```

As you can see, the `units` command makes it easy to convert between various time units, such as hours, minutes, seconds, days, milliseconds, and microseconds.

You can also perform arithmetic operations with time units:

```
# Add 2 hours and 30 minutes
> 2 hour + 30 minute
result is 2.5 hour

# Multiply 3 days by 12 hours
> 3 day * 12 hour
result is 36 hour
```

Example output:

```
You have: 2 hour
You want: 30 minute
result is 2.5 hour

You have: 3 day
You want: 12 hour
result is 36 hour
```

The `units` command provides a comprehensive database of time units, allowing you to easily convert and perform calculations with them.
