#!/bin/bash

# This checks the system by calling the /bin/sys_fo.sh script
echo "[+] Running the diagnostics..."
cd ~/Desktop
sleep 2

sys_fo.sh > system_caller.html

firefox system_caller.html
sleep 5

rm system_caller.html

echo "[!] Complete..."
