; Init
#NoEnv
#SingleInstance Force
SendMode Input
SetWorkingDir %A_ScriptDir%

; #Include dist\Gdip2.ahk
; ; Gdip Init
; gdip1 := new Gdip()
; bitmap1 := Gdip.BitmapFromFile("legend.png")
; return
; Esc::
; win1.Remove()
; Reload
; return

; # WIN
; ^ CTRL
; ! ALT
; + SHIFT

;#IfWinActive ahk_class SunAwtFrame
;#IfWinActive ahk_class Chrome_WidgetWin_1
;#IfWinActive ahk_exe devenv.exe
;#If WinActive("ahk_exe devenv.exe") || WinActive("ahk_class Chrome_WidgetWin_1")

#0::
SendRaw ≈
return
#Numpad0::
SendRaw °
return
#NumpadDot::
SendRaw ≤
return
#Numpad1::
SendRaw ¹
return
#Numpad2::
SendRaw ²
return
#Numpad3::
SendRaw Σ
return
#Numpad4::
SendRaw π
return
#Numpad5::
SendRaw ≡
return
#Numpad6::
SendRaw ±
return
#Numpad7::
SendRaw ≥
return
#Numpad8::
SendRaw ∞
return
#Numpad9::
SendRaw √
return
#x::
SendRaw ˣ
return
#NumpadSub::
#-::
SendRaw ⁻¹
return
F1::
MouseGetPos, xpos, ypos 
ToolTip, shortcuts for math by a2r.`n`nWin+N = Note Comment.`nCTRL+WIN+D = Date Time`nWIN+NMPD = ░ ▒▄▓▌█▐«▀»`nCTRL+NMPD = ─│└┴┘├┼┤┌┬┐`nALTgr+NMPD = ═║╚╩╝╠╬╣╔╦╗  ,%xpos%,%ypos%
SetTimer, RemoveToolTip, -8000
return
RemoveToolTip:
ToolTip
return
