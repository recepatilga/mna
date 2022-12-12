#while true; do
 #   sleep 5
  #  curl -L https://nexom.onrender.com
#done
wget https://www.otohits.net/dl/OtohitsApp_5068_linux_portable.tar.gz > /dev/null
mkdir OtohitsApp
cd OtohitsApp
echo "/login:ef8ee361-eefc-4190-84b0-892f1add8c76 " > otohits.ini
echo "/autoupdate" >> otohits.ini
tar -xzf ../OtohitsApp_5068_linux_portable.tar.gz

./otohits-app
