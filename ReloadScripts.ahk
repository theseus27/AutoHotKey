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

^!r::

;Kill Running Processes
  WinGet, id, list, ahk_class AutoHotkey
  Loop, %id%
  {
    this_ID := id%A_Index%
    WinGetTitle, title, ahk_id %this_ID%
    SkriptPath := RegExReplace(title, " - AutoHotkey v" A_AhkVersion)
    If InStr(SkriptPath, A_ScriptFullPath)
      continue
    WinClose, %SkriptPath% ahk_class AutoHotkey
  }

;Start Scripts
  scripts := []
  getFiles("C:\Users\Theseus\Documents\AutoHotKey")
  Loop % scripts.Length() {
      script := % scripts[A_Index]
      Run %script%
  }

  MsgBox % "Running " scripts.Length() . " scripts."
  Reload
