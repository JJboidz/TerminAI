#!/bin/bash

while true; do
        curl -s https://google.com > /dev/null && break
        echo "Internet is down."
        sleep 2
done

if command -v tgpt &> /dev/null; then
        gnome-terminal -- bash -c "tgpt -i; exec bash"
        clear
else
        curl -sSL https://raw.githubusercontent.com/aandrew-me/tgpt/main/install | bash -s /usr/local/bin
        exec ./terminai.sh
fi
