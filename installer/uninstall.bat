@echo off
setlocal

set REG_KEY=HKCU\Software\Policies\Google\Chrome\ExtensionInstallForcelist

echo ================================================
echo  Seazone Sales Coach - Desinstalador
echo ================================================
echo.
echo Antes de continuar, FECHE o Google Chrome.
echo.
pause

reg delete "%REG_KEY%" /v 1 /f >nul 2>&1
reg delete "%REG_KEY%" /f >nul 2>&1

echo.
echo [OK] Politica removida.
echo Abra o Chrome - a extensao sera desinstalada automaticamente.
echo.
pause
endlocal
