# Verifying mtoolstest Installation on Ubuntu 22.04

In this step, we will verify that the mtoolstest command is properly installed on our Ubuntu 22.04 system.

First, let's check the version of the mtools package installed on our system:

```bash
dpkg -s mtools | grep Version
```

Example output:

```
Version: 4.0.26-1
```

The output shows that we have version 4.0.26-1 of the mtools package installed.

Next, let's try running the mtoolstest command to ensure it's working correctly:

```bash
mtoolstest --version
```

Example output:

```
mtools version 4.0.26
```

The output confirms that the mtoolstest command is available and functioning properly.

To further verify the installation, we can run the mtoolstest command with the `--help` option to see the available options and usage:

```bash
mtoolstest --help
```

Example output:

```
Usage: mtoolstest [options]
Options:
  -h, --help            show this help message and exit
  -v, --verbose         be verbose
  -q, --quiet           be quiet
  -d, --debug           enable debug mode
  -V, --version         print version information and exit
  -c FILE, --config=FILE
                        use FILE as configuration file
  -t DRIVE, --drive=DRIVE
                        use DRIVE (default is 'a:')
  -m, --mformat         test mformat
  -r, --mread           test mread
  -w, --mwrite          test mwrite
  -l, --mls             test mls
  -D, --mdir            test mdir
  -R, --mrm             test mrm
  -M, --mmove           test mmove
  -C, --mcopy           test mcopy
  -L, --mlabel          test mlabel
  -F, --mformat         test mformat
  -e, --mtype           test mtype
  -a, --all             test all commands
```

The output shows the various options available for the mtoolstest command, which we can use in the next step to test the functionality of the mtools package.
