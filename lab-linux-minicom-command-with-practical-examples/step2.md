# Connect to a Serial Device Using minicom

In this step, we will learn how to use minicom to connect to a serial device.

First, let's identify the serial port that the device is connected to. In the Ubuntu 22.04 Docker container, you can typically find the serial port under the `/dev/` directory. For example, if the device is connected to the first serial port, the path would be `/dev/ttyUSB0`.

Next, let's start minicom and configure the connection settings:

```bash
sudo minicom -s
```

In the minicom configuration menu, navigate to the "Serial port setup" option and configure the following settings:

- Serial Device: /dev/ttyUSB0 (or the appropriate serial port path for your device)
- Baud: 9600 (or the baud rate required by your device)
- Parity: None
- Databits: 8
- Stopbits: 1

Save the configuration and exit the menu.

Now, let's connect to the serial device:

```bash
sudo minicom
```

You should see the terminal emulator window, and you can start interacting with the connected serial device.

Example output:

```
Welcome to minicom 2.8

OPTIONS: I18n
Compiled on Feb 10 2022, 17:15:30.
Port /dev/ttyUSB0, 09:00:00

Press CTRL-A Z for help on special keys
```

To disconnect from the serial device, press `Ctrl+A` followed by `X`.
