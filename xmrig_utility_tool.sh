#!/bin/bash
# A hopefully helpful utility tool for xmrig miners.
# Developed by Jackson Zenisek
# Last updated: 8/18/2026

mainmenu() {
echo "----------------------------"
echo "XMRIG UTILITY TOOL"
echo "Developed by Jackson Zenisek"
echo "----------------------------"
echo " "
echo "Choose an option:"
echo "1) Install XMRig"
echo "2) Run XMRig"
echo "3) Generate new Monero wallet"
echo "4) View user guide"
read mainmenselopt


# Install XMRig option:

if ((mainmenselopt==1)); then

echo "Preparing to update system files..."
sleep 2
sudo apt update && sudo apt upgrade -y
sleep 3
echo " "
showcurrentdir=$(pwd)
echo "Choose an option:"
echo "1) Install XMRig in current direrctory: $showcurrentdir"
echo "2) Install XMRig in a different directory"
read installxmrigchoice

fi




if ((installxmrigchoice==1)); then
sleep 3
printdir=$(pwd)
echo "Are you sure you want to install XMRig in $printdir ? y = 1/n = 2"
read doublechecker

fi

if ((doublechecker==1)); then
echo "Preparing to install dependencies..."
sleep 3
sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
echo "Cloning the software package..."
sleep 2
git clone https://github.com/xmrig/xmrig.git
echo "Entering subdirectories..."
sleep 2
cd xmrig
mkdir build
cd build
cmake ..
echo "Preparing to install XMRig..."
sleep 5
make
echo " "
echo "Installation complete!"

fi


if ((installxmrigchoice==2)); then
echo " "
echo " "
showcurrentdirectory=$(pwd)
echo "Here is your current directory:"
echo "$showcurrentdirectory "
echo " "
showfolders=$(ls -d */)
echo "Here are some nearby folder options:"
echo "$showfolders"
echo " "
echo "Enter the directory that you want to install XMRig in:"
read entereddir
echo "Are you sure you want to install XMRig in $entereddir ? y = 1/n = 2"
read doublecheckertwooption

fi


if ((doublecheckertwooption==1)); then
echo "Entering $entereddir ..."
sleep 2
cd $entereddir
echo "Preparing to install dependencies..."
sleep 3
sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
echo "Cloning the software package..."
sleep 2
git clone https://github.com/xmrig/xmrig.git
echo "Entering subdirectories..."
sleep 2
cd xmrig
mkdir build
cd build
cmake ..
echo "Preparing to install XMRig..."
sleep 5
make
echo " "
echo "Installation complete!"


fi


# Run XMRig option

if ((mainmenselopt==2)); then
getcurrentdir=$(pwd)
echo " "
echo "Where did you install XMRig?:"
echo "1) This directory: $getcurrentdir"
echo "2) A different directory"
read wherexmriginstalled

fi

if ((wherexmriginstalled==1)); then
echo " "
echo "Enter your wallet key:"
read walKy
echo "Enter what port you want to join?:"
echo "Here are some options, or you can enter your own:"
echo "-------------------------------------------------"
echo "10128"
echo "10064"
echo "10256"
echo "10512"
echo "11024"
echo "12048"
echo "14096"
echo "18192"
echo " "
read portenter
echo " "
echo "What would you like to name your miner?"
read minername
echo " "
echo "Would you like to run XMRig under admin previlages? Running it under admin may increase mining speed. y = 1/n = 2:"
read adminprev


elif ((wherexmriginstalled==2)); then
echo " "
echo "Enter the directory XMRig is installed in:"
read entereddirectoryyy
cd $entereddirectoryyy
echo "Entering $entereddirectoryyy ..."
sleep 2
echo " "
echo "Enter your wallet key:"
read walKy
echo "Enter what port you want to join?:"
echo "Here are some options, or you can enter your own"
echo "-------------------------------------------------"
echo "10128"
echo "10064"
echo "10256"
echo "10512"
echo "11024"
echo "12048"
echo "14096"
echo "18192"
echo " "
read portenter
echo " "
echo "What would you like to name your miner?"
read minername
echo" "
echo "Would you like to run XMRig under admin previlages? Running it under admin may increase mining speed. y = 1/n = 2:"
read adminprev

fi


# Generate new Monero wallet option

if ((mainmenselopt==3)); then
printcurrentdirectory=$(pwd)
echo "What would you like to do?:"
echo "1) Tnstall the Monero wallet generator in this directory: $printcurrentdirectory"
echo "2) Install Monero wallet generator in a different directory"
echo "3) Run Monero wallet generator (If already installed)"
read walletgendirchoice


fi


if ((mainmenselopt==4)); then
echo " "
echo " "
echo "------------------------------"
echo "XMRIG UTILITY TOOl: USER GUIDE"
echo "------------------------------"
echo " "
echo " "
echo "To answer option questions, enter the number that corresponds to the task you want to happen."
echo "Example:"
echo "1) Apple"
echo "2) Banana"
echo "3) Cherry"
echo "If you want the Banana option, enter 2."
echo " "
echo " "
echo "Yes and No prompts:"
echo "-------------------"
echo "For yes, enter 1"
echo "For no, enter 2"
echo " "
echo " "
echo "To cancel a task or quit the program entirely: CRTL + C"
echo " "
echo " "
echo "If you want to save your wallet key to a file, when it prompts you to paste your key  look for something like this 'Generated new wallet: YOUR_KEY'"
echo " "
echo " "
echo "Option direction map:"
echo "---------------------"
echo "START OF PROGRAM"
echo "Main Menu; 1) Install XMRig, 2)Run XMRig, 3) Generate new Monero wallet, 4) View user guide"
echo " "
echo " "
echo "Path for option 1"
echo "1) Install XMRig ====>> Choose an option: 1) Install XMRig in current direrctory: $showcurrentdir, 2) Install XMRig in a different directory"
echo " "
echo "Path for option 2"
echo "2) Run XMRig ====>> 1) Where did you install XMRig?: This directory: $getcurrentdir, 2) A different directory"
echo " "
echo "Path for option 3"
echo "3) Generate new Monero wallet ====>> What would you like to do?: 1) Tnstall the Monero wallet generator in this directory: $printcurrentdirectory, 2) Install the wallet generator in a different direrctory, 3) Run Monero wallet generator (if already installed)"
echo " "
echo "Path for option 4"
echo "Viewing user guide"
echo " "
fi





if ((walletgendirchoice==1)); then
echo " "
echo "Preparing to download Monero wallet generator ..."
sleep 3
wget https://downloads.getmonero.org/linux64
mkdir monero && tar -xjvf linux64 -C monero
cd monero/*
echo " "
echo "Installation complete!"


elif ((walletgendirchoice==2)); then
echo " "
showcurrentdirectory=$(pwd)
echo "Here is your current directory:"
echo "$showcurrentdirectory"
echo " "
showfolders=$(ls -d */)
echo "Here are some nearby folder options:"
echo "$showfolders"
echo " "
echo "Enter the directory that you want to install Monero wallet generator:"
read walletgendir
cd $walletgendir
echo " "
echo "Entering $walletgendir ..."
sleep 2
echo "Preparing to download Monero wallet generator ..."
sleep 3
wget https://downloads.getmonero.org/linux64
mkdir monero && tar -xjvf linux64 -C monero
cd monero/*
echo " "
echo "Installation complete!"


elif ((walletgendirchoice==3)); then
echo " "
echo "Enter the directory that Monero wallet generator is installed in:"
read installedmonerogendir
cd $installedmonerogendir
cd monero/*
sudo ./monero-wallet-cli
echo" "
echo "Would you like to save your wallet key to a file? y = 1/n = 2:"
read savekeychoice
fi


if ((savekeychoice==1)); then
echo " "
echo " Enter your kwallet key:"
read vdfvdvddcvregehbe
echo " "
echo "What directory would you like to save the file?:"
read savekeydirect
cd $savekeydirect
getdate=$(date)

echo "$vdfvdvddcvregehbe" > "xmrgeneatedwallK_$getdate.txt"
echo " "
echo "Wallet key saved to $savekeydirect   xmrgeneatedwallK_$getdate.txt"

elif ((savekeychoice==2)); then

exit

fi



if ((adminprev==1)); then
echo " "
echo "Starting XMRig under admin..."
sleep 5
cd xmrig
cd build
sudo ./xmrig -o gulf.moneroocean.stream:$portenter -u $walKy -p $minername

elif ((adminprev==2)); then
echo " "
echo "Starting XMRig with regular previlages..."
sleep 5
cd xmrig
cd build
./xmrig -o gulf.moneroocean.stream:$portenter -u $walKy -p $minername

fi

}


# Call Functions List
mainmenu
