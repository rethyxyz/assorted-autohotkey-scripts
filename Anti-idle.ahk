#Persistent
SetTimer, PressTheKey, 120000
Return

PressTheKey:
    MouseGetPos, PosX, PosY
    MouseMove, 760, 60, 0
    MouseMove, PosX, PosY
    Return