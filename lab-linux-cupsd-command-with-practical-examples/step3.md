# Configure Printer Settings with cupsd

In this step, you will learn how to configure printer settings using the `cupsd` command.

First, let's check the current configuration of the "MyPrinter" printer:

```bash
sudo cupsd -p MyPrinter -l
```

Example output:

```
printer MyPrinter
  State: idle, accepting jobs
  Device URI: ipp://localhost/printers/MyPrinter
  Printer is shared
  Printer is located in .
  Printer is connected
  Printer driver: generic
  Printer is enabled and ready to print
```

As you can see, the printer is currently in the "idle" state and is accepting jobs.

Now, let's change the printer's default paper size to A4:

```bash
sudo lpadmin -p MyPrinter -o media=a4
```

To verify the change, let's check the printer configuration again:

```bash
sudo cupsd -p MyPrinter -l
```

Example output:

```
printer MyPrinter
  State: idle, accepting jobs
  Device URI: ipp://localhost/printers/MyPrinter
  Printer is shared
  Printer is located in .
  Printer is connected
  Printer driver: generic
  Printer is enabled and ready to print
  Default paper size: a4
```

You can see that the default paper size is now set to "a4".

Next, let's pause the printer:

```bash
sudo cupsd -p MyPrinter -o printer-state-reasons=paused
```

To verify the change, check the printer status again:

```bash
sudo cupsd -p MyPrinter -l
```

Example output:

```
printer MyPrinter
  State: paused, accepting jobs
  Device URI: ipp://localhost/printers/MyPrinter
  Printer is shared
  Printer is located in .
  Printer is connected
  Printer driver: generic
  Printer is disabled and not ready to print
  Default paper size: a4
```

The printer is now in the "paused" state, and it is not ready to print.
