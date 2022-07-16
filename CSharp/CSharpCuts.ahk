; Init
#NoEnv
#SingleInstance Force
SendMode Input
SetWorkingDir %A_ScriptDir%
#Include dist\Gdip2.ahk
; Gdip Init
gdip1 := new Gdip()
bitmap1 := Gdip.BitmapFromFile("legend.png")
return
Esc::
win1.Remove()
Reload
return

;#IfWinActive ahk_class SunAwtFrame
;#IfWinActive ahk_class Chrome_WidgetWin_1
#IfWinActive ahk_class HwndWrapper[DefaultDomain;;b434a827-744b-422b-8bfa-9da401cfb3ee]

#q::
return
#+q::
return
#w::
return
#e::
return
#+e::
return
#r::
return
#+r::
return
#t::
return
#+t::
return		
#y::
return
#u::
return
#i::
return
#+o::
return
#p::
return
#å::
return
#a::
return
#+a::
return
#s::
return
#+s::
return
#d::
return
#+d::
return
#f::
return
#g::
return
#h::
return
#j::
return
#k::
return
#+k::
return
#l::
;windows default för logout. not easy to override
return
#x::
return
#c::
return
#+c::
return
#v::
return
#b::
return
#+b::
Send /**/{Left}{Left}{Enter}{Enter}{Up}
return		
#n::
return
#+n::
Send /*╔╗╔┌─┐┌┬┐┌─┐{return}{BackSpace 2}║║║│ │ │ ├┤{return}{BackSpace}╝╚╝└─┘ ┴ └─┘{return 2}{BackSpace}*/{up}
return
#m::
return
#+m::
return
#,::
return
#.::
return
#-::
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
F1::
MouseGetPos, xpos, ypos 
ToolTip, shortcuts for cSharp by a2r.`n`nWin+N = Note Comment  ,%xpos%,%ypos%
SetTimer, RemoveToolTip, -5000
return
RemoveToolTip:
ToolTip
return