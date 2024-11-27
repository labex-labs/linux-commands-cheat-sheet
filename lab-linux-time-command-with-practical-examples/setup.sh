#!/bin/bash

# Create the my_script.sh file
cat > my_script.sh <<EOF
#!/bin/bash
sleep 3
echo "Script completed"
EOF
chmod +x my_script.sh