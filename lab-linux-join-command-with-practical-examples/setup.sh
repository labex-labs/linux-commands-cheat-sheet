#!/bin/bash

# Create sample files
mkdir -p ~/project/text-processing
cd ~/project/text-processing
cat << EOF > file1.txt
1001 John
1002 Jane
1003 Bob
1004 Alice
EOF

cat << EOF > file2.txt
1001 Sales
1002 Marketing
1003 IT
1004 HR
EOF

cat << EOF > departments.txt
1001 Sales
1002 Marketing
1003 IT
1004 HR
EOF

cat << EOF > employees.txt
1001 John
1002 Jane
1003 Bob
1004 Alice
EOF