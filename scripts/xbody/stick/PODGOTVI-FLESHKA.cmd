@echo off
chcp 65001 >nul
rem XEMS: prepares the USB stick for XBody (double-click). The work is in tools\podgotvi.ps1.
if not exist "%~dp0fleshka\updater.sh" (
  echo.
  echo  Първо разархивирай целия zip: десен бутон върху него - Extract All. После пусни този файл от новата папка.
  echo.
  pause
  exit /b 1
)
powershell -NoProfile -ExecutionPolicy Bypass -File "%~dp0tools\podgotvi.ps1"
