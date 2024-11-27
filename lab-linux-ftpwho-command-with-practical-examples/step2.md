# Explore the ftpwho Command Options

In this step, you will learn about the various options available with the `ftpwho` command to customize the output and perform specific actions.

To see the available options, you can run the `ftpwho` command with the `--help` or `-h` flag:

```
sudo ftpwho --help
```

This will display the following output:

```
Usage: ftpwho [options]
Options:
  -h, --help            show this help message and exit
  -a, --active          show only active connections
  -i, --idle            show only idle connections
  -u USER, --user=USER  show connections for a specific user
  -H HOST, --host=HOST  show connections for a specific host
  -d DIR, --dir=DIR     show connections for a specific directory
  -l, --long            show long format output
  -V, --version         show program's version number and exit
```

Let's explore some of these options:

1. **Show only active connections**:

   ```
   sudo ftpwho -a
   ```

   This will display only the active FTP connections, excluding the idle ones.

2. **Show only idle connections**:

   ```
   sudo ftpwho -i
   ```

   This will display only the idle FTP connections, excluding the active ones.

3. **Show connections for a specific user**:

   ```
   sudo ftpwho -u labex
   ```

   This will display the FTP connections for the user `labex`.

4. **Show connections for a specific host**:

   ```
   sudo ftpwho -H 192.168.1.100
   ```

   This will display the FTP connections for the host `192.168.1.100`.

5. **Show connections for a specific directory**:

   ```
   sudo ftpwho -d /home/labex
   ```

   This will display the FTP connections for the directory `/home/labex`.

6. **Show long format output**:
   ```
   sudo ftpwho -l
   ```
   This will display the FTP connection information in a more detailed, long format.

You can combine these options to further customize the output. For example, to show only the active connections for the user `labex`:

```
sudo ftpwho -a -u labex
```

Experiment with these options to understand how you can use the `ftpwho` command to monitor and troubleshoot FTP server connections and user activities.
