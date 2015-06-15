#! /bin/bash
UPDATES=`pacman -Qu | wc -l`

echo -e "\033[0;36m"
 
echo ""

echo "    ▀▄ ▄▀    "

echo -e "  ▄█▀███▀█▄  \033[1;31m "$UPDATES"\033[0;36m Updates Available"

echo " █▀███████▀█"

echo " ▀ ▀▄▄ ▄▄▀ ▀"

echo ""

echo -e "\033[m"
