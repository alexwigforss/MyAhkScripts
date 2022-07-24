; BUG Sometimes when scrolling it hits searchbar and gets stucked
;   With a small delay it happens less often
; TODO börja labba med meenyn som poppar upp på trayiconen
; vill där få upp e n lista på skript som man kan vilja aktivera/suspendera
; skriv också en hotkey som poppar upp den

#NoEnv
#SingleInstance Force
SendMode Input
Suspend, Off
;WinActivate("ahk_class Shell_TrayWnd")

LWin::
WinActivate, ahk_class Shell_TrayWnd
return

LWin & WheelUp::
LWin & RControl::
Send #{t}
Sleep, 100
Return

LWin Up::
If (WinActive("ahk_class Shell_TrayWnd")) || (WinActive("ahk_class Shell_SecondaryTrayWnd"))
Send {Return}
Return

LWin & WheelDown::
LWin & LControl::
Send #+{t}
Sleep, 100
Return

F12::Suspend

