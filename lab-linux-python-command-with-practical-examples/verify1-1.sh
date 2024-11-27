#!/bin/bash
if python3 -c "
import math
print('Hello, World!')
print(len('Python is awesome!'))
print(type(42))
print(abs(-10))
print(round(3.14159, 2))
print(math.sqrt(16))
" | grep -q "Hello, World!.*18.*<class 'int'>.*10.*3.14.*4.0"; then
    exit 0
else
    echo "One or more built-in functions did not work as expected."
    exit 1
fi