#!/bin/bash

# Add platform-tools folder to $PATH:
#nano ~/.zshrc
# Add export PATH="$HOME/Downloads/platform-tools:$PATH" to end of file & save

# Pair on first connection:
#~/Downloads/platform-tools/adb start-server
# On phone, Developer Options>Wireless debugging>Pair device with pairing code
#~/Downloads/platform-tools/adb pair 10.10.10.3:$pairingport

# Code sourced from https://maxammann.org/posts/2022/01/android11-adb-automatic/
sudo IP=10.10.10.3 bash -c '~/Downloads/platform-tools/adb connect $IP:$(sudo nmap $IP -p 30000-49999 -Pn -T5 -oG - --defeat-rst-ratelimit | awk "/open/{print \$5}" | cut -d/ -f1)' && scrcpy -m 768
