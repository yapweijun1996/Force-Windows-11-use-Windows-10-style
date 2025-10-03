# Force Windows 11 to Use Windows 10-Style Right-Click Context Menu

This repository contains batch scripts to customize the right-click context menu in Windows 11, making it resemble the classic Windows 10 style or easily toggle between styles.

## Files

- **force_windows10_context_menu.bat**: A simple script that enables the Windows 10-style right-click context menu in Windows 11.
- **ToggleRightClickMenu.bat**: An interactive script that allows you to switch between Windows 10 classic right-click menu and Windows 11 default right-click menu.
- **.gitattributes**: Git configuration file for the repository.

## Requirements

- Windows 11 operating system.
- Administrator privileges to run the scripts (right-click and select "Run as administrator").

## Usage

### force_windows10_context_menu.bat

1. Right-click the file and select "Run as administrator".
2. The script will add the necessary registry entries and restart Windows Explorer.
3. Your right-click context menu will now look like Windows 10.

### ToggleRightClickMenu.bat

1. Right-click the file and select "Run as administrator".
2. A menu will appear with the following options:
   - **1) Switch to Windows 10 classic right-click menu**: Enables Windows 10-style menu.
   - **2) Restore to Windows 11 default right-click menu**: Reverts to Windows 11 default menu.
   - **0) Exit**: Closes the script.
3. Enter your choice (1/2/0) and press Enter.
4. The script will apply the changes and restart Windows Explorer.
5. Test the menu by right-clicking on the desktop or in File Explorer.
6. The script will return to the menu for further changes.

## How It Works

The scripts modify the Windows registry to enable or disable the classic context menu by adding or removing the CLSID key for the Windows 10-style menu. After making changes, Windows Explorer is restarted to apply the modifications.

## Notes

- These changes are reversible using the toggle script.
- Always run the scripts as administrator to ensure registry modifications succeed.
- If you encounter issues, ensure no other context menu customizations are conflicting.

## License

This project is open-source. Feel free to use and modify the scripts as needed.