#!/bin/bash
if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root"
    exit
fi
clear
echo ""
echo "    ================================="
echo "    == WHITECAT Dependancy Checker =="
echo "    ==        -Version 1a-         =="
echo "    ================================="
echo ""
echo "[~] Installing needed programs.."
echo ""
sudo apt-get update
sudo apt-get install -y hcxdumptool hcxtools hashcat iw grep 

echo ""
echo "[~] Copying binary files to /usr/bin/"
sudo rm -rf /usr/bin/whitecat
sudo cp whitecat /usr/bin/whitecat
sudo chmod +x /usr/bin/whitecat

echo ""
echo "[~] Creating dir /usr/share/WHITECAT"

if [ ! -d "/usr/share/WHITECAT" ]; then
  sudo mkdir /usr/share/WHITECAT
fi

echo ""
echo "[!] All Done!"
