# Configuring the lpd Daemon

In this step, we will learn how to configure the lpd (Line Printer Daemon) service on our Ubuntu 22.04 Docker container.

First, let's create a new print queue. We'll use the `lpadmin` command to create a new print queue named "myprinter":

```bash
sudo lpadmin -p myprinter -v file:/dev/null -P /usr/share/ppd/cups-pdf.ppd -E
```

This command creates a new print queue named "myprinter" and associates it with the CUPS-PDF virtual printer driver.

Next, let's enable the new print queue:

```bash
sudo enable-printer myprinter
```

Now, let's verify that the new print queue has been created and enabled:

```bash
sudo lpstat -a
```

Example output:

```
myprinter accepting requests since Mon 01 Jan 2001 12:00:00 AM UTC
```

The output shows that the "myprinter" queue is now accepting print requests.

To further configure the lpd service, we can edit the `/etc/printcap` file, which is the configuration file for the lpd service. This file contains information about the available print queues, their settings, and other configuration options.

Open the `/etc/printcap` file using the `nano` text editor:

```bash
sudo nano /etc/printcap
```

In the file, you can add or modify entries for your print queues. For example, you can set the default printer, configure printer options, or specify the location of the printer.

After making any changes, save the file and restart the lpd service:

```bash
sudo systemctl restart lpd
```

This will apply the new configuration changes to the lpd service.
