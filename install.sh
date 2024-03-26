#!/bin/bash

_user=`whoami`

mkdir /home/$_user/.snipkeys
cp ./gui /home/$_user/.snipkeys/
cp -r ./_internal /home/$_user/.snipkeys/
cp ./snipkeys /home/$_user/.snipkeys/
cp ./logo.png /home/$_user/.snipkeys/
cp ./settings.config /home/$_user/.snipkeys/
cp ./run.sh /home/$_user/.snipkeys/
chmod +x /home/$_user/.snipkeys/run.sh
cp ./uninstall.sh /home/$_user/.snipkeys/
chmod +x /home/$_user/.snipkeys/uninstall.sh

touch /home/$_user/.local/share/applications/snipkeys.desktop
echo "[Desktop Entry]
Type=Application
Version=1.0
Name=SnipKeys
Comment=shortcuts
Path=/home/$_user/.snipkeys/
Exec=/home/$_user/.snipkeys/gui
Icon=/home/$_user/.snipkeys/logo.png
Terminal=false" > /home/$_user/.local/share/applications/snipkeys.desktop

update-desktop-database ~/.local/share/applications