# Use awk for Data Manipulation and Analysis

In this step, you will learn how to use awk for data manipulation and analysis tasks.

Let's create a file named `sales.csv` with the following data:

```
Product,Quantity,Price
Laptop,10,999.99
Desktop,15,799.99
Tablet,20,499.99
Smartphone,25,299.99
```

Now, let's use awk to calculate the total revenue for each product:

```
awk -F',' 'NR > 1 {total = $2 * $3; print $1, "Total Revenue:", total}' sales.csv
```

Example output:

```
Laptop Total Revenue: 9999.9
Desktop Total Revenue: 11999.85
Tablet Total Revenue: 9999.8
Smartphone Total Revenue: 7499.75
```

In this example, the `NR > 1` pattern skips the header line, and the `{total = $2 * $3; print $1, "Total Revenue:", total}` action calculates the total revenue for each product and prints the result.

You can also use awk to perform more complex data analysis tasks. For example, let's calculate the average price of all products:

```
awk -F',' 'NR > 1 {total += $3; count++} END {print "Average Price:", total/count}' sales.csv
```

Example output:

```
Average Price: 649.995
```

In this example, the `NR > 1 {total += $3; count++}` action accumulates the total price and counts the number of products. The `END {print "Average Price:", total/count}` action calculates and prints the average price.
