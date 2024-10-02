#!/bin/bash

# Infinite loop for the menu so it comes back should you want to choose something else
while true; do

sudo /usr/bin/antimicrox --hidden &

ANTIMICROX_PID=$!

    CHOICE=$(whiptail --title "Mini PC Menu" --menu "Choose an option" 15 60 4 \
    "1" "Start Kodi" \
    "2" "Start RetroArch" \
    "3" "Start Wii U" \
    "4" "Start Switch" \
    "5" "Go to Desktop" 3>&2 2>&1 1>&3)

    case $CHOICE in
        1)
            echo "Starting Kodi..."
	   kill $ANTIMICROX_PID
            kodi
            ;;
        2)
            echo "Starting RetroArch..."
	    kill $ANTIMICROX_PID
            retroarch
            ;;
        3)
            echo "Starting Wii U"
            info.cemu.Cemu  
	    ;;
        4)
            echo "Starting Switch"
            org.ryujinx.Ryujinx
	    ;;
        *)
            echo "Exiting..."
            break
            ;;
    esac
done

# Stop AntiMicroX when exiting 
kill $ANTIMICROX_PID
