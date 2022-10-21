#NoEnv
#SingleInstance, ignore
SendMode Input
SetWorkingDir C:\Users\Theseus\Documents\AutoHotKey
DetectHiddenWindows On
DetectHiddenText On
global scripts := []

getFiles(Folder)
{
  Loop %Folder%\*.ahk
  {
    scripts.Push(A_LoopFileName)
  }
}

^+q::
  WinGet, id, list, ahk_class AutoHotkey
  running := 0

  Loop, %id%
  {
    running++
    this_ID := id%A_Index%
    WinGetTitle, title, ahk_id %this_ID%
    SkriptPath := RegExReplace(title, " - AutoHotkey v" A_AhkVersion)
    If InStr(SkriptPath, A_ScriptFullPath)
      continue
    WinClose, %SkriptPath% ahk_class AutoHotkey
  }

  if (running < 2) {
    scripts := []
    getFiles("C:\Users\Theseus\Documents\AutoHotKey")
    Loop % scripts.Length() {
        script := % scripts[A_Index]
        Run %script%
    }
    MsgBox, "AHK Resumed"
  }
  else {
    MsgBox, "AHK Paused"
  }
