@echo off
:: Minecraft Hile Kontrol CMD Arayüzü
:: Bu batch dosyası PowerShell scriptini çalıştırır

title Minecraft Hile Kontrol Aracı
color 0B

echo Minecraft Hile Kontrol Aracı
echo ===========================
echo.
echo Bu araç, Minecraft mods klasörünüzü tarayarak yasaklı mod/hile arar.
echo.

:: PowerShell scriptini çalıştır
powershell -ExecutionPolicy Bypass -File "%~dp0Minecraft-Hile-Kontrol.ps1"

pause