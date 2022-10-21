#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir C:\Users\Theseus\Documents\CS
#SingleInstance Force

loop {
Sleep 1000
^m::
SoundGet, isMuted,, Mute

If isMuted -eq Off {
  SoundSet,+1,,Mute
  return
}
else
  SoundSet,-1,,Mute
  return
}

#^x::ExitApp
