# bsod-driver
A driver that call BSOD with code 0x00000000(STATUS_SUCCESS)

## BSOD Driver & Control Panel
This driver and its accompanying control panel are created for testing and debugging purposes. The driver initiates a blue screen with the **STATUS_SUCCESS** error code (*0x00000000*). The control panel streamlines the *installation, activation, and removal* of the driver. The driver is compatible with x64 versions of **Windows XP** and newer.

### Warning
- **Not Recommended for Real Systems with important data**: Avoid using on live systems.
- **Potential for Data Loss**: May result in data loss and system crashes.
- **Intended for Testing and Debugging**: Solely for testing and debugging purposes.

### Instructions

1. **Installation**:
 - Run control_panel.bat and select the "Install driver" option.
 - Ensure that you are operating in a controlled testing environment.

2. **Activation**:
 - Run control_panel.bat and choose the "Activate (crash system)" option.

3. **Uninstallation**:
 - Run control_panel.bat and select the "Uninstall driver" option.

### Additional Options
Reinstallation:
- Run control_panel.bat and choose the "Reinstall driver" option.

### Manual install
If you encounter issues with the Control Panel or prefer manual installation, you can use the `sc` command to install the driver.

**Install**:
1. Open a **Command Prompt** with administrative privileges.
2. Navigate to the directory containing the driver file (e.g., *bsod.sys*).
3. Execute the following command to create the service for driver:
   `sc create bsod binpath= "%cd%\bsod.sys" type= kernel`
4. If encountering a service already exists error, execute:
   `sc delete bsod`
   Then retry step 3.
   
**Activation**:
Upon launch, the driver executes a function triggering an *unstoppable* BSOD. **Exercise extreme caution**.
1. After service creation, initiate it with the command:
   `sc start bsod`

**Uninstall**:
1. Open a **Command Prompt** with administrative privileges.
2. To uninstall the driver, use the command:
   `sc delete bsod`

**Reinstall**
1. Open a **Command Prompt** with administrative privileges.
2. Navigate to the directory containing the driver file (e.g., *bsod.sys*).
3. Delete the driver:
   `sc delete bsod`
4. Install the driver:
   `sc create bsod binpath= "%cd%\bsod.sys" type= kernel`

### User Consent
By using this driver, you agree that the author **is not responsible** for potential consequences, including data loss. Use at your own **risk**. The driver cannot be employed for malicious actions to harm someone's computer.
