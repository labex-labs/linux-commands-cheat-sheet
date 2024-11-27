#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
    mkdir ~/project
fi

# Create the script.sh file
cat << EOF > ~/project/script.sh
#!/bin/bash

echo "This is the beginning of the script."
exit 1
echo "This line will not be executed."
EOF

# Make the script executable
chmod +x ~/project/script.sh