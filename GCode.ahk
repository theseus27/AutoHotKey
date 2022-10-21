#NoEnv
#SingleInstance Force
SendMode Input
SetWorkingDir C:\Users\Theseus\Documents\CS\gcode

^+g::
Send, #^d
Send, #^{LCtrl}
Send, #^{LCtrl}
sleep, 1000
Run, wt -p "PS7" -d "." powershell "code ."
Run, wt -p "PS7"

Send, {Shift Down}
Run, microsoft-edge:https://localhost:3000
Send, {Shift Up}
Run, microsoft-edge:https://localhost:8000
