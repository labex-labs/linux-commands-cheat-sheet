# Explore Timezone Information Using the zdump Command

In this step, you will explore different ways to use the `zdump` command to display timezone information.

First, let's see how to display the current time in a specific timezone:

```bash
sudo zdump -s America/New_York
```

Example output:

```
America/New_York  Tue Apr 18 12:00:00 2023
```

This command shows the current time in the "America/New_York" timezone.

Next, let's see how to display the time in multiple timezones:

```bash
sudo zdump -s America/New_York Europe/London Asia/Tokyo
```

Example output:

```
America/New_York  Tue Apr 18 12:00:00 2023
Europe/London     Tue Apr 18 17:00:00 2023
Asia/Tokyo        Wed Apr 19 00:00:00 2023
```

This command shows the current time in the "America/New_York", "Europe/London", and "Asia/Tokyo" timezones.

Finally, let's see how to display a range of dates in a specific timezone:

```bash
sudo zdump -c 2023-04-18,2023-04-20 America/Los_Angeles
```

Example output:

```
America/Los_Angeles  Tue Apr 18 00:00:00 2023 PDT
America/Los_Angeles  Wed Apr 19 00:00:00 2023 PDT
America/Los_Angeles  Thu Apr 20 00:00:00 2023 PDT
```

This command shows the time in the "America/Los_Angeles" timezone for the range of dates from April 18, 2023 to April 20, 2023.
