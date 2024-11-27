# Understand the units Command

In this step, we will explore the `units` command in Linux, which is a versatile tool for converting between different units of measurement.

The `units` command allows you to perform unit conversions and arithmetic operations involving various units, such as length, mass, time, and more. It can be particularly useful for scientific, engineering, and everyday calculations.

To get started, let's install the `units` package in our Ubuntu 22.04 Docker container:

```bash
sudo apt-get update
sudo apt-get install -y units
```

Now, let's explore some basic usage of the `units` command:

```bash
# Launch the units interactive mode
units

# Convert between units
> meter to foot
* 3.2808399
/ 0.3048

# Perform arithmetic operations with units
> 5 kilogram + 10 pound
result is 12.27272727 kilogram

# Exit the units interactive mode
Ctrl + D
```

Example output:

```
Currency exchange rates not available.
You have: meter
You want: foot
* 3.2808399
/ 0.3048

You have: 5 kilogram
You want: 10 pound
result is 12.27272727 kilogram
```

The `units` command provides a comprehensive database of units, allowing you to convert between a wide range of measurements. In the interactive mode, you can enter the units you want to convert from and to, and the command will provide the conversion factor.

Additionally, you can perform arithmetic operations with units, which can be particularly useful for scientific and engineering calculations.
