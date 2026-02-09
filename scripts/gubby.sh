echo get gubbyed

# 1. Get the directory of THIS script
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# 2. Run the second script using that path
# Replace "other_script.sh" with your actual filename
"$SCRIPT_DIR/aiwrpi2.sh"
sudo pihole -up
sudo pihole -g
sudo pihole -r
fastfetch
sleep 10
clear
cat "$SCRIPT_DIR/gubby_art.txt"
apt moo