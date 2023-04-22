# Installing Required Software on Windows 10/11

Installing Mission Planner on Windows

Below are  series of links to the required files and their respetive installers.

## [Mission Planner](https://firmware.ardupilot.org/Tools/MissionPlanner/MissionPlanner-stable.zip)

- To install:
   1. Go to your `Downloads` folder.
   2. Unzip the `MissionPlanner-stable.zip` by right clicking on it and selecting extract. This may take a few minuts to extact, this is not a small file.
   3. Open the newly extracted folder, run the `Installer.exe`, this may take a few minutes to complete. Follow through the setup wizard.
   4. If you cannot connect to the drone try installing the drivers manually, in the same folder, open the `Drivers` folder, then run the `DPInstx64.exe` file. THis will install the requried drivers for thsi program.

- Used to communicate with the drone during flight and monitor crtical sensors.
- This requires connecting to the drone via a serial COM Port on your device.
- Common issues here include the drone not connecting as a proper COM port. To check this open "Device Manager" then look for "COM Ports"
- Verify the drone is appearing as a COM PORT. IE "COM3 Standrd Serail Interface"

## [DPC-11](https://lnk.bio/go?d=https%3A%2F%2Fhitecrcd.com%2Fuploads%2FDPC-11_Install__2020_12_09_01-2.9.9.zip&hash=04c74dce66b8ae2f3b73cbebe0cab52c&id=4011645&ext=-1422301&timezone=America%2FNew_York&type=1)

- To install:
   1. Go to your `Downloads` folder.
   2. Unzip `DPC-11_Install__2020_12_09_01-2.9.9.zip` by right clicking it and selecting extract.
   3. Open the newly extracted folder, then open `DPC-11_2020_12_09_01-2.9.9`
   4. In this folder, run the ```DPC-11_Setup.msi``, this may take a few minutes to complete. Follow through the prompts in the setup wizard.
   5. After the program loads for the first time, close the program and open the `  HITECRCD_DPC-11 Driver Installer`folder.
   6. Run the `install_DPC-11_2020_12_09_01-2.9.9.exe`. This will install the drivers to allow you to connect to the DPC-11 Configurator.

     <p align = "center"> 
     **Note:** this may require your password and/or a restart, this is normal. 
     </p>

- DPC-11 is used to configure the retract servos and set position limits.
- DPC-11 requires connecting to the servo through the external DPC-11 device which uses a COM Port like Mission Planner above. If the DPC-11 does not show up as a COM Port please restart your computer, reconnect the DPC-11, and if all else fails, reinstall the drivers (Step 5 and 6 above).

## [DroneCAN GUI Tool](https://firmware.ardupilot.org/Tools/CAN_GUI/dronecan_gui_tool-1.2.15-win64.msi)

- To install:
   1. Go to your `Downloads` folder.
   2. Run the `gTuneDesktop1.4.7.2_Windows.msi` program to install DroneCAN GUI Tool. 



## [GTune Desktop](gTuneDesktop1.4.7.2_Windows)

- To install:
    1. Go to your `Downloads` folder.
  2. Unzip `DPC-11_Install__2020_12_09_01-2.9.9.zip` by right clicking it and selecting extract.