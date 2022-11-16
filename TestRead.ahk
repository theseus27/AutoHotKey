#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

^+r::
Input, shortcut, M, {Enter}

IniRead, lnk, AHKData.ini, URLS, shortcut

If (%lnk% != error)
    Run, chrome.exe %lnk%
Else
    MsgBox, Error on link %lnk% from shortcut %shortcut%