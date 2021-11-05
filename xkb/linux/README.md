# Remap Caps Lock to Hyper

```
# https://unix.stackexchange.com/questions/103814/capslock-as-modifier-key-for-application-keymaps/151046#151046
# Add this script to startup or run manualy
./xmodmap.sh
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
