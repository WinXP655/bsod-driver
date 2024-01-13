# testing-bsod-driver
A driver that call BSOD with code 0x00000000(STATUS_SUCCESS)

## BSOD Driver & Control Panel
This driver and control panel are intended for testing and debugging purposes. The driver triggers a blue screen with the **STATUS_SUCCESS** error code (*0x00000000*). The control panel facilitates easy installation, activation, and removal of the driver.

### Warning
- Not recommended for use on real systems.
- May cause data loss and system crashes.
- Use only for testing and debugging purposes.

### Instructions
1. Installation:
 - Run control_panel.bat and choose the "Install driver" option.
 - Ensure that you are in a testing environment.

2. Activation:
 - Run control_panel.bat and choose the "Activate (crash system)" option.

3. Uninstallation:
 - Run control_panel.bat and choose the "Uninstall driver" option.

### Additional Options
Reinstallation:
 - Run control_panel.bat and choose the "Reinstall driver" option.

### Warning
- Use only for testing and debugging purposes.
- Do not run on real systems with important data.

### User Consent
By using this driver, you agree that the author is not responsible for potential consequences, including data loss. Use at your own risk.
