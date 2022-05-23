#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


Loop, 112
{
CoordMode, Mouse, Screen
MouseClickDrag, left, 374, 777, 1549, 1196, 40
Sleep 1500
Loop {
PixelSearch, reminicolx, reminicoly, 3554, 674, 3554, 674, 0x0C0C0C, 0, Fast RGB
Sleep 1000
} Until ErrorLevel=0
Sleep 1000
MouseClick, left, 3624, 159
Sleep, 4000
MouseClick, left, 145, 167
Sleep, 4000
MouseClick, left, 374, 777
Sleep, 1600
Send {Del}
Sleep, 2000
}
Return