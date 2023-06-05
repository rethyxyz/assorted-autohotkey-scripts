Send +{AppsKey}
Sleep 500
Send {h}
Sleep 500
Send {Home}
Send +{End}
Send ^{c}
Send {Escape}
Sleep 500
raiseOrRun("msedge.exe", "C:/Program Files (x86)/Microsoft/Edge/Application/msedge.exe")
Sleep 500
Send ^{t}
Sleep 500
Send ^{v}
Sleep 500
Send {Enter}
Send !{Tab}

raiseOrRun(WindowStat, ProgramPath)
{
    If WinActive("ahk_exe" WindowStat)
        WinActivateBottom, ahk_exe %WindowStat%
    else IfWinActive ahk_class %WindowStat%
        WinActivateBottom, ahk_class %WindowStat%
    else If WinExist("ahk_exe" WindowStat)
        WinActivate, ahk_exe %WindowStat%
    else IfWinExist ahk_class %WindowStat%
        WinActivate, ahk_class %WindowStat%
    else
    {
        Run, %ProgramPath%,, UseErrorLevel

        if (ErrorLevel = "ERROR")
            TrayTip, Failed to run program, Failed to run %ProgramPath%
    }
}
