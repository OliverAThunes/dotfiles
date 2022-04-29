killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

CONFIG_PATH="/home/oliver/.config/polybar/config.ini"


#if type "xrandr"; then
    #for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        #MONITOR=$m polybar --config=$CONFIG_PATH --reload top &
    #done
#else
    #polybar --reload --config=$CONFIG_PATH main &
#fi
