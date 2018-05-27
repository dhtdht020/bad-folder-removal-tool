@echo off
:start

echo[
echo -Copyright (C) dhtdht020 2018---------------------------------v1.2------------
echo[
echo Please make sure this batch file is located in the folder that contains the
echo undeleteable folder.
echo You are currently in "%cd%".
echo[
echo[

:areyouinfolder

set /P c=Are you in the folder that contains the undeleteable folder (Y/N)?
if /I "%c%" EQU "Y" goto :Y1
if /I "%c%" EQU "N" goto :Y2
if /I "%c%" EQU "Yes" goto :Y1
if /I "%c%" EQU "No" goto :Y2
if /I "%c%" EQU "Yep" goto :Y1
if /I "%c%" EQU "Nope" goto :Y2
if /I "%c%" EQU "debug:Success" goto :success
if /I "%c%" EQU "debug:List" goto :debuglist
if /I "%c%" EQU "debug:Retry" goto :retry
goto :areyouinfolder


:Y1

cls
echo[
echo -Copyright (C) dhtdht020 2018---------------------------------v1.2------------
echo[
echo[
echo[
echo[
echo Alright, please type the name of the undeleteable folder below.
set /p folder=Enter undeleteable folder's name: 
cls
echo[
echo -Copyright (C) dhtdht020 2018---------------------------------v1.2------------
echo[
echo[
echo[
echo[
echo Alright, deleting %folder%..
echo (Full Path: %cd%\%folder%)
echo[
echo You will also be prompted an "Are you sure" message.
echo[
rd /s "\\?\%cd%\%folder%" || if errorlevel 1 goto error

:success

cls
echo[
echo -Copyright (C) dhtdht020 2018---------------------------------v1.2------------
echo[
echo[
echo[
echo[
echo Folder "%folder%" in "%cd%" deleted
echo successfully!
echo[
pause 
exit

:Y2

cls
echo[
echo -Copyright (C) dhtdht020 2018---------------------------------v1.2------------
echo[
echo[
echo[
echo[
echo Please move me to the folder that CONTAINS the undeleteable folder!
echo You are currently in "%cd%".
echo[
pause
exit

:error

echo An error occured while removing! Information regarding the error stated above.
echo[

:retry

cls
echo[
echo -Copyright (C) dhtdht020 2018---------------------------------v1.2------------
echo[
echo[
echo[
echo[
set /P d=Retry[Y/N]?
if /I "%d%" EQU "Y" goto :Y1
if /I "%d%" EQU "N" goto :Y3
goto :retry
echo[
pause
exit

:Y3
pause
exit

:debuglist

cls
echo[
echo -Copyright (C) dhtdht020 2018--------Debug-------------------v1.2------------
echo[
echo[
echo[
echo[
echo debug:Success - goto :success
echo debug:List - goto :debuglist
echo debug:Retry - goto :retry
echo[
goto :areyouinfolder
echo[
pause
exit
