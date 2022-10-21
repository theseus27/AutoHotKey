#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir C:\Users\Theseus\Documents\CS\misc\AutoHotKey ; Ensures a consistent starting directory.
#SingleInstance, ignore

DetectHiddenWindows On
DetectHiddenText On

Running = true
Folder = "C:\Users\Theseus\Documents\CS\misc\AutoHotKey"

^u::
MsgBox, %Running%
  if (Running -eq true) {
    Loop %Folder%*.ahk {
        If (!A_LoopFileName -eq "RunAll")
          Run % A_LoopFileFullPath
    }
  }
  else {
    WinGet, thisPID, PID, A
    WinGet, pids, List, ahk_class AutoHotKey
    Loop %pids% {
      id := pids%A_Index%
      if !id -eq thisPID
        Process, Close, %otherPID%
    }
  }

#^x::ExitApp
