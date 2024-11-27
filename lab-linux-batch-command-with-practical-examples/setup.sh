#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Create the batch_example.sh file
cat << EOF > ~/project/batch_example.sh
#!/bin/bash
echo "This is the first command in the batch file."
echo "This is the second command in the batch file."
echo "This is the third command in the batch file."
EOF

# Make the batch_example.sh file executable
chmod +x ~/project/batch_example.sh

# Create the list_files.sh file
cat << EOF > ~/project/list_files.sh
#!/bin/bash

echo "Generating a list of files in the current directory..."
ls -l > ~/project/file_list.txt
echo "List of files saved to ~/project/file_list.txt"
EOF

# Make the list_files.sh file executable
chmod +x ~/project/list_files.sh