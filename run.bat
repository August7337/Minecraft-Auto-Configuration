@echo off
set "RPFolder=C:\Users\%USERNAME%\AppData\Roaming\.minecraft\resourcepacks"

if not exist "%RPFolder%" (
    mkdir "%RPFolder%"
    echo %RPFolder% did not exist, it was created.
) else (
    echo %RPFolder% already exists.
)

xcopy "resourcepacks" "%RPFolder%" /e /i

pause
