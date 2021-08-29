#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

WinGet, currentWin, ID, A
WinActivate, The Perfect Tower

WinMove, The Perfect Tower, , , , 1440, 1080
WinGetPos, , , w, h, The Perfect Tower

OutputDebug, %w% %h%

WinActivate, ahk_id %currentWin%
