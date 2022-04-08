#!/bin/sh 

if [[ $(sw_vers -productVersion) != *"10.15"* ]]; then 
/usr/local/bin/hubcli notify -t "Upgrade to macOS Monterey Required" -s "This may take up to 1 hour." -i "Your machine will restart automatically." -a "Begin" -b "/Applications/Install\ macOS\ Monterey.app/Contents/Resources/startosinstall --agreetolicense --nointeraction" -c "Cancel" 
fi 

sw_vers -productVersion