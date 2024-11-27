#!/bin/bash

# Check current LED state
setleds -v

# Turn on Num Lock LED
setleds +num

# Save Num Lock LED state as default
setleds +num