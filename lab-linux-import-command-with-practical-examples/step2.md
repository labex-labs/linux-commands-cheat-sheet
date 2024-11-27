# Import Data from a CSV File into a Database Table

In this step, you will learn how to import data from a CSV file into a database table using the `import` command.

First, let's create a sample CSV file named `data.csv` in the `~/project` directory:

```
$ cat > ~/project/data.csv
Name,Age,City
John,25,New York
Jane,30,London
Bob,35,Paris
```

Now, let's create a new SQLite database named `sample.db` and a table named `users` in the `~/project` directory:

```
$ sqlite3 ~/project/sample.db
sqlite> CREATE TABLE users (name TEXT, age INTEGER, city TEXT);
```

To import the data from the `data.csv` file into the `users` table, use the following command:

```
$ sqlite3 ~/project/sample.db ".import ~/project/data.csv users"
```

This command will import the data from the `data.csv` file into the `users` table in the `sample.db` database.

Example output:

```
$ sqlite3 ~/project/sample.db "SELECT * FROM users;"
John|25|New York
Jane|30|London
Bob|35|Paris
```

As you can see, the data from the CSV file has been successfully imported into the database table.
