# testing-bsod-driver
A driver that call BSOD with code 0x00000000(STATUS_SUCCESS)

## BSOD Driver
This driver is intended for testing and debugging purposes. The driver triggers a blue screen with the **STATUS_SUCCESS** error code (*0x00000000*). Driver requires x64 version of Windows XP and higher

### Warning
- Not recommended for use on real systems.
- May cause data loss and system crashes.
- Use only for **testing and debugging purposes**.
- Do not run on real systems with important data.

### How to install

**Install**:
1. Open a **Command Prompt** with administrative privileges.
2. Navigate to the directory containing the driver file (e.g., *bsod.sys*).
3. Run the following command to create the service:
   `sc create bsod binpath= "%cd%\bsod.sys" type= kernel`
4. If you get an error that service already exist, execute this command:
   `sc delete bsod`
   Then try step 3 again
   
**Activation**:
Upon start, the driver executes a function that triggers an *unstoppable* BSOD. **Use with extreme caution**.
1. Once the service is created, you can start it with the following command:
   `sc start bsod`

**Uninstall**:
1. Open a **Command Prompt** with administrative privileges.
2. To uninstall the driver, use the following command:
   `sc delete bsod`
3. Navigate to the directory containing the driver file (e.g., *bsod.sys*).
4. Keep **bsod.sys** if you want to use it in future
   OR
   Delete **bsod.sys** if you don't need it

**Reinstall**
1. Open a **Command Prompt** with administrative privileges.
2. Navigate to the directory containing the driver file (e.g., *bsod.sys*).
3. Delete driver:
   `sc delete bsod`
4. Install driver:
   `sc create bsod binpath= "%cd%\bsod.sys" type= kernel`

### User Consent
By using this driver, you agree that the author **is not responsible** for potential consequences, including data loss. Use at your own **risk**. Driver cannot be used in a malicious actions to harm someone's computer
