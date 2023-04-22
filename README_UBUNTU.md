# Mission-Planner-and-DPC-11

Installing Mission Planner and DPC-11 on Ubuntu.

The following Bash commands need to be run in the terminal program of your choice.
By default on Ubuntu this is "Terminal". All commands with `sudo` in them are running with super admin privledges as we are modifiying some of the core functionality of your system to emulate windows and run these programs.

The commands are setup to pull the latest version of all software from the supplier. The documentation is linked below to the offical page.

<h4>Option 1: Autoinstaller</h4>
<h4> NOTE: This only supports Ubuntu 22.04 all other version require manual install </h4>

Simply download the [auto installer](https://github.com/Direxfire/Mission-Planner-and-DPC-11-/blob/main/Installers/Auto_Installer.sh)  file and run it.
` sudo bash ./Auto_Installer.sh`. This will require your password.

<h4>Option 2: Manual Install. </h4>

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
