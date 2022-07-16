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
#IfWinActive ahk_class Chrome_WidgetWin_1
#q::
Send exit();
return
#+q::
Send void exit(){{}{enter}//Code Here{enter}super.exit(){;}{enter}{}}{Up 2}{Home}{ShiftDown}{End}{ShiftUp}
return
#w::
Send while () {{}{enter}{enter}{}}{Up 2}{End}{Left 3}
return
#e::
Send {Space}else {{}{enter}{enter}{}}{Left 2}
return
#+e::
Send {Space}else if () {{}{enter}{enter}{}}{Up 2}{Right 10}
return
#r::
Send random(){Left}
return
#+r::
Send randomSeed(){Left}
return
#t::
Send try {{}{enter}{enter}{}} catch () {{}{return 2}{}}{Up 3}{Home}
return
#+t::
Send /*╔╦╗┌─┐╔╦╗┌─┐  ┬{return}   ║ │ │ ║║│ │  │{return}╩ └─┘═╩╝└─┘  o{return 2}*/{up}}
return		
#y::
return
#u::
return
#i::
Send if () {{}{enter}{enter}{}}{Up 2}{Home}{Right 4}
return
#+o::
Send Something some = new Something(0);
return
#p::

return
#å::

return
#a::
Send int[] numbers = new int[3]{;}{left 14}{ShiftDown}{left 7}{ShiftUp}
return
#+a::
Send ArrayList<Something> somethings = new ArrayList<Something>(){;}{home}{Right 10}{ShiftDown}{Right 9}{ShiftUp}
return


#s::
Send switch() {{}{return 2}//default:{return}//  break{;}{return}{}}{Up 4}{Right 6}
return

#+s::
Send void setup(){{}{return 2}{}}{up}
return

#d::
send ^x
send ^v
send ^v
return

#+d::
Send void draw(){{}{return 2}{}}{up}
return

#f::
Send for (;;) {{}{return 2}{}}{up 2}{right 4}
return
#g::

return
#h::

return
#j::
return
#k::
Send keyPressed
return
#+k::
Send void keyPressed(){{}{return 2}{}}{up}
Send println(key{,}int(key)){;}{return}
return
#l::
; windows default för logout.
; denna verkar inte gå att åsidosätta.
; tråkigt windows :(
; man mste peta i registret och ha sig.
; https://www.autohotkey.com/board/topic/58260-is-there-really-no-way-to-disableremap-winl/
return
#x::
return
#c::
Send case x:{return}break{;}{return}{up 2}
return
#+c::
Send class Something {{}{enter}int var{;}{enter}Something (int v) {{}{enter}var = v}{;}{enter}{}}{enter}{}}
Send {up 5}{end}{left 2}{ShiftDown}{left 9}{ShiftUp}
return
#v::
return
#b::
return
#+b::
Send /*╔═╗┌─┐┌┬┐┌┬┐┌─┐┌┐┌┌┬┐┌─┐{return}  ║  │ │││││││├┤ │││ │ └─┐{return}╚═╝└─┘┴ ┴┴ ┴└─┘┘└┘ ┴ └─┘ooo{return 2}*/{up}
return		
#n::
return
#+n::
Send /*╔╗╔┌─┐┌┬┐┌─┐{return}  ║║║│ │ │ ├┤{return}╝╚╝└─┘ ┴ └─┘{return 2}*/{up}
return
#m::
Send mousePressed
return
#+m::
Send void mousePressed(){{}{return 2}{}}{up}
Send println(mouseX,mouseY){;}{return}
return
#,::
return
#.::
return
#-::
return
#+::
Send (i < 1) ? 0 {:} 1{;}{left 14}{Shift Down}{Left}{Shift Up}
return
^d::
FormatTime, CurrentDateTime,, dd-MM-yy HH:mm
SendInput %CurrentDateTime%
return
F10::
reload
F1::
if !bitmap1.Pointer
{
	MsgBox, 48, File loading error!, Could not load 'legend.png'
	ExitApp
}
size1 := new Gdip.Size(bitmap1.size, 0.6)
win1 := new Gdip.Window(size1)
win1.DrawImage(bitmap1, new Gdip.Point(0, 0), size1)
win1.Update()
MouseGetPos, xpos, ypos 
ToolTip, press Esc close this ,%xpos%,%ypos%
return