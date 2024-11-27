#!/bin/bash
if python3 -c "
my_string = '   Python is a powerful programming language   '
print(my_string.strip())
print(my_string.upper())
print(my_string.lower())
print(my_string.replace('Python', 'Java'))
print(' '.join(['Python', 'is', 'awesome']))
print(my_string.find('powerful'))
" | grep -q "Python is a powerful programming language.*PYTHON IS A POWERFUL PROGRAMMING LANGUAGE.*python is a powerful programming language.*Java is a powerful programming language.*Python is awesome.*18"; then
    exit 0
else
    echo "One or more string manipulation commands did not work as expected."
    exit 1
fi