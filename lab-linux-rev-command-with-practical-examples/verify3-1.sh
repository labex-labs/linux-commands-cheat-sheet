#!/bin/bash
cat << EOF > example.txt
Line 1
Line 2
Line 3
Line 4
Line 5
EOF
if [ "$(rev example.txt)" != "5 eniL\n4 eniL\n3 eniL\n2 eniL\n1 eniL" ]; then
  exit 1
fi
exit 0