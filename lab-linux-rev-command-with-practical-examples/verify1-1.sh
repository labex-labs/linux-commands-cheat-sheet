#!/bin/bash
echo "Hello, World!" > example.txt
if [ "$(rev example.txt)" != "!dlroW ,olleH" ]; then
  exit 1
fi
cat <<EOF > example.txt
Line 1
Line 2
Line 3
EOF
if [ "$(rev example.txt)" != "3 eniL\n2 eniL\n1 eniL" ]; then
  exit 1
fi
exit 0