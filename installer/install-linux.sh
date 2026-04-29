#!/bin/bash
set -e

EXT_ID="nnobadnbidmiocnjfipimpnmmakfanla"
UPDATE_URL="https://sales-coach-extension.seazone.properties/update.xml"
POLICY_DIR="/etc/opt/chrome/policies/managed"
POLICY_FILE="${POLICY_DIR}/seazone-sales-coach.json"

echo "================================================"
echo "  Seazone Sales Coach - Instalador (Linux)"
echo "================================================"
echo
echo "Este script precisa de sudo para escrever em /etc/opt/chrome/policies/."
echo "Antes de continuar, FECHE o Google Chrome."
read -p "Pressione ENTER para continuar..."

sudo mkdir -p "${POLICY_DIR}"
sudo tee "${POLICY_FILE}" > /dev/null <<EOF
{
  "ExtensionInstallForcelist": ["${EXT_ID};${UPDATE_URL}"]
}
EOF

echo
echo "[OK] Politica aplicada em ${POLICY_FILE}."
echo
echo "Abra o Chrome agora. A extensao sera instalada automaticamente."
