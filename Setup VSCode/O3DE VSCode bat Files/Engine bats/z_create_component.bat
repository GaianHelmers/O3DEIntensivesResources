@echo off
cd /d %~dp0
echo === Create New Component ===
echo(
echo Current directory is: %cd%
setlocal enabledelayedexpansion
echo(
    
:: Prompt for target directory
set "defaultPath=<Gem Dev Folder Path>"
set /P "projectPath=Path [%defaultPath%]: "
if "%projectPath%"=="" set "projectPath=%defaultPath%"

set "defaultGemSubpath=<Default Gem Folder>"
set /P "gemSubPath=Gem Directory [%defaultGemSubpath%]: "
if "%gemSubPath%"=="" set "gemSubPath=%defaultGemSubpath%"

:: Prompt for component name
set "defaultComp=MyComponent"
set /P "componentName=Component Name [%defaultComp%]: "
if "%componentName%"=="" set "componentName=%defaultComp%"

:: Prompt for gem name
set "defaultGem=<Default Gem Name>"
set /P "gemName=Gem Name [%defaultGem%]: "
if "%gemName%"=="" set "gemName=%defaultGem%"

:: Prompt for template name
set "defaultTemplate=DefaultComponent"
set /P "templateName=Template Name [%defaultTemplate%]: "
if "%templateName%"=="" set "templateName=%defaultTemplate%"

echo(
echo ========================
echo Summary:
echo Path: %projectPath%%gemSubpath%\code
echo Component: %componentName%
echo Gem: %gemName%
echo Template: %templateName%
echo ========================
echo(
pause

:: Run the o3de.bat create-from-template command
scripts\o3de.bat create-from-template -dp "%projectPath%%gemSubpath%\code" -dn "%componentName%" -tn "%templateName%" -kr -r ${GemName} "%gemName%" -f

endlocal