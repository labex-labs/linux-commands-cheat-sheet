#!/bin/bash
if ! grep -q 'DB_HOST="mydb.example.com"' ~/.zsh_history; then
  exit 1
fi
if ! grep -q 'DB_USER="myuser"' ~/.zsh_history; then
  exit 1
fi
if ! grep -q 'DB_PASS="mypassword"' ~/.zsh_history; then
  exit 1
fi
if ! grep -q 'DB_NAME="mydbname"' ~/.zsh_history; then
  exit 1
fi
if ! grep -q 'export PATH=\$PATH:/opt/myapp/bin' ~/.zsh_history; then
  exit 1
fi
if ! grep -q 'export PYTHONPATH=/path/to/my/python/modules' ~/.zsh_history; then
  exit 1
fi