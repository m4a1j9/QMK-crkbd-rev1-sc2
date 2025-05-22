#SingleInstance Force
Persistent
;A_MaxHotkeysPerInterval := 300

; main remappings
#HotIf WinActive("ahk_exe SC2_x64.exe") && NOT GetKeyState("RAlt", "P")
    q::e
    w::1
    e::2
    r::3

    a::F5
    s::F6
    d::F7
    f::F8
    g::+F5
#HotIf

; mask the key so sc2 dont react to it
#HotIf WinActive("ahk_exe SC2_x64.exe")
    $*RAlt::Return      ; Suppress Left Alt Down
    $*RAlt Up::Return   ; Suppress Left Alt Up
#HotIf

Return