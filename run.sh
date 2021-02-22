mkdir -p /.vnc
touch /.vnc/x11vnc.log 
x11vnc -storepasswd "$VNC_PASSWORD" /.vnc/passwd > /dev/null

Xvfb $DISPLAY -screen 0 1280x1024x16 &
x11vnc -display $DISPLAY -forever -quiet -bg -nopw  -xkb -rfbauth /.vnc/passwd -o /.vnc/x11vnc.log


# xvfb-run firefox http://google.com # run in background
# firefox http://google.com &
# /root/Jts/981/tws &
# /root/Jts/ibgateway/981/ibgateway &
/opt/ibc/scripts/displaybannerandlaunch.sh & 
sleep 1
tail -f $(find $LOG_PATH -maxdepth 1 -type f -printf "%T@ %p\n" | sort -n | tail -n 1 | cut -d' ' -f 2-) &

tail -f /.vnc/x11vnc.log &
sleep 1
touch /root/Jts/launcher.log
tail -f /root/Jts/launcher.log &

echo "Forking :::4002 onto 0.0.0.0:4003\n" # 
socat TCP-LISTEN:4003,fork TCP:127.0.0.1:4002 

# sleep 1
# while true ; do
#   nc -z localhost 5901 # || exit -1
#   nc -z localhost 4002 # || exit -1
#   sleep 30
# done
