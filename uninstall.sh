#!/bin/bash

_user=`whoami`

rm /home/$_user/.local/share/applications/snipkeys.desktop
rm -r /home/$_user/.snipkeys
update-desktop-database ~/.local/share/applications
