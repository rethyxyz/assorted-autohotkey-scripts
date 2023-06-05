#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

global CURRENT_WORKSPACE
global MIN_WORKSPACE
global MAX_WORKSPACE

CURRENT_WORKSPACE := 1
MIN_WORKSPACE := 1
MAX_WORKSPACE := 10

WinActivate, ahk_class Shell_TrayWnd
Loop, 9
    Send ^#{Left}

workspace(workspaceID)
{
    workspaceID--

    WinActivate, ahk_class Shell_TrayWnd

    Loop, 9
        Send ^#{Left}

    Loop, %workspaceID%
        Send ^#{Right}
}

/*
 * A work in progress.
 * 
 * Using Windows + Ctrl + Left/Right unfortunately makes the CURRENT_WORKSPACE
 * var useless.
 */
workspace_eff(goto)
{
    WinActivate, ahk_class Shell_TrayWnd

    ;max 10
    ;min 1
    ;CURRENT_WORKSPACE 3
    ;goto 1

    if (goto > CURRENT_WORKSPACE)
    {
        final := goto - CURRENT_WORKSPACE
        Loop, %final%
            Send ^#{Right}
    }
    else if (goto < CURRENT_WORKSPACE)
    {
        final := CURRENT_WORKSPACE - goto
        Loop, %final%
            Send ^#{Left}
    }
    else
        return
 
    CURRENT_WORKSPACE := goto
}

window_workspace(workspaceID)
{
    WinGetClass, CurrentWindowClass, A

    Send, !{Space}
    WinWait, ahk_class #32768 ,, 1 ; Waits 1s for menu to exist
    ;If !ErrorLevel ; ErrorLevel is 0 if menu exists
        ;Send , s{left}+{up}
    Send, {t}
    if (workspaceID == 1)
        Send, {Enter}
    else if (workspaceID == 10)
    {
        Send, {1}
        Send, {Enter}
    }
    else
        Send, {%workspaceID%}
    workspace(workspaceID)
}

NumpadEnd:: workspace(1)
NumpadDown:: workspace(2)
NumpadPgDn:: workspace(3)
NumpadLeft:: workspace(4)
NumpadClear:: workspace(5)
NumpadRight:: workspace(6)
NumpadHome:: workspace(7)
NumpadUp:: workspace(8)
NumpadPgUp:: workspace(9)
NumpadIns:: workspace(10)

+NumpadEnd:: window_workspace(1)
+NumpadDown:: window_workspace(2)
+NumpadPgDn:: window_workspace(3)
+NumpadLeft:: window_workspace(4)
+NumpadClear:: window_workspace(5)
+NumpadRight:: window_workspace(6)
+NumpadHome:: window_workspace(7)
+NumpadUp:: window_workspace(8)
+NumpadPgUp:: window_workspace(9)
+NumpadIns:: window_workspace(10)

!^1:: workspace(1)
!^2:: workspace(2)
!^3:: workspace(3)
!^4:: workspace(4)
!^5:: workspace(5)
!^6:: workspace(6)
!^7:: workspace(7)
!^8:: workspace(8)
!^9:: workspace(9)
!^0:: workspace(10)

; NumpadDot
; NumLock
; NumpadDiv
; NumpadMult
NumpadAdd:: Send ^#{Right}
NumpadSub:: Send ^#{Left}
; NumpadEnter
