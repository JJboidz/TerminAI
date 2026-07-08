#!/bin/bash

chmod +x terminai.sh

ABS_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/terminai.sh"

if ! grep -q "alias terminai=" ~/.bashrc; then
    echo "alias terminai='$ABS_PATH'" >> ~/.bashrc
fi

source ~/.bashrc > /dev/null 2>&1   
