#!/bin/bash
set -e

echo "================================================"
echo "  Seazone Sales Coach - Desinstalador (macOS)"
echo "================================================"
echo
echo "Antes de continuar, FECHE o Google Chrome."
read -p "Pressione ENTER para continuar..."

defaults delete com.google.Chrome ExtensionInstallForcelist 2>/dev/null || true

echo
echo "[OK] Politica removida."
echo "Abra o Chrome - a extensao sera desinstalada automaticamente."
