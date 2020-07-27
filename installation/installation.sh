#!/usr/bin/env bash

#Copy the existing german language and rename it
localedef -i de_AT -f UTF-8 de_AT.UTF-8 #2> /dev/null

#To use the langage in Icingaweb2. We need to create sym links into icingaweb2, the monitoring module and the director module
ln -s /usr/share/icingaweb2/modules/oesterreichisch/translation/monitoring/de_AT/ /usr/share/icingaweb2/modules/monitoring/application/locale/ #2> /dev/null
ln -s /usr/share/icingaweb2/modules/oesterreichisch/translation/icingaweb2/de_AT/ /usr/share/icingaweb2/application/locale/ #2> /dev/null
ln -s /usr/share/icingaweb2/modules/oesterreichisch/translation/director/de_AT/ /usr/share/icingaweb2/modules/director/application/locale #2> /dev/null

# Enable the module
icingacli module enable oesterreichisch #2> /dev/null

echo -e "\033[33mTo make the austria language available you have to restart your webserver.\033[0m"
echo -e "\033[33mIf you have a running PHP Service. Restart this, too.\033[0m"
