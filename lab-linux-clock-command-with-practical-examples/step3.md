# Set the System Clock

In this step, we will learn how to set the system clock using the `clock` command.

To set the system clock, you can use the following command:

```bash
sudo clock -s <date> <time>
```

Replace `<date>` with the desired date in the format `YYYY-MM-DD`, and `<time>` with the desired time in the format `HH:MM:SS`.

For example, to set the system clock to April 20, 2023, at 11:30 AM, you would use the following command:

```bash
sudo clock -s 2023-04-20 11:30:00
```

After running this command, you can verify the new date and time using the `clock` command:

```bash
clock
```

Example output:

```
The current date is: 2023-04-20
The current time is: 11:30:00
```

Remember that you need to use `sudo` to execute the `clock -s` command, as it requires administrative privileges to set the system clock.
