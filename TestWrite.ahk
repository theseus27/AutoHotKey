#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

^+w::
;IniWrite, Value, File, Section, Key
IniWrite,dominion.games,AHKData.ini,URLS,dominion