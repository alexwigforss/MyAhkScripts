#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#F2::
; TODO Togle between on off instead of always on
WinGet, active_id, ID, A
Winset, Alwaysontop,, ahk_id %active_id%
trans := 255
ToolTip, The active window's ID is "%active_id%" %trans%.
Return
#F3::
trans -= 16
ToolTip, %trans%
WinSet, Transparent, %trans%,  ahk_id %active_id%
Return
#F4::
trans += 16
ToolTip, %trans%
WinSet, Transparent, %trans%, ahk_id %active_id%
Return