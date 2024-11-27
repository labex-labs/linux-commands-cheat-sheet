#!/bin/bash

# Create the project directory if it doesn't exist
if [ ! -d ~/project ]; then
  mkdir ~/project
fi

# Create the hello.sh script
cat << EOF > ~/project/hello.sh
#!/bin/bash
echo "Hello, World!"
EOF

# Make the hello.sh script executable
chmod +x ~/project/hello.sh

# Create the variables.sh script
cat << EOF > ~/project/variables.sh
#!/bin/bash

# Assign a value to a variable
name="John Doe"

# Use the variable in an echo statement
echo "Hello, \$name!"

# Perform command substitution
current_date=\$(date)
echo "The current date is: \$current_date"
EOF

# Make the variables.sh script executable
chmod +x ~/project/variables.sh