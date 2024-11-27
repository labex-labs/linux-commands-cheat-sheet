#!/bin/bash

# Create a temporary file in the default system temporary directory
TEMP_FILE=$(mktemp)
echo "Temporary file created: $TEMP_FILE"

# Create a temporary file with a custom template
CUSTOM_TEMP_FILE=$(mktemp /tmp/myfile.XXXXXX)
echo "Temporary file with custom template: $CUSTOM_TEMP_FILE"