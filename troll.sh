#!/bin/bash

echo "Hello, I'm a troll 😈"
echo "1 - Fake notifications"
echo "2 - Random volume"
echo "3 - Cursor troll"
echo "4 - Moving window"
echo "5 - Caps Lock chaos"
echo "6 - Mini DVD"
echo "7 - ALL AT ONCE 💥"
echo "8 - COW INVASION 🐄"

read choice

case $choice in

1)
    while true; do
        sleep 2
        notify-send "System" "I'm watching you 👁️"
    done
    ;;

2)
    while true; do
        sleep 5
        pactl set-sink-volume @DEFAULT_SINK@ $((RANDOM % 100))%
    done
    ;;

3)
    while true; do
        sleep 3
        xdotool mousemove_relative -- $((RANDOM % 20 - 10)) $((RANDOM % 20 - 10))
    done
    ;;
4)
    while true; do
        sleep 4
        xdotool getactivewindow windowmove $((RANDOM % 500)) $((RANDOM % 500))
    done
    ;;

5)
    while true; do
        sleep 10
        xdotool key Caps_Lock
    done
    ;;

6)
    while true; do
        win=$(xdotool getactivewindow)
        xdotool windowmove $win $((RANDOM % 1000)) $((RANDOM % 600))
        sleep 0.3
    done
    ;;

7)
    echo "💥 Launching EVERYTHING..."

    bash "$0" <<< 1 &
    bash "$0" <<< 2 &
    bash "$0" <<< 3 &
    bash "$0" <<< 4 &
    bash "$0" <<< 5 &
    bash "$0" <<< 6 &

    wait
    ;;

8)
    if ! command -v xcowsay &> /dev/null || ! command -v fortune &> /dev/null; then
        echo "📥 Installing required packages..."
        sudo apt update -y && sudo apt install -y xcowsay fortune-mod
    fi

    echo "🐄 Starting cow invasion..."

    trap 'kill $(jobs -p) 2>/dev/null; pkill xcowsay; exit' SIGINT SIGTERM EXIT
    while true; do
        X=$(( RANDOM % 1920 ))
        Y=$(( RANDOM % 1080 ))

        sizes=("small" "med" "large")
        SIZE=${sizes[$(( RANDOM % 3 ))]}

        phrase=$(fortune -s)

        xcowsay --at=$X,$Y --cow-size=$SIZE --time=3 "$phrase" &

        sleep $(( RANDOM % 4 + 2 ))
    done
    ;;

esac
