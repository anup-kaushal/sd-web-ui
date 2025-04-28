@echo off
setlocal

set "BASE=%~dp0"
set "PYTHON_DIR=%BASE%python_embed\python"

set "PATH=%PYTHON_DIR%;%PATH%"

if exist "%PYTHON_DIR%\Scripts" (
    set "PATH=%PYTHON_DIR%\Scripts;%PATH%"
)

echo.
echo     ISOLATED ENVIRONMENT
echo ===============================
echo.

REM Checks if python exists
if not exist "%PYTHON_DIR%\python.exe" (
    echo CAN'T FIND PYTHON
    pause
    exit /b 2
)

cmd /Q /K

endlocal