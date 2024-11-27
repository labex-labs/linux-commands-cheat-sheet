# Automate ex Commands Using Scripts

In this step, you will learn how to automate ex commands using scripts. This can be useful when you need to perform repetitive editing tasks or apply the same set of changes to multiple files.

Let's create a simple script to automate some ex commands:

1. Create a new file called `ex_script.sh` in the `~/project` directory:

   ```
   nano ~/project/ex_script.sh
   ```

2. Add the following content to the script:

   ```bash
   #!/bin/bash

   # Open the file in ex mode
   ex file.txt << EOF
   # Insert a new line at the beginning
   1i
   This is a new line inserted at the beginning.
   .
   # Replace "first" with "replaced" in the file
   :%s/first/replaced/g
   # Save and quit
   :wq
   EOF
   ```

   This script will:

   - Open the `file.txt` in ex mode
   - Insert a new line at the beginning of the file
   - Replace all occurrences of "first" with "replaced"
   - Save the changes and exit ex mode

3. Make the script executable:

   ```
   chmod +x ~/project/ex_script.sh
   ```

4. Run the script:

   ```
   ~/project/ex_script.sh
   ```

Now, let's verify the changes made by the script:

```
cat file.txt
```

The output should be:

```
This is a new line inserted at the beginning.
This is the replaced line.
This is a new line.
This is the third line.
```

As you can see, the script has successfully automated the ex commands, making it easy to apply the same set of changes to the file.
