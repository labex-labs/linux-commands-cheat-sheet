# Understand the clock Command

In this step, we will explore the Linux `clock` command and understand its usage for displaying the current date and time, as well as setting the system clock.

The `clock` command is a utility in Linux that provides information about the system clock and allows you to set the time and date. It is a useful tool for system administrators and users who need to manage the system time.

Let's start by checking the current date and time using the `clock` command:

```bash
clock
```

Example output:

```
The current date is: 2023-04-18
The current time is: 15:30:00
```

As you can see, the `clock` command displays the current date and time on the system.

Next, let's set the system clock to a specific date and time. Suppose we want to set the clock to April 19, 2023, at 10:00 AM. We can use the following command:

```bash
sudo clock -s 2023-04-19 10:00:00
```

This command sets the system clock to the specified date and time. Note that you need to use `sudo` to execute this command, as it requires administrative privileges.

After setting the clock, you can verify the new date and time using the `clock` command again:

```bash
clock
```

Example output:

```
The current date is: 2023-04-19
The current time is: 10:00:00
```

The `clock` command is a simple yet powerful tool for managing the system clock in Linux. In the next steps, we will explore more advanced uses of the `clock` command.
