#!/bin/bash
if [ -f ~/project/backup.sh ] && grep "rmt \$REMOTE_HOST:\$BACKUP_DIR/project_backup.tar.gz" ~/project/backup.sh > /dev/null; then
  exit 0
else
  exit 1
fi