; #NoTrayIcon

; https://www.autohotkey.com/boards/viewtopic.php?t=31259 - Play/Pause in Spotify

SetCapsLockState, AlwaysOff

CapsLock & k::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{Up}
    else if GetKeyState("Ctrl", "D")
        Send +!{Up}
    else
        Send +{Up}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Up}
    else
        Send !{Up}
else if GetKeyState("Alt", "D")
    Send ^{Up}
else
    Send {Up}
return

CapsLock & j::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{Down}
    else if GetKeyState("Ctrl", "D")
        Send +!{Down}
    else
        Send +{Down}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Down}
    else
        Send !{Down}
else if GetKeyState("Alt", "D")
    Send ^{Down}
else
    Send {Down}
return

CapsLock & h::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{Left}
    else if GetKeyState("Ctrl", "D")
        Send +!{Left}
    else
        Send +{Left}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Left}
    else
        Send !{Left}
else if GetKeyState("Alt", "D")
    Send ^{Left}
else
    Send {Left}
return

CapsLock & l::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{Right}
    else if GetKeyState("Ctrl", "D")
        Send +!{Right}
    else
        Send +{Right}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Right}
    else
        Send !{Right}
else if GetKeyState("Alt", "D")
    Send ^{Right}
else
    Send {Right}
return

; ctrl + alt + shift + 1
CapsLock & q::
    Send ^+!1
    PostMessage, 0x319,, 0xE0000,, ahk_exe Spotify.exe ; play/pause
return

; ctrl + alt + shift + 2
CapsLock & w::
    Send ^+!2
    PostMessage, 0x319,, 0xB0000,, ahk_exe Spotify.exe ; next track
return

; ctrl + alt + shift + 3
CapsLock & e::
    Send ^+!3
return

; ctrl + alt + shift + 4
CapsLock & a::
    Send ^+!4
    PostMessage, 0x319,, 0xC0000,, ahk_exe Spotify.exe ; prev track
return

; ctrl + alt + shift + 5
CapsLock & s::
    Send ^+!5
return

; end
CapsLock & ]::
if GetKeyState("Shift", "D")
    Send +{End}
else
    Send {End}
return

; home
CapsLock & [::
if GetKeyState("Shift", "D")
     Send +{Home}
else
    Send {Home}
return

; pgup
CapsLock & -::
if GetKeyState("Shift", "D")
    Send +{PgUp}
else
    Send {PgUp}
return

; pgdown
CapsLock & =::
if GetKeyState("Shift", "D")
    Send +{PgDn}
else
    Send {PgDn}
return

; single apostrophe (lv layout)
CapsLock & d::
Send ''{Backspace}
return
