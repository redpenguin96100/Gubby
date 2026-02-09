echo get gubbyed
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

"$SCRIPT_DIR/aiwrpi2.sh"
sudo pihole -up
sudo pihole -g
sudo pihole -r
fastfetch
sleep 10
clear
cat "$SCRIPT_DIR/gubby_art.txt"
apt moo
