#!/bin/bash  
# چک کردن وجود curl  
if ! command -v curl &> /dev/null  
then  
    echo "⚠️ curl نصب نیست..."  
    echo "در حال نصب curl..."  
    
    # نصب curl  
    sudo apt update  
    sudo apt install curl -y  
    
    clear  
    echo "✅ curl با موفقیت نصب شد"  
    echo "لطفا اسکریپت را مجددا اجرا کنید"  
    exit 0  
fi  

read -p "Full screen and ENTER . . ." reg  
if [[ -z "$reg" ]]  
then  
    clear  
    read -p "Your location : " loc  
    weather=$(curl -s wttr.in/$loc)  
    echo "${weather}"  
elif [[ "$reg" == "0" ]]  
then  
    echo "programm closed."  
    exit 0  
else  
    echo "Bro, please just full screen and enter"  
fi


# read -p "Full screen and ENTER . . ." reg  
# if [[ -z "$reg" ]]  
# then  
#     clear  
#     read -p "Your location : " loc  
#     weather=$(curl -s wttr.in/$loc)  # افزودن -s برای حذف خروجی اضافی  
#     echo "${weather}"  
# elif [[ "$reg" == "0" ]]  
# then  
#     echo "programm closed."  
#     exit 0  
# else  
#     echo "Bro, please just full screen and enter"  
# fi