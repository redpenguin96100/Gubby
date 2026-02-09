#!/bin/bash
cat << 'EOF'
   ____       _     _             _       _                   
  / ___|_   _| |__ | |__  _   _  (_)___  | |__   ___ _ __ ___ 
 | |  _| | | | '_ \| '_ \| | | | | / __| | '_ \ / _ \ '__/ _ \
 | |_| | |_| | |_) | |_) | |_| | | \__ \ | | | |  __/ | |  __/
  \____|\__,_|_.__/|_.__/ \__, | |_|___/ |_| |_|\___|_|  \___|
                          |___/                               
  _           __ _                                      _                          
 | |_ ___    / _(_)_  __  _   _ _ __   _ __   __ _  ___| | ____ _  __ _  ___  ___  
 | __/ _ \  | |_| \ \/ / | | | | |__| | |_ \ / _` |/ __| |/ / _` |/ _` |/ _ \/ __| 
 | || (_) | |  _| |>  <  | |_| | |    | |_) | (_| | (__|   < (_| | (_| |  __/\__ \ 
  \__\___/  |_| |_/_/\_\  \__,_|_|    | .__/ \__,_|\___|_|\_\__,_|\__, |\___||___/ 
                                      |_|                         |___/            
EOF
# Start Of The Script:
echo -en '\n'
echo -e "Just A Small Script For Updating/Upgrading And Fixing Packages On Linux \e[7m(Raspberry Pi OS)\e[27m"
echo 'Version 2.0'
echo -en '\n'
echo -en '\n'


# Prompt:
echo "Please enter your password, if any to start ッ"
echo -en '\n'
# Main:
sudo apt update --fix-missing || error '\e[31mUnable to update, please check your internet connection...\e[0m' && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt full-upgrade -y && sudo apt autoremove -y
echo -en && sudo apt install -f && sudo dpkg --configure -a
#Comment 'clear' below to stop clearing the output:
clear -x
# Ending:
echo gubby has fixed ur package

# About this Script:
# ALL IS WELL is a bash script that allows users to easily update and upgrade their repositories and packages on linux, BSD, And More. It will also fix any broken packages and dependencies, if possible. Forget about typing all update/upgrade commands  manually, when ALL IS WELL!

######################################################
# SCRIPT AUTHOR: SPECTRUMGAMER75 (^̮^)                #
# www.github.com/spectrumgamer75                     #
# Incase of any errors kindly let me know on GitHub. #
#Gubbyed by redpenguin96100	  		     #
######################################################
