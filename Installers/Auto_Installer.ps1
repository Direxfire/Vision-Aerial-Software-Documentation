#Power shell script
#Created 04/22/23
#Created for internal use at VisionAerial
#Author: Drew Currie
#Last Editted: 04/22/23 -DC
#Designed for use with Windows 10 and 11

[Environment]::OSVersion
Get-Date
echo "Installing Required Software."
echo "1. Mission Planner"
echo "2. DPC-11 Servo Configuartion Utility"
$Mission_Planner = “https://firmware.ardupilot.org/Tools/MissionPlanner/MissionPlanner-stable.zip”

$Path=”C:\Downloads\MissionPlanner.zip”

Invoke-Webrequest -uri $Mission_Planner -OutFile $Path

Expand-Archive -LiteralPath 'C:\Downloads\MissionPlanner.zip' -DestinationPath C:\Reference

C:\Downloads\MissionPlanner\>./Installer.exe