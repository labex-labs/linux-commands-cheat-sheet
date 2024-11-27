#!/bin/bash

# Create users_passwords.txt file
cat << EOF > ~/project/users_passwords.txt
labex:newpassword1
labuser:newpassword2
EOF

# Update user passwords using chpasswd
cat ~/project/users_passwords.txt | sudo chpasswd

# Create update_passwords.sh script
cat << 'EOF' > ~/project/update_passwords.sh
#!/bin/bash

# Define the list of users and their new passwords
users_and_passwords=(
  "labex:newpassword1"
  "labuser:newpassword2"
)

# Loop through the list and update the passwords
for user_and_password in "${users_and_passwords[@]}"; do
  user=$(echo "$user_and_password" | cut -d':' -f1)
  password=$(echo "$user_and_password" | cut -d':' -f2)
  echo "$user:$password" | sudo chpasswd
done
EOF

# Make update_passwords.sh executable
chmod +x ~/project/update_passwords.sh