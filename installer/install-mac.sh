#!/bin/bash
set -e

EXT_ID="nnobadnbidmiocnjfipimpnmmakfanla"
UPDATE_URL="https://sales-coach-extension.seazone.properties/update.xml"

echo "================================================"
echo "  Seazone Sales Coach - Instalador (macOS)"
echo "================================================"
echo
echo "Antes de continuar, FECHE o Google Chrome."
read -p "Pressione ENTER para continuar..."

defaults write com.google.Chrome ExtensionInstallForcelist -array-add "${EXT_ID};${UPDATE_URL}"

echo
echo "[OK] Politica aplicada."
echo
echo "Abra o Chrome agora. A extensao 'Seazone Sales Coach'"
echo "sera instalada automaticamente em alguns segundos."
echo
echo "Se nao aparecer, abra chrome://policy e clique em 'Recarregar politicas'."
