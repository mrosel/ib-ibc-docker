# xvfb-run firefox http://google.com


# export DISPLAY=${DISPLAY:-:0} # Select screen 0 by default.
# xdpyinfo
# if which x11vnc &>/dev/null; then
#   ! pgrep -a x11vnc && x11vnc -bg -forever -nopw -quiet -display WAIT$DISPLAY &
# fi
# ! pgrep -a Xvfb && Xvfb $DISPLAY -screen 0 1024x768x16 &
# sleep 1
# if which fluxbox &>/dev/null; then
#   ! pgrep -a fluxbox && fluxbox 2>/dev/null &
# fi
# echo "IP: $(hostname -I) ($(hostname))"



# 1. set VNC_PASSWORD
mkdir -p /.vnc
touch /.vnc/x11vnc.log 
x11vnc -storepasswd "$VNC_PASSWORD" /.vnc/passwd > /dev/null

# export DISPLAY=:1
Xvfb $DISPLAY -screen 0 1280x1024x16 &

firefox &


x11vnc -display $DISPLAY -forever -quiet -bg -nopw  -xkb -rfbauth /.vnc/passwd -o /.vnc/x11vnc.log

# x11vnc -o /.vnc/x11vnc.log  -ncache 10 -display :0.0 -usepw -create -env FD_PROG=/usr/bin/fluxbox \
#     -env X11VNC_FINDDISPLAY_ALWAYS_FAILS=1 \
#     -env X11VNC_CREATE_GEOM=${0:-1024x768x16} \
#     -gone 'killall Xvfb' \
#     -bg -nopw


tail -f /.vnc/x11vnc.log
