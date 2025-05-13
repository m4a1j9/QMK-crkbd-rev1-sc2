#SingleInstance Force
Persistent
A_MaxHotkeysPerInterval := 300

; back to default layout
#HotIf WinActive("ahk_exe SC2_x64.exe") && GetKeyState("RAlt", "P")
    q::q
    w::w
    e::e
    r::r
#HotIf

; main remappings
#HotIf WinActive("ahk_exe SC2_x64.exe")

    ; mask the key so sc2 dont react to it
    $*RAlt::Return      ; Suppress Left Alt Down
    $*RAlt Up::Return   ; Suppress Left Alt Up

    q::w ; stop
    w::1 ; group 1
    e::2 ; group 2
    r::3 ; group 3

    ; --- a ---
    $a:: {
        if (GetKeyState("RAlt", "P")) {
            SendInput "{Blind}{a Down}"
            KeyWait "a"
            SendInput "{Blind}{a Up}"
        } else {
            SendInput "{Blind}{F5 Down}"
            KeyWait "a"
            SendInput "{Blind}{F5 Up}"
        }
        Return
    }

    ; --- s ---
    $s:: {
        if (GetKeyState("RAlt", "P")) {
            SendInput "{Blind}{s Down}"
            KeyWait "s"
            SendInput "{Blind}{s Up}"
        } else {
            SendInput "{Blind}{F6 Down}"
            KeyWait "s"
            SendInput "{Blind}{F6 Up}"
        }
        Return
    }

    $^s:: {
        SendInput "{Blind}{Control Down}{F6 Down}"
        KeyWait "s"
        SendInput "{Blind}{F6 Up}{Control Up}"
    }

    ; --- d ---
    $d:: {
        if (GetKeyState("RAlt", "P")) {
            SendInput "{Blind}{d Down}"
            KeyWait "d"
            SendInput "{Blind}{d Up}"
        } else {
            SendInput "{Blind}{F7 Down}"
            KeyWait "d"
            SendInput "{Blind}{F7 Up}"
        }
        Return
    }

    $^d:: {
        SendInput "{Blind}{Control Down}{F7 Down}"
        KeyWait "d"
        SendInput "{Blind}{F7 Up}{Control Up}"
    }

    ; --- f ---
    $f:: {
        if (GetKeyState("RAlt", "P")) {
            SendInput "{Blind}{f Down}"
            KeyWait "f"
            SendInput "{Blind}{f Up}"
        } else {
            SendInput "{Blind}{F8 Down}"
            KeyWait "f"
            SendInput "{Blind}{F8 Up}"
        }
        Return
    }

    $^f:: {
        SendInput "{Blind}{Control Down}{F8 Down}"
        KeyWait "f"
        SendInput "{Blind}{F8 Up}{Control Up}"
    }

    ; --- g ---
    $g:: {
        if (GetKeyState("RAlt", "P")) {
            SendInput "{Blind}{g Down}"
            KeyWait "g"
            SendInput "{Blind}{g Up}"
        } else {
            SendInput "{Blind}{Shift Down}{F5 Down}"
            KeyWait "g"
            SendInput "{Blind}{F5 Up}{Shift Up}"
        }
        Return
    }

    $^g:: {
        SendInput "{Blind}{Control Down}{Shift Down}{F5 Down}"
        KeyWait "g"
        SendInput "{Blind}{F5 Up}{Control Up}{Shift Up}"
    }
#HotIf

Return