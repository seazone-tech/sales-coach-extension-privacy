#!/bin/bash
set -e

POLICY_FILE="/etc/opt/chrome/policies/managed/seazone-sales-coach.json"

echo "================================================"
echo "  Seazone Sales Coach - Desinstalador (Linux)"
echo "================================================"
echo
echo "Antes de continuar, FECHE o Google Chrome."
read -p "Pressione ENTER para continuar..."

sudo rm -f "${POLICY_FILE}"

echo
echo "[OK] Politica removida."
echo "Abra o Chrome - a extensao sera desinstalada automaticamente."
