# Customize lshw Output and Save to a File

In this final step, you will learn how to customize the output of the `lshw` command and save the information to a file for later reference.

The `lshw` command provides several options to customize the output, including:

- `-short`: Display a concise summary of hardware information
- `-sanitize`: Remove sensitive information from the output
- `-html`: Generate output in HTML format
- `-xml`: Generate output in XML format
- `-json`: Generate output in JSON format

Let's start by saving the detailed hardware information to a file in XML format:

```bash
sudo lshw -xml > hardware_info.xml
```

This will save the full hardware information in an XML file named `hardware_info.xml` in the current directory.

You can also save the output in a more concise, human-readable format, such as HTML:

```bash
sudo lshw -html > hardware_info.html
```

This will generate an HTML file with the hardware information, which you can open in a web browser.

If you only need to focus on specific hardware components, you can use the `-class` option to filter the output:

```bash
# Save network information to a file
sudo lshw -class network -xml > network_info.xml

# Save disk information to a file
sudo lshw -class disk -xml > disk_info.xml
```

These commands will save the network and disk hardware information to separate XML files, respectively.

The customized output files can be useful for various purposes, such as:

- Troubleshooting hardware-related issues
- Documenting your system's hardware configuration
- Sharing hardware information with others
- Automating hardware inventory and monitoring tasks

In the final verification step, you will check that the hardware information has been saved to the expected files.
