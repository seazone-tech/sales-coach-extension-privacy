@echo off
setlocal

set EXT_ID=nnobadnbidmiocnjfipimpnmmakfanla
set UPDATE_URL=https://sales-coach-extension.seazone.properties/update.xml
set REG_KEY=HKCU\Software\Policies\Google\Chrome\ExtensionInstallForcelist

echo ================================================
echo  Seazone Sales Coach - Instalador
echo ================================================
echo.
echo Antes de continuar, FECHE o Google Chrome.
echo.
pause

reg add "%REG_KEY%" /v 1 /t REG_SZ /d "%EXT_ID%;%UPDATE_URL%" /f >nul
if errorlevel 1 (
    echo [ERRO] Nao foi possivel escrever no registro.
    pause
    exit /b 1
)

echo.
echo [OK] Configuracao aplicada.
echo.
echo Abra o Chrome agora. A extensao "Seazone Sales Coach"
echo sera instalada automaticamente em alguns segundos.
echo.
echo Se nao aparecer, abra: chrome://policy e clique em "Recarregar politicas".
echo.
pause
endlocal
