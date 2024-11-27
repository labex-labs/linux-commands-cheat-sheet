# Understand the Purpose and Syntax of the cal Command

In this step, you will learn about the purpose and syntax of the `cal` command in Linux. The `cal` command is used to display a calendar for the current month, a specific month, or a specific year.

To display the calendar for the current month, simply run the `cal` command:

```bash
cal
```

Example output:

```
   September 2022
Su Mo Tu We Th Fr Sa
             1  2  3
 4  5  6  7  8  9 10
11 12 13 14 15 16 17
18 19 20 21 22 23 24
25 26 27 28 29 30
```

To display the calendar for a specific month and year, use the following syntax:

```bash
cal [month] [year]
```

For example, to display the calendar for April 2023:

```bash
cal 4 2023
```

Example output:

```
   April 2023
Su Mo Tu We Th Fr Sa
                   1
 2  3  4  5  6  7  8
 9 10 11 12 13 14 15
16 17 18 19 20 21 22
23 24 25 26 27 28 29
30
```

The `cal` command can also display the calendar for a full year by specifying only the year:

```bash
cal [year]
```

For example, to display the calendar for the year 2024:

```bash
cal 2024
```

Example output:

```
                 2024
      January               February               March
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6               1  2  3               1  2
 7  8  9 10 11 12 13  4  5  6  7  8  9 10  3  4  5  6  7  8  9
14 15 16 17 18 19 20 11 12 13 14 15 16 17 10 11 12 13 14 15 16
21 22 23 24 25 26 27 18 19 20 21 22 23 24 17 18 19 20 21 22 23
28 29 30 31           25 26 27 28 29       24 25 26 27 28 29 30
                                                        31
```

This displays the calendar for the entire year, with each month shown in a separate column.
