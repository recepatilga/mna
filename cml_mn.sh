#!/bin/bash
sudo su
cd /root
sudo apt-get update
sudo apt install unzip
wget --no-check-certificate https://github.com/recepatilga/mnb/raw/main/cml_mn.zip
unzip cml_mn.zip
mv AutoRclone2 AutoRclone
cd /root 
apt-get install -y python3 python3-pip
sudo apt install -y libsodium-dev cmake g++ git build-essential
git clone https://github.com/madMAx43v3r/chia-plotter.git 
cd chia-plotter
git submodule update --init
./make_devel.sh
curl https://rclone.org/install.sh | sudo bash
cd
wget https://github.com/l3v11/gclone/releases/download/v1.60.0-winter/gclone-v1.60.0-winter-linux-amd64.zip
unzip gclone-v1.60.0-winter-linux-amd64.zip
mv gclone-v1.60.0-winter-linux-amd64/gclone /usr/bin/

cd /
sudo mkdir disk2
sudo umount  /mnt/vol_b
sudo mount /dev/vdb /disk2

cd disk2
sudo mkdir temp
sudo mkdir plots
cd /root
chmod 777 /root/AutoRclone/autoClone/madmax.sh
chmod 777 /root/AutoRclone/autoClone/autoClone.sh
screen -dmS madmax
screen -S madmax -X stuff  "/root/AutoRclone/autoClone/madmax.sh UP 0 100 9^M" 
#screen -dmS  clone
#screen -S clone -X stuff  "/root/AutoRclone/autoClone/autoClone.sh disk2 UP 0 100 9^M"
