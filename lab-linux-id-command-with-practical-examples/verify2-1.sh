#!/bin/bash
if id | grep -q 'uid=1000(labex) gid=1000(labex) groups=1000(labex),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),113(lxd),128(sambashare)'; then
  exit 0
else
  echo "The output of the 'id' command does not match the expected format."
  exit 1
fi