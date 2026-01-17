#!/bin/bash
# GNU Android Optimizer - By MurilooPr

BASE_DIR=$(dirname "$(dirname "$(realpath "$0")")")
BIN_CORE="$BASE_DIR/bin/ao_engine"

# Proteção contra desativação do Play Services
is_critical() {
    local pkg=$1
    case $pkg in
        "com.google.android.gms"|"com.android.vending"|"com.android.systemui"|"com.android.launcher"*)
            return 0 ;;
        *) return 1 ;;
    esac
}

# Módulo Android1clear do MurilooPr
android1clear() {
    echo -e "\n[*] Ativando Android1clear: Hibernando apps em segundo plano..."
    # Lista apps de terceiro
    apps=$(pm list packages -3 | cut -d':' -f2)
    
    for pkg in $apps; do
        if ! is_critical "$pkg"; then
            # Pega o app que está com foco na tela agora
            current=$(dumpsys window | grep -E 'mCurrentFocus' | grep "$pkg")
            
            if [ -z "$current" ]; then
                echo " [>] Otimizando RAM: $pkg"
                am force-stop "$pkg"
                cmd usage-stats set-standby-bucket "$pkg" restricted
            fi
        fi
    done
}

# Menu de Execução
clear
echo "=========================================="
echo "      GNU ANDROID OPTIMIZER (GNU AO)      "
echo "        Desenvolvido por: MurilooPr       "
echo "=========================================="

if [ ! -f "$BIN_CORE" ]; then
    echo "[!] Erro: Binário C++ não encontrado. Compile primeiro!"
    exit 1
fi

echo "[1] Rodar Android1clear (Liberação de RAM)"
echo "[2] Rodar System Boost (Trim + Logs + DEX)"
echo "[3] Otimização Completa (Recomendado)"
echo "[4] Sair"
read -p "Selecione: " opt

case $opt in
    1) android1clear ;;
    2) $BIN_CORE --low-level; $BIN_CORE --art-opt ;;
    3) android1clear; $BIN_CORE --low-level; $BIN_CORE --art-opt ;;
    *) exit ;;
esac

echo -e "\n=========================================="
echo "   CONCLUÍDO! Seu Android está otimizado. "
echo "=========================================="
