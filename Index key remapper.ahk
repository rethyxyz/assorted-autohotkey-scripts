Menu, Tray, Icon, shell32.dll, 68, 1

#If WinActive("ahk_exe Explorer.EXE") || WinActive("ahk_exe msedge.exe") || WinActive("ahk_exe chrome.exe") || WinActive("ahk_exe firefox.exe")
    !1:: Send, ^1
    !2:: Send, ^2
    !3:: Send, ^3
    !4:: Send, ^4
    !5:: Send, ^5
    !6:: Send, ^6
    !7:: Send, ^7
    !8:: Send, ^8
    !9:: Send, ^9
    !0:: Send, ^0

#If WinActive("ahk_exe WindowsTerminal.exe")
    !1:: Send, ^!1
    !2:: Send, ^!2
    !3:: Send, ^!3
    !4:: Send, ^!4
    !5:: Send, ^!5
    !6:: Send, ^!6
    !7:: Send, ^!7
    !8:: Send, ^!8
    !9:: Send, ^!9
    !0:: Send, ^!0