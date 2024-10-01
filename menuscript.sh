#!/bin/bash

/usr/bin/antimicrox --hidden &

# Infinite loop for the menu
while true; do
    CHOICE=$(whiptail --title "Barnwell Entertainment Centre" --menu "Please Select" 15 60 4 \
        "1" "Films" \
        "2" "Retrogames" \
        "3" "Go to Desktop" 3>&2 2>&1 1>&3)

    case $CHOICE in
        1)
            echo "Starting Kodi..."
            kodi
            ;;
        2)
            echo "Starting RetroArch..."
            retroarch
            ;;
        3)
            echo "Starting Desktop Environment..."
            break
            ;;
        *)
            echo "Exiting..."
            break
            ;;
    esac
done

