#!/bin/bash

# Create the hello.sh script
cd ~/project
cat << EOF > hello.sh
#!/bin/bash
echo "Hello, World!"
EOF
chmod +x hello.sh

# Create the variables.sh script
cat << EOF > variables.sh
#!/bin/bash
NAME="John Doe"
echo "My name is \$NAME"
EOF
chmod +x variables.sh

# Create the args.sh script
cat << EOF > args.sh
#!/bin/bash
echo "Positional parameter 1: \$1"
echo "Positional parameter 2: \$2"
echo "All parameters: \$@"
echo "Number of parameters: \$#"
EOF
chmod +x args.sh