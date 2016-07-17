#!/bin/bash
gnome-screenshot -a -f /tmp/capture-temp.png
_zenity="/usr/bin/zenity"
captureName=$(${_zenity} --title  "Share Screenshot" \
              --entry --text "Ingrese un nombre o deje en blanco:" )
if [ $? -eq 0 ]
then
  if [ ! $captureName ]
  then
    captureName=$(date +'%m%d%y%H%M')
  else
    captureName=${captureName// /-}
  fi

  scp /tmp/capture-temp.png user@ip_or_host:/var/www/$captureName.png
  url=url=http://share.domain.com/$captureName.png
  echo $url | xclip -selection clipboard
fi
rm -f /tmp/capture-temp.png