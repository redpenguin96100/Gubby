#!/bin/bash
set -eu
read -p "Are you sure you want to uninstall Gubby? This will remove the Gubby directory. (y/N): " confirm

if [[ "$confirm" == [yY] || "$confirm" == [yY][eE][sS] ]]; then
    echo "Uninstalling Gubby..."

    # Go up two levels to reach the root of Gubby (if scripts is directly under Gubby)
    GUBBY_ROOT=$HOME/Gubby
    
    if [ -d "$GUBBY_ROOT" ]; then
        rm -rf "$GUBBY_ROOT"
        echo "Gubby uninstalled successfully."
    else
        echo "Gubby installation directory not found at $GUBBY_ROOT."
    fi
else
    echo "Uninstallation cancelled."
fi
