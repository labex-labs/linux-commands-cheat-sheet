#!/bin/bash
if ! grep -q "This is a test file." ~/project/svn-repo/test.txt; then
    echo "test.txt file does not contain the expected content."
    exit 1
fi
if ! svn log ~/project/svn-repo | grep -q "Add test.txt file"; then
    echo "Commit message 'Add test.txt file' not found in the repository log."
    exit 1
fi
if ! grep -q "Updated test file." ~/project/svn-repo/test.txt; then
    echo "test.txt file does not contain the expected updated content."
    exit 1
fi
if grep -q "Updated test file." ~/project/svn-repo/test.txt; then
    echo "test.txt file still contains the updated content after revert."
    exit 1
fi
echo "Commit, update, and revert operations are successful."
exit 0