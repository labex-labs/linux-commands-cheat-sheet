#!/bin/bash
if grep -q 'delivered to command: /usr/bin/procmail' /var/log/mail.log; then
  echo "The email aliases are working correctly."
  exit 0
else
  echo "The email aliases are not working as expected. Check the /etc/aliases file and run newaliases."
  exit 1
fi