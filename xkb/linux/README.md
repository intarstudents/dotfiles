# Remap Caps Lock to Hyper

```
# https://unix.stackexchange.com/questions/103814/capslock-as-modifier-key-for-application-keymaps/151046#151046
# Add this script to startup or run manualy
./xmodmap.sh
```

## Hotpluging

I'm switching keyboard between two PCs, so xmodmap is lost after switch. Here's one way to fix it:

```
$ sudo apt-get install supervisor inotify-tools
$ # Get keyboards idVendor and idProduct
$ lsusb
Bus 001 Device 071: ID 0951:16d2 Kingston Technology
$ # Create udev rule to create trigger file in /tmp
$ echo 'ACTION=="add", ATTRS{idVendor}=="0951", ATTRS{idProduct}=="16d2", RUN+="/usr/bin/touch /tmp/xkb-udev"' | \
	sudo tee /etc/udev/rules.d/00-usb-keyboards.rules
$ # Reload udev rules and trigger them
$ sudo udevadm control --reload-rules && sudo udevadm trigger
$ ./install-supervisorconf.sh
$ sudo supervisorctl reread
$ sudo supervisorctl update
```

# [autokey](https://github.com/autokey/autokey)

```
wget https://github.com/autokey/autokey/releases/download/v0.95.10/autokey-common_0.95.10-0_all.deb
wget https://github.com/autokey/autokey/releases/download/v0.95.10/autokey-gtk_0.95.10-0_all.deb
sudo dpkg -i autokey-common_0.95.10-0_all.deb
sudo aptitude install -f
sudo dpkg -i autokey-gtk_0.95.10-0_all.deb
# Launch AutoKey for first time to generate conf directory and exit
# Then launch this command to replace configuration
./autokey-conf.sh
```
