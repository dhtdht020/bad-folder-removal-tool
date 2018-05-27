@echo off
:start

echo[
echo -Copyright (C) dhtdht020 2018---------------------------------v1.1--
echo[
echo Please make sure this batch file is located in the folder that contains the
echo undeleteable folder.
echo You are currently in "%cd%".
echo[
echo[

:areyouinfolder

set /P c=Are you in the folder that contains the undeleteable folder[Y/N]?
if /I "%c%" EQU "Y" goto :Y1
if /I "%c%" EQU "N" goto :Y2
goto :areyouinfolder


:Y1

echo Alright, please type the name of the undeleteable folder below.
set /p folder=Enter undeleteable folder's name: 
echo Alright, removing %folder%..
echo[
rd /s "\\?\%cd%\%folder%" || if errorlevel 1 goto error
pause 

:Y2

echo Please move me to the folder that CONTAINS the undeleteable folder! You are currently in "%cd%".
pause

:error

echo An error occured while removing! Information regarding the error stated above.
echo[

:retry

set /P c=Retry[Y/N]?
if /I "%c%" EQU "Y" goto :Y1
if /I "%c%" EQU "N" goto :Y3
goto :retry
pause

:Y3
pause
