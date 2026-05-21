#!/usr/bin/env bash
set -euo pipefail

# ============================================================
#  php-jay VS Code Extension Build & Install Script
# ============================================================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
NC='\033[0m' # No Color

log()  { echo -e "${CYAN}[php-jay]${NC} $*"; }
ok()   { echo -e "${GREEN}[  OK  ]${NC} $*"; }
err()  { echo -e "${RED}[ ERROR]${NC} $*"; }

# -------- parse args --------
DO_INSTALL=true
CLEAN_OLD=false

usage() {
    cat <<EOF
Usage: ./build.sh [OPTIONS]

Options:
  -p, --package-only   Only create .vsix, skip install
  -c, --clean          Remove old .vsix files before packaging
  -h, --help           Show this help
EOF
    exit 0
}

while [[ $# -gt 0 ]]; do
    case "$1" in
        -p|--package-only) DO_INSTALL=false ;;
        -c|--clean)        CLEAN_OLD=true ;;
        -h|--help)         usage ;;
        *) err "Unknown option: $1"; usage ;;
    esac
    shift
done

# -------- pre-checks --------
if ! command -v vsce &>/dev/null; then
    err "'vsce' not found. Install it with: npm install -g @vscode/vsce"
    exit 1
fi

if ! command -v code &>/dev/null; then
    err "'code' CLI not found. Make sure VS Code is in your PATH."
    exit 1
fi

# -------- version --------
VERSION=$(node -pe "require('./package.json').version")
NAME=$(node -pe "require('./package.json').name")
VSIX="${NAME}-${VERSION}.vsix"

log "Project : ${NAME}"
log "Version : ${VERSION}"

# -------- clean old --------
if $CLEAN_OLD; then
    log "Cleaning old .vsix files..."
    rm -f ./*.vsix
    ok "Cleaned."
fi

# -------- package --------
log "Packaging..."
if vsce package; then
    ok "Packaged → ${VSIX}"
else
    err "Packaging failed."
    exit 1
fi

# -------- install --------
if $DO_INSTALL; then
    log "Installing extension locally..."
    if code --install-extension "${VSIX}" --force; then
        ok "Installed! Reload VS Code windows to apply changes."
    else
        err "Install failed."
        exit 1
    fi
fi

ok "Done!"
