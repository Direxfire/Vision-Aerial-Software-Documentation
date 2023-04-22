#Power shell script
#Created 04/22/23
#Created for internal use at VisionAerial
#Author: Drew Currie
#Last Editted: 04/22/23 -DC
#Designed for use with Windows 10 and 11

[Environment]::OSVersion
Get-Date

$Mission_Planner = “https://firmware.ardupilot.org/Tools/MissionPlanner/MissionPlanner-stable.zip”

$Path=”C:\Downloads\MissionPlanner.zip”

Invoke-Webrequest -URL $Mission_Planner -OutFile $Path

Expand-Archive C:\Downloads\MissionPlanner.zip -a C:\Downloads

C:\Downloads\MissionPlanner\>./Installer.exe