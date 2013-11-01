#!/bin/bash

mkdir ~/getapps_temp
cd ~/getapps_temp

# Installing Chrome
curl -L -O "https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg"
hdiutil mount googlechrome.dmg
cp -R "/Volumes/Google Chrome/Google Chrome.app" /Applications
hdiutil unmount "/Volumes/Google Chrome"
rm googlechrome.dmg

# Installing Firefox
curl -L -o Firefox.dmg "http://download.mozilla.org/?product=firefox-latest&os=osx&lang=en-US"
hdiutil mount Firefox.dmg
cp -R "/Volumes/Firefox/Firefox.app" /Applications
hdiutil unmount "/Volumes/Firefox"
rm Firefox.dmg

# Installing Handbrake
curl -L -o HandBrake.dmg "http://sourceforge.net/projects/handbrake/files/0.9.9/HandBrake-0.9.9-MacOSX.6_GUI_x86_64.dmg/download"
hdiutil mount HandBrake.dmg -mountpoint /Volumes/HandBrake
cp -R "/Volumes/HandBrake/HandBrake.app" /Applications
hdiutil unmount "/Volumes/HandBrake"
rm HandBrake.dmg

# Installing VLC Player
curl -L -o vlc.dmg "http://get.videolan.org/vlc/2.1.0/macosx/vlc-2.1.0.dmg"
hdiutil mount vlc.dmg -mountpoint /Volumes/vlc
cp -R "/Volumes/vlc/VLC.app" /Applications
hdiutil unmount "/Volumes/vlc"
rm vlc.dmg

# Installing Transmission
curl -L -o Transmission.dmg "http://download.transmissionbt.com/files/Transmission-2.82.dmg"
hdiutil mount Transmission.dmg
cp -R "/Volumes/Transmission/Transmission.app" /Applications
hdiutil unmount "/Volumes/Transmission"
rm Transmission.dmg

# Installing Dropbox
curl -L -o Dropbox.dmg "https://www.dropbox.com/download?plat=mac"
hdiutil mount Dropbox.dmg
cp -R "/Volumes/Dropbox Installer/Dropbox.app" /Applications
hdiutil unmount "/Volumes/Dropbox Installer"
rm Dropbox.dmg

# Installing Sublime Text 2
echo "Installing Sublime Text 2"
curl -L -o "Sublime Text 2.0.1.dmg" "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.dmg"
hdiutil mount "Sublime Text 2.0.1.dmg"
cp -R "/Volumes/Sublime Text 2/Sublime Text 2.app" /Applications
hdiutil unmount "/Volumes/Sublime Text 2/Sublime Text 2.app"
rm "Sublime Text 2.0.1.dmg"

# Installing GitHub
curl -L -o mac_GitHub.zip "https://central.github.com/mac/latest"
unzip mac_GitHub.zip
mv GitHub.app /Applications
rm mac_GitHub.zip

# Installing Cyberduck
curl -L -o Cyberduck.zip "http://cyberduck.ch/Cyberduck-4.3.1.zip"
unzip Cyberduck.zip
mv Cyberduck.app /Applications
rm Cyberduck.zip

# Installing Calibre
curl -L -o calibre.dmg "http://status.calibre-ebook.com/dist/osx32"
hdiutil mount calibre.dmg -nobrowse -mountpoint /Volumes/calibre/
cp -R "/Volumes/calibre/calibre.app" /Applications
hdiutil unmount "/Volumes/calibre"
rm calibre.dmg

curl -L -o XQuartz.dmg "http://xquartz.macosforge.org/downloads/SL/XQuartz-2.7.4.dmg"
hdiutil mount XQuartz.dmg -mountpoint /Volumes/XQuartz/
sudo installer -package "/Volumes/XQuartz/XQuartz.pkg" -target /
hdiutil unmount "/Volumes/XQuartz"
rm XQuartz.dmg

curl -L -o Wireshark.dmg "http://wiresharkdownloads.riverbed.com/wireshark/osx/Wireshark%201.10.2%20Intel%2064.dmg"
hdiutil mount Wireshark.dmg
sudo installer -package "/Volumes/Wireshark/Wireshark 1.10.2 intel 64.pkg" -target /
hdiutil unmount "/Volumes/Wireshark" 
rm Wireshark.dmg

curl -L -o nmap.dmg "http://nmap.org/dist/nmap-6.40.dmg"
hdiutil mount nmap.dmg -mountpoint /Volumes/nmap
sudo installer -package "/Volumes/nmap/nmap-6.40.mpkg" -target /
hdiutil unmount "/Volumes/nmap"
rm nmap.dmg

curl -L -o gpgtools.dmg "https://releases.gpgtools.org/GPG%20Suite%20-%202013.10.22.dmg"
hdiutil mount gpgtools.dmg -mountpoint /Volumes/gpgtools
sudo installer -package "/Volumes/gpgtools/Install.pkg" -target /
hdiutil unmount "/Volumes/gpgtools"
rm gpgtools.dmg




