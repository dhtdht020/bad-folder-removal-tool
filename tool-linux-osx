@echo off
echo Please make sure this batch file is located in the folder that contains the bad folder. You are currently in "%cd%"
echo[
echo -Tool by dhtdht020--------------v1-------------------------------------
echo[
:choice
set /P c=Are you in the folder that contains the bad folder[Y/N]?
if /I "%c%" EQU "Y" goto :Y1
if /I "%c%" EQU "N" goto :Y2
goto :choice


:Y1

echo Alright, please type the name of the bad folder below.
set /p folder=Enter bad folder name: 
echo Alright, removing %folder%..
rd /s "\\?\%cd%\%folder%"
pause 
exit

:Y2

echo Please move me to the folder that CONTAINS the bad file! You are currently in "%cd%"
pause
