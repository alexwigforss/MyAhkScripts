#SingleInstance

Menu, Tray, NoStandard
Menu, Tray, Add  ; Creates a separator line.
Menu, Tray, Add, CSharp, MenuHandler  ; Ska aktiveras med VSCom
Menu, Tray, Add, ProCuts, MenuHandler  ; Ska aktiveras med Processing
Menu, Tray, Add, Item3, MenuHandler  ; Creates a new menu item.
Menu, Tray, Add, Item4, MenuHandler  ; Creates a new menu item.
Menu, Tray, Add, ImOut, ImOut  ; Creates a new menu item.
Menu, Tray, Add, Ascii

Ascii:
Menu, Tray, ToggleCheck, Ascii
return

F10::
Reload
Return

MenuHandler:
MsgBox You selected %A_ThisMenuItem% from menu %A_ThisMenu%.
return

^q::
ImOut:
ExitApp