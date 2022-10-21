#NoEnv  ;
#SingleInstance Force
;#Warn
SendMode Input
SetWorkingDir C:\Users\Theseus\Documents\CS\gcode

^e::
Run wt -p "PS7"
;RunWait wt -p "PS7" powershell "code gcode"; nt -p "PS7" --title "Backend" -d "Backend" powershell -noExit "env/Scripts/activate"`; nt -p "PS7" --title "Frontend" -d "frontend" powershell -noExit "npm run dev | title"`;
