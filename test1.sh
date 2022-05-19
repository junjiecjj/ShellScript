



#cjj
#这行是判断当前是否为静音，返回[on]:非静音，[off]静音
CURRENT_STATE=`amixer get Master | egrep 'Playback.*?\[o' | egrep -o '\[o.+\]'`

if [[ $CURRENT_STATE == '[on]' ]]; then
    pactl set-sink-volume @DEFAULT_SINK@ -8%
else
    #首先非静音
    pactl set-sink-mute @DEFAULT_SINK@ toggle
    pactl set-sink-volume @DEFAULT_SINK@  -8%
    # /usr/bin/amixer -D pulse set Master 1+ toggle
    # /usr/bin/amixer -qM set Master 8%+ umute
fi

