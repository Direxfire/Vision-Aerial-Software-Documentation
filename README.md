# Mission-Planner-and-DPC-11-

Installing Mission Planner and DPC-11 on MacOS and Ubuntu installs

Ubuntu

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

| Ubuntu Version  | Installer |
| ------------- | ------------- |
| Ubuntu 23.04  | `bash sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/lunar/winehq-lunar.sources`  |
| Ubuntu 22.10  | `bash sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/kinetic/winehq-kinetic.sources`|
| Ubuntu 22.04  | `bash sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources `  |
| Ubuntu 20.04  | `bash sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/focal/winehq-focal.sources ` |
| Ubuntu 18.04  | `bash sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/bionic/winehq-bionic.sources ` |

3. Update package information
   `bash
   sudo apt update
   `
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

6. Install Mission Planner

```Base
cd ~/.local/share/applications/
wget 
```

    Note: The file location will need to be changed. Choose /usr/share/applications/
