#!/bin/bash
# My Telegram : https://t.me/mochammadhb
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
# ==========================================
# Getting
MYIP=$(curl -s -X GET https://checkip.amazonaws.com);
MYIP=$(curl -s -X GET https://checkip.amazonaws.com);
echo "Checking VPS"
IZIN=$( curl https://raw.githubusercontent.com/Rolka111111/scripts/main/users | grep -o "$MYIP" );
if [ $MYIP = $IZIN >/dev/null 2>&1 ]; then
echo -e "${NC}${GREEN}Permission Accepted...${NC}"
else
echo -e "${NC}${RED}Permission Denied!${NC}";
echo -e "${NC}${LIGHT}Please Contact Admin!!"
echo -e "${NC}${LIGHT}WhatsApp : 082233341225"
echo -e "${NC}${LIGHT}Telegram : https://t.me/mochammadhb"
exit 0
fi
clear
source /var/lib/hasandancow/ipvps.conf
if [[ "$IP" = "" ]]; then
domain=$(cat /etc/xray/domain)
else
domain=$IP
fi
sn="$(cat ~/log-install.txt | grep -w "Snell Service" | cut -d: -f2|sed 's/ //g')"
showpsk="$(cat /etc/snell/snell-server.conf | grep -w "psk" | cut -d= -f2|sed 's/ //g')"
echo -e "${LIGHT}"
echo -e "======-SNELL PROXY-======="
echo -e "IP/Host  : ${MYIP}"
echo -e "Address  : ${domain}"
echo -e "Port     : $sn"
echo -e "PSK      : ${showpsk}"
echo -e "Obfs     : TLS"
echo -e "=========================="
echo -e "Script By JuraganSSH"
echo -e "${NC}"
read -p "Type the x back to main menu : " menu
case $menu in
x)
clear
menu
;;
esac
