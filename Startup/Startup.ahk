; BUG Sometimes when scrolling it hits searchbar and gets stucked
;   With a small delay it happens less often
; TODO börja labba med meenyn som poppar upp på trayiconen
; vill där få upp e n lista på skript som man kan vilja aktivera/suspendera
; skriv också en hotkey som poppar upp den

; # WIN
; ^ CTRL
; ! ALT
; + SHIFT

; Scrollock och PauseBreak borde va bra kandidater till att aktivera modermenyn

#NoEnv
#SingleInstance Force
SendMode Input
Send, {ScrollLock}
Sleep,10
;Suspend % GetKeyState("ScrollLock","T") ? "Off" : "On"

LWin::
WinActivate, ahk_class Shell_TrayWnd
return

XButton2::
Send {CtrlDown}{v}{CtrlUp}
Return

XButton1::
Send {CtrlDown}{c}{CtrlUp}
Return

Alt & WheelUp::
Send, {WheelUp 10}
Return
Alt & WheelDown::
Send, {WheelDown 10}
Return

LWin & WheelUp::
LWin & RControl::
Send #{t}
Sleep, 100
Return

LWin & WheelDown::
LWin & LControl::
Send #+{t}
Sleep, 100
Return

LWin Up::
If (WinActive("ahk_class Shell_TrayWnd")) || (WinActive("ahk_class Shell_SecondaryTrayWnd"))
Send {Return}
Return

F10::Reload

~ScrollLock::
	Suspend Permit
	Sleep,10
	Suspend % GetKeyState("ScrollLock","T") ? "Off" : "On"
Return

Pause::Menu, Tray, Show
Return

#^d::
;Ctrl + D is for duplicate in VS community so i moved to Win + Ctrl + D
FormatTime, CurrentDateTime,, dd-MM-yy HH:mm
SendInput %CurrentDateTime%
return