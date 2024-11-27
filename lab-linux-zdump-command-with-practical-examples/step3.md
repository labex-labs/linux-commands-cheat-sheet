# Practical Examples of Using the zdump Command

In this final step, you will explore some practical examples of using the `zdump` command.

First, let's see how to use the `zdump` command to find the current time in a specific timezone:

```bash
sudo zdump -s Asia/Tokyo
```

Example output:

```
Asia/Tokyo        Wed Apr 19 00:00:00 2023
```

This command shows the current time in the "Asia/Tokyo" timezone.

Next, let's see how to use the `zdump` command to find the time difference between two timezones:

```bash
sudo zdump -v America/New_York Asia/Tokyo
```

Example output:

```
America/New_York  Tue Apr 18 12:00:00 2023 EDT -0400 (EDT)
Asia/Tokyo        Wed Apr 19 00:00:00 2023 JST +0900 (JST)
```

This command shows the current time in both the "America/New_York" and "Asia/Tokyo" timezones, as well as the time difference between them (13 hours).

Finally, let's see how to use the `zdump` command to find the daylight saving time (DST) status for a specific timezone:

```bash
sudo zdump -v America/Los_Angeles
```

Example output:

```
America/Los_Angeles  Tue Apr 18 00:00:00 2023 PDT -0700 (PDT)
America/Los_Angeles  Tue Apr 18 01:00:00 2023 PDT -0700 (PDT)
America/Los_Angeles  Tue Apr 18 02:00:00 2023 PDT -0700 (PDT)
America/Los_Angeles  Tue Apr 18 03:00:00 2023 PDT -0700 (PDT)
```

This command shows the current time in the "America/Los_Angeles" timezone, as well as the DST status (isdst=1, which means DST is in effect).
