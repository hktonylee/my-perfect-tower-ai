#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

WinGet, currentWin, ID, A
WinActivate, The Perfect Tower

CoordMode, Mouse, Client

RelClick(x, y) {
    WinGetPos, , , w, h, The Perfect Tower
    MouseClick, Left, x * w, (1 - y) * h
}

; RelClick(0.33, 0.94) ; Headquarters
; Sleep 1000
; RelClick(0.20, 0.46) ; Facility AI

Send d ; Delete them all


; X := 0.33 * W
; Y := (1- 0.94) * H

; WinActivate, ahk_id %currentWin%
