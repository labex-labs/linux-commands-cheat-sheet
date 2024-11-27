#!/bin/bash
cat << EOF > example.txt
This is a sample text file.
The quick brown fox jumps over the lazy dog.
EOF
if [ "$(rev example.txt)" != "$.elif txet elpmas a si sihT\n.god yzal eht revo spmuj xof nworb kciuq ehT" ]; then
  exit 1
fi
exit 0