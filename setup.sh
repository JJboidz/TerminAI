#!/bin/bash
# Redirect ALL output from this point onwards to /dev/null
exec > /dev/null 2>&1

chmod +x terminai.sh

# Add alias silently
if ! grep -q "alias terminai=" ~/.bashrc; then
    echo "alias terminai='./terminai.sh'" >> ~/.bashrc
fi

# Reload silently
source ~/.bashrc   
