# Generate Reports and Visualize Network Data with vnstat

In this step, we will learn how to generate reports and visualize network data using the vnstat tool.

First, let's generate a text-based report of the network traffic:

```bash
sudo vnstat -i eth0 -d
```

Example output:

```
eth0 daily traffic statistics (eth0)

          rx      |     tx      |    total    |   date
-----------------+-------------+-------------+----------
          12.45 M|       4.32 M|      16.77 M| 2023-04-10
```

This command shows the daily network traffic statistics for the `eth0` interface.

To generate a more detailed report, we can use the `vnstat -m` command:

```bash
sudo vnstat -i eth0 -m
```

Example output:

```
eth0 monthly traffic statistics (eth0)

        rx      |     tx      |    total    |   month
---------------+-------------+-------------+----------
        12.45 M|       4.32 M|      16.77 M| Apr '23
```

This command shows the monthly network traffic statistics for the `eth0` interface.

To visualize the network data, we can use the `vnstati` tool, which is part of the vnstat package. Let's generate an image-based report:

```bash
sudo vnstati -i eth0 -o eth0_report.png
```

This command will generate a PNG image file named `eth0_report.png` in the current directory, which contains a graphical representation of the network traffic data.

You can view the generated report image using an image viewer or by uploading it to a file sharing service.
