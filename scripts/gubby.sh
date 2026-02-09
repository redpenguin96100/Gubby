echo get gubbyed
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

cd 
cd gubby
cd aiw 
cd scripts
./aiwrpi2.sh

#pihole updating
sudo pihole -up
sudo pihole -g
sudo pihole -r
#fastfetch
fastfetch
sleep 10
clear
cd ..
cd ..
cat "$SCRIPT_DIR/gubby_art.txt"
#moo
apt moo
