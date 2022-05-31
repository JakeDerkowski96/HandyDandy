:: This script was created by Matthew Wai on TenForums at http://www.tenforums.com
:: https://www.tenforums.com/tutorials/157437-how-add-create-elevated-shortcut-new-context-menu-windows-10-a.html
:: ************************************************************************************/
@echo off & mode con cols=88 lines=8 & color 17
(Net session >nul 2>&1)||(PowerShell start """%~0""" -verb RunAs & Exit /B)
:: ************************************************************************************/
cd /d "%~dp0"
Reg delete "HKCR\Elevated_lnk" /f
Reg delete "HKCR\.lnk_elevated" /f
Schtasks /delete /tn "Apps\Create_an_elevated_shortcut" /f
Del "%ProgramData%\TenForums.com\Create_an_elevated_shortcut.cmd"
RmDir "%ProgramData%\TenForums.com\"

Echo     The item [Elevated Shortcut] has been removed from the context menu.
Echo     Please press a key to close this message.
Pause>nul
Exit