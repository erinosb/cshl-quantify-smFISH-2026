#!/usr/bin/env bash
set -euo pipefail

# Local CI runner: creates a venv, installs requirements, and builds the Jupyter Book
# Usage:
#   ./scripts/ci_local.sh        # create .venv, install, build
#   ./scripts/ci_local.sh --skip-install  # reuse existing .venv or conda env

SKIP_INSTALL=0
if [ "${1:-}" = "--skip-install" ]; then
  SKIP_INSTALL=1
fi

echo "[ci-local] Starting local CI runner"

PY=python3
if ! command -v $PY >/dev/null 2>&1; then
  echo "[ci-local] python3 not found in PATH. Please install Python 3 or run inside your conda env." >&2
  exit 1
fi

if [ $SKIP_INSTALL -eq 0 ]; then
  echo "[ci-local] Creating virtualenv .venv and installing requirements..."
  $PY -m venv .venv
  # shellcheck disable=SC1091
  . .venv/bin/activate
  pip install --upgrade pip
  pip install -r requirements.txt
else
  if [ -f ".venv/bin/activate" ]; then
    echo "[ci-local] Activating existing .venv"
    # shellcheck disable=SC1091
    . .venv/bin/activate
  else
    echo "[ci-local] Skipping install but no .venv found; continuing with current environment"
  fi
fi

export FORCE_JAVASCRIPT_ACTIONS_TO_NODE24=true
echo "[ci-local] FORCE_JAVASCRIPT_ACTIONS_TO_NODE24=$FORCE_JAVASCRIPT_ACTIONS_TO_NODE24"

echo "[ci-local] Building the book..."
jupyter-book build smFISH2026

echo "[ci-local] Build finished. Output folder: smFISH2026/_build/html"
