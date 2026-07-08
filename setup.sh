#!/bin/bash

# 1. Make your program executable
chmod +x terminai.sh

# 2. Define the alias in the CURRENT shell
alias terminai='./terminai.sh'

# 3. Suppress ALL output from this point forward
exec > /dev/null 2>&1

# Any echo commands below here will be silenced
echo 'Type "terminai" to start program.'   
