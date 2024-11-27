#!/bin/bash
if [ -f ~/project/if_else.sh ] && grep -q "if \[ \$NUM -gt 0 \]; then" ~/project/if_else.sh && grep -q "else" ~/project/if_else.sh && grep -q "echo \"The number is positive.\"" ~/project/if_else.sh && grep -q "echo \"The number is non-positive.\"" ~/project/if_else.sh; then
  exit 0
else
  exit 1
fi