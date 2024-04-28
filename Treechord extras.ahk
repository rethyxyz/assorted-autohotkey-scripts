#Include %A_ScriptDir%\Natural_keyboard_4000_support.ahk

#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; Alt + ?
!h:: Send  {Left}
!j:: Send  {Down}
!k:: Send    {Up}
!l:: Send {Right}

; F1 - F12
;
; Maximizes current window, but not the desktop, taskbar, start menu, or
; anything you wouldn't want to maximize normally.
$F1::
    if ( ! WinActive("ahk_class Progman")
    || ! WinActive("ahk_class WorkerW")
    || ! WinActive("ahk_class NotifyIconOverflowWindow")
    || ! WinActive("ahk_class DV2ControlHost")
    || (! WinActive("Start") && ! WinActive("ahk_class Button"))
    || ! WinActive("ahk_class Shell_TrayWnd"))
    {
        WinGet, MinMax, MinMax, A

        If (MinMax = 1)
            WinRestore, A
        else
            WinMaximize, A
        return
    }
$F2::  WinMinimize, A
$F4::  Send !{Tab}
$F6::  Send !{f4}
$F10:: Send {f11}
$F11:: Send ^{PgUp}
$F12:: Send ^{PgDn}

; Command keys
$Pause::   Send ^{w}
Capslock:: Escape

LWin & WheelUp::send {Volume_Up}
LWin & WheelDown::send {Volume_Down}

MsNatural4000_NumpadLeftBracket:
	if (state = 1)
	{
		;toggle
		state = 0
		return
	}

	;toggle
	state = 1
	return

