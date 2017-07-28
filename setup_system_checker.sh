#!/bin/bash

# This sets up system_checker.sh

echo "[+] starting the setup now..."

sleep 3

cp system_info.sh /bin/sys_fo.sh
cp system_checker.sh /bin/system_checker.sh

chmod 755 /bin/sys_fo.sh && chmod 755 /bin/system_checker.sh

sleep 2
echo "[!] Setup successful! Now just type 'system_checker.sh' into the terminal."

