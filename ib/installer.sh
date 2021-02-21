
# GATEWAY latest
# /root/Jts/ibgateway/981
wget https://download2.interactivebrokers.com/installers/ibgateway/latest-standalone/ibgateway-latest-standalone-linux-x64.sh
chmod a+x ibgateway-latest-standalone-linux-x64.sh
printf "\n n" | ./ibgateway-latest-standalone-linux-x64.sh 
rm ibgateway-latest-standalone-linux-x64.sh

# TWS latest
# /root/Jts/981
wget https://download2.interactivebrokers.com/installers/tws/latest-standalone/tws-latest-standalone-linux-x64.sh
chmod a+x tws-latest-standalone-linux-x64.sh
printf "\n n" | ./tws-latest-standalone-linux-x64.sh
rm tws-latest-standalone-linux-x64.sh
# https://download2.interactivebrokers.com/installers/tws/latest-standalone/tws-latest-standalone-linux-x64.sh
