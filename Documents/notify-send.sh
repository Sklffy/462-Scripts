#!/bin/bash

export DISPLAY=:0
export WAYLAND_DISPLAY=wayland-0
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/1000/bus

export XAUTHORITY=/home/rockyadmin/.Xauthority
/usr/bin/notify-send " 阳光彩虹小白马 " "  怎麼能哭呢 一切會好噠一切都去吧 你就得想著 既然沒辦法 還恨他幹嘛 還管它幹嘛 心裡要記得\n 你是內內個 內內 內個內個 內內 內內個 內內 內個內個 內內 陽光彩虹小白馬 滴滴噠滴滴噠\n 是內內個 內內 內個內個 內內 內內個 內內 內個內個 內內 陽光彩虹小白馬 滴滴噠滴滴噠\n 滴滴噠滴噠 滴滴噠滴噠 滴滴噠滴滴噠 滴滴噠滴噠 滴滴噠滴噠 滴滴噠滴滴噠 嘿！ "

if ! pgrep -x "zenity" > /dev/null; then
        /usr/bin/zenity --info \
                 --text="$(cat <<'EOF'
它实际上说你是 SUS，就像视频游戏中的 SUS 一样，视频游戏中的每个人都使用 SUS 这个词。我们之中呢？SUS？这有联系，我们刚从麦当劳回来，一定是员工或者冒名顶替者

▐▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▌
▐░░▀█▀░█▀▄░█▀█░█▀▄░█▀▄░▀█▀░█▀█░█░▌
▐░░░█░░█▀▄░█░█░█▀▄░█▀▄░░█░░█░█░▀░▌
▐░░░▀░░▀░▀░▀▀▀░▀▀░░▀▀░░▀▀▀░▀▀▀░▀░▌
▐▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▌

EOF
)" \
                 --height=1200 \
                 --width=1600 \
                 --title="冒名顶替者？"
#>dev/null 2>&1 &
fi

