@echo off
title Windows Education Tool by SlayMoo and Xternos

:menu
cls
echo Windows Education Tool by SlayMoo and Xternos
echo -----------------------------------
echo 1. IPConfig Tools
echo 2. Command Executor
echo 3. Administrator Tools
echo 4. System Information
echo 5. Check Disk
echo 6. Network Statistics
echo 7. Device Manager
echo 8. Credits
echo 9. About Windows Education Tool
echo 10. Exit
echo -----------------------------------

set /p choice=Enter your choice (1-10): 

if "%choice%"=="1" goto ipconfig_tools
if "%choice%"=="2" goto command_executor
if "%choice%"=="3" goto administrator_tools
if "%choice%"=="4" goto system_information
if "%choice%"=="5" goto check_disk
if "%choice%"=="6" goto network_statistics
if "%choice%"=="7" goto device_manager
if "%choice%"=="8" goto credits
if "%choice%"=="9" goto about_tool
if "%choice%"=="10" goto exit_script

:ipconfig_tools
cls
echo IPConfig Tools
echo -----------------------------------
echo 1. Internet Information
echo 2. Flush DNS
echo 3. Back to Main Menu
echo -----------------------------------

set /p ipconfig_choice=Enter your choice (1-3): 

if "%ipconfig_choice%"=="1" goto internet_information
if "%ipconfig_choice%"=="2" goto flush_dns
if "%ipconfig_choice%"=="3" goto menu

:internet_information
cls
echo Internet Information
echo -----------------------------------
ipconfig /all
pause
goto ipconfig_tools

:flush_dns
cls
echo Flush DNS
echo -----------------------------------
ipconfig /flushdns
echo DNS cache has been flushed.
pause
goto ipconfig_tools

:command_executor
cls
echo Command Executor
echo -----------------------------------
set /p command=Enter the command to execute: 
%command%
pause
goto menu

:administrator_tools
cls
echo Administrator Tools
echo -----------------------------------
echo 1. Add Logged-In User to Administrators
echo 2. Create User with Administrator Privileges
echo 3. Back to Main Menu
echo -----------------------------------

set /p admin_choice=Enter your choice (1-3): 

if "%admin_choice%"=="1" goto add_user_to_administrators
if "%admin_choice%"=="2" goto create_user
if "%admin_choice%"=="3" goto menu

:add_user_to_administrators
cls
echo Add Logged-In User to Administrators
echo -----------------------------------
echo Adding the logged-in user to the administrators group...
net localgroup administrators "%USERNAME%" /add
echo User "%USERNAME%" added to administrators group.
pause
goto administrator_tools

:create_user
cls
echo Create User with Administrator Privileges
echo -----------------------------------
set /p new_username=Enter the new username: 
net user %new_username% /add /passwordreq:no
net localgroup administrators %new_username% /add
echo User %new_username% created with administrator privileges.
pause
goto administrator_tools

:system_information
cls
echo System Information
echo -----------------------------------
systeminfo
pause
goto menu

:check_disk
cls
echo Check Disk
echo -----------------------------------
chkdsk
pause
goto menu

:network_statistics
cls
echo Network Statistics
echo -----------------------------------
netstat -a
pause
goto menu

:device_manager
cls
echo Device Manager
echo -----------------------------------
devmgmt.msc
pause
goto menu

:credits
cls
echo Credits
echo -----------------------------------
echo - SlayMoo: Code
echo - ChatGPT: Some Code
echo - Xternos: Thought of the Idea
pause
goto menu

:about_tool
cls
echo About Windows Education Tool
echo -----------------------------------
echo This tool is a command-line utility designed by SlayMoo
echo to provide various system-related functionalities.
echo It includes IPConfig Tools, a Command Executor, Administrator Tools,
echo System Information, Check Disk, Network Statistics, Device Manager, and more.
echo For educational purposes only. Use at your own risk.
pause
goto menu

:exit_script
cls
echo Exiting Windows Education Tool...
exit
