#iso checker
read -p "Does WIN11 ARM ISO file exist in your Download folder? (Yes/No) : " input
if [[ $input == Yes || $input == yes || $input == y || $input == Y ]]; then
   clear
   cd $HOME
   termux-wake-lock
   pkg install x11-repo -y
   pkg install qemu-system-aarch64 -y
   clear
   echo -e "\e[1;92m1] Allow Storage Permission To Termux."
   sleep 3
   clear
   read -p "Select Size Of RAM In MB (e.g., 1GB = 1024) : " ram
   echo "[+] Server Is Running...."
   echo -e "Your Server IP is:\e[1;91m 127.0.0.1:2"
   qemu-system-aarch64 -m $ram -cdrom storage/downloads/WIN11_ARM.iso -vnc 127.0.0.1:2

elif [[ $input == No || $input == no || $input == n || $input == N ]]; then
echo -e "\e[1;91m1. First Download WIN11 ARM ISO file from this Link: \e[1;92mhttps://www.microsoft.com/en-us/software-download/windowsinsiderpreviewARM64"
echo "2. Place WIN11 ARM ISO file into the Downloads folder."
exit 2
else
echo -e "\e[1;91mInvalid Option"
exit 1
fi