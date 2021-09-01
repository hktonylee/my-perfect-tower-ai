#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

WinGet, currentWin, ID, A
WinActivate, The Perfect Tower

CoordMode, Mouse, Screen
MouseGetPos, oldMouseX, oldMouseY

CoordMode, Mouse, Client
MouseMove, 0, 0

CoordMode, Mouse, Window
MouseGetPos, clientOffsetX, clientOffsetY

CoordMode, Mouse, Client

WinGetPos, , , windowWidth, windowHeight, The Perfect Tower

windowWidth := windowWidth - 2 * clientOffsetX
windowHeight := windowHeight - clientOffsetX - clientOffsetY

RelMove(x, y) {
    global windowWidth
    global windowHeight
    MouseMove, x * windowWidth, (1 - y) * windowHeight
}

RelClick(x, y) {
    global windowWidth
    global windowHeight
    MouseClick, Left, x * windowWidth, (1 - y) * windowHeight
}

RelRightClick(x, y) {
    global windowWidth
    global windowHeight
    MouseClick, Right, x * windowWidth, (1 - y) * windowHeight
}

; RelClick(0.33, 0.94) ; Headquarters
; Sleep 1000
; RelClick(0.20, 0.46) ; Facility AI

Send d ; Delete them all
Sleep, 1500

RelClick(0.94, 0.05) ; "Import"
Sleep, 100

RelClick(0.50, 0.50) ; Script editor
Sleep, 200

Send ^v ; Paste the script
Sleep, 2500

RelClick(0.50, 0.25) ; Import
Sleep, 100

RelRightClick(0.83, 0.71) ; First row
Send {F4}
Sleep, 50

Send {F4}
Sleep, 1500

RelClick(0.98, 0.96) ; Click the exit button
Send {F4}
Sleep, 50
Send {F4}

CoordMode, Mouse, Screen
MouseMove, oldMouseX, oldMouseY

SoundBeep
SoundBeep

; WinActivate, ahk_id %currentWin%
