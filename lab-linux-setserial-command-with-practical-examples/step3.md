# Configure Serial Port Settings with setserial

In this step, we will learn how to use the `setserial` command to configure various settings for the serial ports on your Linux system.

Let's start by identifying the serial ports on your system:

```bash
sudo setserial -g /dev/ttyS*
```

Example output:

```
/dev/ttyS0 uart:16550A port:0x03f8 irq:4
/dev/ttyS1 uart:16550A port:0x02f8 irq:3
```

Now, let's say you want to change the baud rate of the `/dev/ttyS0` serial port to 115200 bps and enable custom baud rate settings:

```bash
sudo setserial /dev/ttyS0 baud_base 115200 spd_cust
```

To verify the changes, you can run the `setserial` command again with the `-a` option:

```bash
sudo setserial /dev/ttyS0 -a
```

Example output:

```
/dev/ttyS0, Line 0:
        Baud_base: 115200, close_delay: 50, divisor: 0
        closing_wait: 3000, custom_divisor: 0, max_baud: 0
        port: 0x03f8, irq: 4
        flags: (0x10) UPF_SKIP_TEST
        spd_cust: 1, spd: (0x00)
```

The output shows that the baud rate is now set to 115200 bps, and the `spd_cust` flag is enabled, allowing you to use custom baud rates.

You can also use the `setserial` command to configure other serial port settings, such as:

- `spd_normal`: Set the standard baud rates
- `spd_vhi`: Set the baud rate to 57600 bps
- `spd_hi`: Set the baud rate to 38400 bps
- `spd_shi`: Set the baud rate to 115200 bps
- `uart`: Set the UART type (e.g., `uart:16550A`)
- `port`: Set the I/O port address
- `irq`: Set the interrupt request (IRQ) number

Remember to refer to the `man setserial` page for a complete list of available options and their descriptions.
