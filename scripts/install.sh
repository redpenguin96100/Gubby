#!/bin/bash
set -eu
# F
failure_message() {
    echo "❌ Error: Installation failed. idk what broke you figure it out."
}

trap failure_message ERR

TARGET_DIR="$HOME/Gubby"
echo "Gubby installation started!"

if ! command -v git &> /dev/null; then
    echo "git not found. Installing..."
    sudo apt update && sudo apt install -y git
fi
# 2. Only clone if the directory doesn't exist
if [ ! -d "$TARGET_DIR" ]; then
    git clone https://github.com/redpenguin96100/Gubby.git "$TARGET_DIR"
else
    echo "Gubby folder already exists, trying to update"
    git -C "$TARGET_DIR" pull 
fi
find "$TARGET_DIR" -type f -name "*.sh" -exec chmod +x {} +
if ! grep -q "alias gubby=" ~/.bash_aliases; then
    echo 'alias gubby="$HOME/Gubby/scripts/gubby.sh"' >> ~/.bash_aliases
fi
echo "Gubby installation finished!"
echo "Run source .bash_aliases or open a new terminal"
echo " then just type gubby in a terminal"
