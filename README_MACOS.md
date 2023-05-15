# Installing Required Software on MacOS Big Sur and newer

# Full install 

To install all required software packages download the `\Installers\MacOS_Auto_Installer` and run. 
This installer will install Mission Planner, DPC-11, DroneCAN GUI Tool, and GTune Desktop. All of these are used in programming/configuring the drones. 

Additionally, Brew, Cask and WINE will be installed. These programs allow the Windows only programs to be installed. 

# Indivual Installs 
**Note:** This will require use of the "Terminal" on MacOS.  
This means copying some commands from here into the terminal and executing them. All commands with `sudo` in them are running with super admin privledges as we are modifiying some of the core functionality of your system to emulate windows and run these programs.

## Installing Brew
Brew package manager is required to install WINE which is required to install and run windows programs on MacOS. 

Run the following commands one at a time in your terminal. 

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install wget
```

## Installing WINE
```bash
brew tap homebrew/cask-versions
brew install --cask --no-quarantine wine-stable
```
Brew and WINE are now installed on your MacOS Device  :tada: 

# Now to install the actual programs required.

## Installing [Mission Planner](https://firmware.ardupilot.org/Tools/MissionPlanner/MissionPlanner-stable.zip)
### Download Mission Planner 

```bash 
mkdir /Applications/MissionPlanner && cd /Applications/MissionPlanner 
sudo wget https://firmware.ardupilot.org/Tools/MissionPlanner/MissionPlanner-stable.zip
sudo unzip MissionPlanner-stable.zip
```
### Install Mission Planner
**NOTE:** This section is untested and may have issues.
```bash
cd MissionPlanner
sudo wine ./Installer.exe
```
## Installing [DPC-11](https://lnk.bio/go?d=https%3A%2F%2Fhitecrcd.com%2Fuploads%2FDPC-11_Install__2020_12_09_01-2.9.9.zip&hash=04c74dce66b8ae2f3b73cbebe0cab52c&id=4011645&ext=-1422301&timezone=America%2FNew_York&type=1) 

### Download DPC-11 Utility
```bash 
mkdir /Applications/DPC-11 && cd /Applications/MissionPlanner
sudo wget https://lnk.bio/go?d=https%3A%2F%2Fhitecrcd.com%2Fuploads%2FDPC-11_Install__2020_12_09_01-2.9.9.zip&hash=04c74dce66b8ae2f3b73cbebe0cab52c&id=4011645&ext=-1422301&timezone=America%2FNew_York&type=1)
unzip DPC-11_2020_12_09_01-2.9.9
```
### Install DPC-11 
```bash
cd DPC-11_2020_12_09_01-2.9.9
sudo wine ./DPC-11_Setup.msi
```

## Installing [DroneCAN GUI Tool](https://firmware.ardupilot.org/Tools/CAN_GUI/dronecan_gui_tool-1.2.15-win64.msi)
These install directions are directly taken from the DroneCAN GUI Tool MacOS Support page. 
### Install prerequisite software  


```bash
brew install python3
brew postinstall python3
pip3 install PyQt5
pip3 install git+https://github.com/DroneCAN/gui_tool@master
dronecan_gui_tool
```
### Installing DroneCAN GUI Tool
```bash
sudo port selfupdate
sudo port install curl-ca-bundle py35-pip py35-pyqt5 py35-numpy
sudo python3.5 -m pip install git+https://github.com/DroneCAN/gui_tool@master
```

## Installing [GTune Desktop](https://github.com/Gremsy/gTuneDesktop/releases/download/v.1.4.9.1/gTuneDesktop1.4.9.1_Mac_Official.zip)
- Install Required Drivers: 
    1. Download the drivers [here](https://www.silabs.com/documents/public/software/Mac_OSX_VCP_Driver.zip).
    2. In `Downloads` extract the `Mac_OSX_VCP_Driver.zip` folder by right clicking on it and selected extract. 
    3. Once extracted, double click the `SiLabsUSBDriverDisk.dmg` file to install. 
**Note:** 	On MacOS 10.13 and later, the installation of the driver may be blocked. 
	To unblock, open the System Preferences Security & Privacy pane and
	unblock the system extension. See Apple Technical Note TN2459
	"User-Approved Kernel Extension Loading" for more information.

- To install:
    1. Download the [GTune MacOS Desktop Stable](https://github.com/Gremsy/gTuneDesktop/releases/download/v.1.4.9.1/gTuneDesktop1.4.9.1_Mac_Official.zip).
    2. In `Downloads` extract the installer by right clicking on the `gTuneDesktop1.4.9.1_Mac_Offical.zip` and selecting extract.
    3. Run the `gTuneDesktop1.4.9.1_Mac_Official.dmg`.
