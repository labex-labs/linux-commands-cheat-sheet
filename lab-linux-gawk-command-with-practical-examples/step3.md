# Performing Calculations and Transformations with gawk

In this step, you will learn how to use gawk to perform calculations and transformations on the data in the `data.txt` file.

Let's start by calculating the average age of the people in the file:

```bash
gawk -F, '{sum += $2} END {print "Average age:", sum/NR}' ~/project/data.txt
```

Example output:

```
Average age: 30
```

In this command:

- `{sum += $2}` adds the value of the second column (age) to the `sum` variable for each line.
- `END {print "Average age:", sum/NR}` calculates the average age by dividing the total sum by the number of records (`NR`).

Next, let's transform the data by converting the ages to years and months:

```bash
gawk -F, '{years = int($2 / 1); months = ($2 % 1) * 12; print $1, years "y", months "m"}' ~/project/data.txt
```

Example output:

```
John 25y 0m
Jane 30y 0m
Bob 35y 0m
```

In this command:

- `{years = int($2 / 1); months = ($2 % 1) * 12; print $1, years "y", months "m"}` calculates the years and months from the age value in the second column.

You can also use gawk to generate a report with additional calculations or transformations. For example, let's create a report that includes the name, age, and city, along with a "tax bracket" based on the age:

```bash
gawk -F, '{
  if ($2 < 30)
    tax_bracket = "Low"
  else if ($2 >= 30 && $2 < 50)
    tax_bracket = "Medium"
  else
    tax_bracket = "High"
  print $1, $2, $3, tax_bracket
}' ~/project/data.txt
```

Example output:

```
John 25 New York Low
Jane 30 London Medium
Bob 35 Paris Medium
```

In this command:

- The `if-else` statement determines the tax bracket based on the age.
- The `print` statement outputs the name, age, city, and tax bracket for each record.

Feel free to experiment with more advanced gawk commands and transformations to further explore the capabilities of this powerful text processing tool.
