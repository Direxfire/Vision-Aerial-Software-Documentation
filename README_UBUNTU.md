# Installing Required Software on Ubuntu

Installing Mission Planner on Ubuntu.

The following Bash commands need to be run in the terminal program of your choice.
By default on Ubuntu this is "Terminal". All commands with `sudo` in them are running with super admin privledges as we are modifiying some of the core functionality of your system to emulate windows and run these programs.

The commands are setup to pull the latest version of all software from the supplier. The documentation is linked below to the offical page.

<h4>Option 1: Autoinstaller</h4>
<h4> NOTE: This only supports Ubuntu 22.04 all other version require manual install </h4>

Simply download the [auto installer](https://github.com/Direxfire/Mission-Planner-and-DPC-11-/blob/main/Installers/Ubuntu_Auto_Installer.sh)  file and run it.
` sudo bash ./Ubuntu_Auto_Installer.sh`. This will require your password.

<h4>Option 2: Manual Install. </h4>

## Installing Mission Planner
1. Prepare for install

```bash
sudo apt update
sudo apt upgrade
sudo dpkg --add-architecture i386
```

2. Add the WINE repository

```bash
sudo mkdir -pm755 /etc/apt/keyrings  
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
```

| Ubuntu Version  | Repository |
| ------------- | ------------- |
| Ubuntu 23.04  | `bash sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/lunar/winehq-lunar.sources`  |
| Ubuntu 22.10  | `bash sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/kinetic/winehq-kinetic.sources`|
| Ubuntu 22.04  | `bash sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources `  |
| Ubuntu 20.04  | `bash sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/focal/winehq-focal.sources ` |
| Ubuntu 18.04  | `bash sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/bionic/winehq-bionic.sources ` |

3. Update package information

```bash
sudo apt update
```

4. Install WINE

```bash
sudo apt install --install-recommends winehq-stable
```

5. Download Mission Planner

```bash
mkdir /usr/share/applications/MissionPlanner && cd /usr/share/applications/MissionPlanner
sudo wget https://firmware.ardupilot.org/Tools/MissionPlanner/MissionPlanner-stable.zip
sudo unzip MissionPlanner.zip
```

6. Install Mission Planner, configure it to be an executible, and allow for searching for the program.

```bash
cd ~/.local/share/applications/ && wget https://raw.githubusercontent.com/Direxfire/Mission-Planner-and-DPC-11-/main/MissionPlanner/MissionPlanner.desktop
```

Mission Planner should now be installed. The first launch may take up to 5 minutes to load.  
**Note:** many windows may flash on the first launch and you may need to enter your password to authorize the system.

7. Adding yourself to the serial dial out group. This is needed to actually communicate with the drone.
   **Note:** `$USER` will automatically select your user as the username.

```bash
sudo usermod -a -G dialout $USER
```

## Installing [DCP-11](https://hitecrcd.com/uploads/DPC-11_Install__2020_12_09_01-2.9.9.zip)
   1. Download DCP-11 
   ```bash
   mkdir /usr/share/applications/DPC-11 && cd /usr/share/applications/DPC-11
   sudo wget https://hitecrcd.com/uploads/DPC-11_Install__2020_12_09_01-2.9.9.zip
   sudo unzip DPC-11_Install_2020_12_09_01-2.9.9.zip
   ```
   2. Install DCP-11
   ``` bash
   cd DPC-11_Install_2020_12_09_01-2.9.9/DPC-11_2020_12_09_01-2.9.9
   sudo wine ./DPC-11_Setup.msi
   ```
## Installing [DroneCAN GUI Tool](https://firmware.ardupilot.org/Tools/CAN_GUI/dronecan_gui_tool-1.2.15-win64.msi)
**Note:** These install directions come directly from DroneCAN GUI Tool
```bash
sudo apt-get install -y python3-pip python3-setuptools python3-wheel
sudo apt-get install -y python3-numpy python3-pyqt5 python3-pyqt5.qtsvg git-core
sudo pip3 install dronecan
sudo pip3 install git+https://github.com/DroneCAN/gui_tool@master
```
The executable installed is named `dronecan_gui_tool`

## Installing [GTune Desktop](https://github.com/Gremsy/gTuneDesktop/releases/download/v.1.4.9.1/gTuneDesktop1.4.9.1_Windows_Official.zip)

<h2> This needs updated. I also have no idea of the drivers will even work with Linux. Some testing required here ¯\_(ツ)_/¯ </h2>