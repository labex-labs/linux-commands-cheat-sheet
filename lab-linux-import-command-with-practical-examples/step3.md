# Import Data from an Excel Spreadsheet into a Database Table

In this step, you will learn how to import data from an Excel spreadsheet into a database table using the `import` command.

First, let's create a sample Excel spreadsheet named `data.xlsx` in the `~/project` directory. You can use a tool like LibreOffice or Microsoft Excel to create the spreadsheet and save it in the `~/project` directory.

The spreadsheet should have the following data:

| Name | Age | City     |
| ---- | --- | -------- |
| John | 25  | New York |
| Jane | 30  | London   |
| Bob  | 35  | Paris    |

Now, let's create a new SQLite database named `sample.db` and a table named `users` in the `~/project` directory:

```
$ sqlite3 ~/project/sample.db
sqlite> CREATE TABLE users (name TEXT, age INTEGER, city TEXT);
```

To import the data from the `data.xlsx` file into the `users` table, you will need to use a third-party tool that can read Excel files and convert them to a format that can be imported into the database.

One such tool is `xlsx2csv`, which can be installed using the following command:

```
$ sudo apt-get install xlsx2csv
```

Once the `xlsx2csv` tool is installed, you can use the following command to import the data from the `data.xlsx` file into the `users` table:

```
$ xlsx2csv ~/project/data.xlsx - | sqlite3 ~/project/sample.db ".import /dev/stdin users"
```

This command will convert the Excel spreadsheet to a CSV format, and then import the data from the CSV format into the `users` table in the `sample.db` database.

Example output:

```
$ sqlite3 ~/project/sample.db "SELECT * FROM users;"
John|25|New York
Jane|30|London
Bob|35|Paris
```

As you can see, the data from the Excel spreadsheet has been successfully imported into the database table.
