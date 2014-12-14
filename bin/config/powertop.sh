# usb devices
sudo echo 'auto' > '/sys/bus/usb/devices/2-1.2/power/control';
# ethernet
sudo echo 'auto' > '/sys/bus/pci/devices/0000:03:00.0/power/control';
# card reader
sudo echo 'auto' > '/sys/bus/pci/devices/0000:06:00.0/power/control'
# audiocodec
sudo echo '1' > '/sys/module/snd_hda_intel/parameters/power_save';

# enable ultra fast wifi ... maybe
sudo iw dev wlan0 set power_save off
