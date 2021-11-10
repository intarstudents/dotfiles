# [Karabiner-Elements](https://karabiner-elements.pqrs.org/index.html)

```
brew install --cask karabiner-elements
# Launch and allow "Input Monitoring" karabiner_grabber karabiner_observer Karabiner-EventViewer
# Close Karabiner
./karabiner-conf.sh
```

# Sublime Text

## Home and End key fix

```
[
	{ "keys": ["home"], "command": "move_to", "args": {"to": "bol"} },
	{ "keys": ["end"], "command": "move_to", "args": {"to": "eol"} },
	{ "keys": ["shift+end"], "command": "move_to", "args": {"to": "eol", "extend": true} },
	{ "keys": ["shift+home"], "command": "move_to", "args": {"to": "bol", "extend": true } }
]
```
