#!/bin/bash
chmod +x terminai.sh
# Get absolute path
ABS_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/terminai.sh"
# Append to .bashrc silently
grep -qF "alias terminai=" ~/.bashrc || echo "alias terminai='$ABS_PATH'" >> ~/.bashrc   
# Notify
clear
echo 'Type "terminai" to start.'
echo ''
