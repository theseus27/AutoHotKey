#NoEnv
#SingleInstance Force
SendMode Input
SetWorkingDir C:\Users\Theseus\Documents\CS

loop {
Sleep 1000
^+m::
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
