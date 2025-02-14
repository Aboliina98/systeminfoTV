#!/bin/bash  
# کد رنگ ها
RED='\033[0;31m'  
GREEN='\033[0;32m'  
BLUE='\033[0;34m'  
NC='\033[0m'
BLACK='\033[0;30m'
YELLOW='\033[0;33m'
TURQUOISE='\033[0;36m'
PURPLE='\033[0;35m'
BBLUE='\033[44m'
BGREEN='\033[42m'

#زمان روشن بودن سیستم 
uptime_output=$(uptime -p | sed 's/up //')

# نمایش میزان استفاده از رم
mem_usage=$(free -m | awk '/Mem:/ {print $3"MB / "$2"MB"}')

# ساعت سیستم رو نشون میده
current_time=$(date +"%H:%M:%S")

clear
echo -e "${RED}+-------------${NC}---------------${GREEN}----------------+"

# چک کردن اتصال اینترنت با پینگ به گوگل
if ping -c 1 8.8.8.8 &> /dev/null; then
    interface=$(ip route | grep default | awk '{print $5}')
    printf "${BLACK}A ${NC}| ${YELLOW}Network ${RED}      :${BLACK} ${BGREEN}  Connect+ ${BLUE} by${TURQUOISE} %-8s ${NC} |\n" "$interface"
else
    printf "${BLACK}A ${NC}| ${YELLOW}Network ${RED}      :${RED}${BBLUE}   Disconnect -    ${NC}       |\n"
fi

echo -e "${BLACK}B ${NC}| ${YELLOW}Current time ${RED} :${NC}   $current_time ${NC}              | "
echo -e "${BLACK}O ${NC}| ${YELLOW}Memory Usage ${RED} :${NC}   $mem_usage        ${NC}| "
echo -e "${BLACK}L ${NC}| ${YELLOW}System uptime ${RED}:${NC}   ${NC}$uptime_output ${NC}| "

echo -e "${RED}+-------------${NC}---------------${GREEN}----------------+"