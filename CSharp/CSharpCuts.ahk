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
#If WinActive("ahk_exe devenv.exe") || WinActive("ahk_class Chrome_WidgetWin_1")

#Numpad0::
SendRaw ░
return
#NumpadDot::
SendRaw  
return
#Numpad1::
SendRaw ▒
return
#Numpad2::
SendRaw ▄
return
#Numpad3::
SendRaw ▓
return
#Numpad4::
SendRaw ▌
return
#Numpad5::
SendRaw █
return
#Numpad6::
SendRaw ▐
return
#Numpad7::
SendRaw «
return
#Numpad8::
SendRaw ▀
return
#Numpad9::
SendRaw »
return

^Numpad0::
SendRaw ─
return
^NumpadDot::
SendRaw │
return
^Numpad1::
SendRaw └
return
^Numpad2::
SendRaw ┴
return
^Numpad3::
SendRaw ┘
return
^Numpad4::
SendRaw ├
return
^Numpad5::
SendRaw ┼
return
^Numpad6::
SendRaw ┤
return
^Numpad7::
SendRaw ┌
return
^Numpad8::
SendRaw ┬
return
^Numpad9::
SendRaw ┐
return

Ralt & Numpad0::
SendRaw ═
return
Ralt & NumpadDot::
SendRaw ║
return
;LControl & RAlt::MsgBox You pressed AltGr itself.
;return
Ralt & Numpad1::
SendRaw ╚
return
Ralt & Numpad2::
SendRaw ╩
return
Ralt & Numpad3::
SendRaw ╝
return
Ralt & Numpad4::
SendRaw ╠
return
Ralt & Numpad5::
SendRaw ╬
return
Ralt & Numpad6::
SendRaw ╣
return
Ralt & Numpad7::
SendRaw ╔
return
Ralt & Numpad8::
SendRaw ╦
return
Ralt & Numpad9::
SendRaw ╗
return

#l::║
;windows default för logout. not easy to override
return
#+b::
Send /**/{Left}{Left}{Enter}{Enter}{Up}
return		
#n::
return
#+n::
Send /*╔╗╔┌─┐┌┬┐┌─┐{return}{BackSpace 2}║║║│ │ │ ├┤{return}{BackSpace}╝╚╝└─┘ ┴ └─┘{return 2}{BackSpace}*/{up}
return
;The plus sign on the mainboard. The one on the numpad start the magnifier as usuall
#+::
Send (<1)?0{:}1{;}{left 14}{Shift Down}{Left}{Shift Up}
return
#^d::
;Ctrl + D is for duplicate in VS community so i moved to Win + Ctrl + D
FormatTime, CurrentDateTime,, dd-MM-yy HH:mm
SendInput %CurrentDateTime%
return

F10::
reload

#F1::
ToolTip,┌───┬───┬───┐`n│  «  │ ▀ │  »  │`n├───┼───┼───┤`n│  ▌  │ █ │ ▐  │`n├───┼───┼───┤`n│ ▒ │ ▄ │  ▓ │`n├───┴───┼───┤`n│     ░     │nbs│`n└───────┴───┘
SetTimer, RemoveToolTip, -8000
return

^F1::
ToolTip,┌───┬───┬───┐`n│  ┌  │  ┬  │  ┐  │`n├───┼───┼───┤`n│  ├  │  ┼  │  ┤  │`n├───┼───┼───┤`n│  └  │  ┴  │  ┘  │`n├───┴───┼───┤`n│      ─      │  │  │`n└───────┴───┘
SetTimer, RemoveToolTip, -8000
return

Ralt & F1::
ToolTip,┌───┬───┬───┐`n│  ╔  │  ╦  │  ╗  │`n├───┼───┼───┤`n│  ╠  │  ╬  │  ╣  │`n├───┼───┼───┤`n│  ╚  │  ╩  │  ╝  │`n├───┴───┼───┤`n│      ═      │  ║  │`n└───────┴───┘
SetTimer, RemoveToolTip, -8000
return

F1::
MouseGetPos, xpos, ypos 
ToolTip, shortcuts for cSharp by a2r.`n`nWin+N = Note Comment.`nWIN = ░ ▒▄▓▌█▐«▀»`nCTRL = ─│└┴┘├┼┤┌┬┐`nALTgr = ═║╚╩╝╠╬╣╔╦╗  ,%xpos%,%ypos%
SetTimer, RemoveToolTip, -8000
return
RemoveToolTip:
ToolTip
return