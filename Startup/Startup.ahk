; BUG Sometimes when scrolling it hits searchbar and gets stucked.
;   With a small delay it happens less often.
#NoEnv
#SingleInstance Force
SendMode Input
Suspend, On
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

