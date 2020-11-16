clear
green='\e[1;32m'
cyan='\e[1;36m'
red='\e[1;31m'
blue='\e[1;34m'
white='\e[1;35m'
yellow='\e[1;33m'
echo
echo
echo -e $cyan " __    __    ___  ____          ____  ____   _____   ___  ";
echo -e $cyan "|  |__|  |  /  _]|    \        |    ||    \ |     | /   \ ";
echo -e $cyan "|  |  |  | /  [_ |  o  ) _____  |  | |  _  ||   __||     |";
echo -e $cyan "|  |  |  ||    _]|     ||     | |  | |  |  ||  |_  |  O  |";
echo -e $cyan "|        ||   [_ |  O  ||_____| |  | |  |  ||   _] |     |";
echo -e $cyan " \      / |     ||     |        |  | |  |  ||  |   |     |";
echo -e $cyan "  \_/\_/  |_____||_____|       |____||__|__||__|    \___/ ";
echo
echo -e $red "             The Script By:$cyan MrHacker-X"
echo
echo
echo -e $cyan"{$yellow 1$cyan }$green My Ip"
echo -e $cyan"{$yellow 2$cyan }$green Info Ip and Site"
echo -e $cyan"{$yellow 3$cyan }$green Host DNS Finder"
echo -e $cyan"{$yellow 4$cyan }$green Scanner Port"
echo -e $cyan"{$yellow 5$cyan }$green Host Finder"
echo -e $cyan"{$yellow 6$cyan }$green info domain"
echo -e $cyan"{$yellow 7$cyan }$green Extract Links"
echo -e $cyan"{$yellow 8$cyan }$green Others"
echo -e $cyan"{$yellow 0$cyan }$green EXIT"
echo
echo
read -p "Enter The Number: " ipp
if [ $ipp = 1 ]
then
echo -e $cyan
ip=$(curl -s https://api.ipify.org)
echo "My public IP address is: $ip"
echo
echo -e $blue
read -p "Press Enter To The Back" enter
bash info.sh
fi
if [ $ipp = 2 ]
then
echo
read -p "Enter The Ip or site: " ip
curl http://ip-api.com/$ip
echo
echo -e $blue
read -p "Press Enter To The Back" enter
bash info.sh
fi
if [ $ipp = 3 ]
then
echo
read -p "Enter The Site: " site
curl https://api.hackertarget.com/mtr/?q=$site
echo
echo -e $blue
read -p "Press Enter To The Back" enter
bash info.sh
fi
if [ $ipp = 4 ]
then
echo
read -p "Enter The Ip or Site: " port
curl http://api.hackertarget.com/nmap/?q=$port
echo
echo -e $blue
read -p "Press Enter To The Back" enter
bash info.sh
fi

if [ $ipp = 5 ]
then
echo
read -p "Enter The Site: " s
s=$(curl -s http://api.hackertarget.com/hostsearch/?q=$s)
echo "The host is: $s"
echo
echo -e $blue
read -p "Press Enter To The Back" enter
bash info.sh
fi
if [ $ipp = 6 ]
then
echo
read -p 'Enter The domain: ' mail
curl -H "Accept: application/json" \
https://check-host.net/check-tcp?host=smtp://$mail&max_nodes=1
echo
echo -e $blue
echo
echo
read -p "Press Enter To The Back" enter
bash info.sh
fi
if [ $ipp = 7 ]
then
echo
read -p "Enter The domain: " df
echo -e $red
curl https://api.hackertarget.com/pagelinks/?q=$df
echo
echo -e $blue
read -p "Press Enter To The Back" enter
bash info.sh
fi

if [ $ipp = 8 ]
then
echo
python2 lib
echo
echo -e $blue
read -p "Press Enter To The Back" enter
bash info.sh
fi

if [ $ipp = 0 ]
then
clear
echo
echo
echo
echo
echo
echo -e $green "         INSTAGRAM:$cyan hackerx30"
echo -e $green "         GITHUB:$cyan MrHacker-X"
echo -e $green "         YOUTUBE:$cyan Hacker X"
echo
echo
echo
echo
exit
else
bash info.sh
fi
