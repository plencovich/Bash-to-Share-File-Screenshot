#!/bin/bash
fileSelected=$(zenity --file-selection --title  "ShareFile")
if [ $? -eq 0 ]
then
  fileShare="${fileSelected##*/}"
  scp $fileSelected user@ip_or_host:/var/www/$fileShare
  url=url=http://share.domain.com/$fileShare
  echo $url | xclip -selection clipboard
fi
clear