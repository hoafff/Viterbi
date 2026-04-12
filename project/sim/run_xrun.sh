#!/usr/bin/env bash
set -e

# Resolve script location and project root
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"

cd "${PROJECT_ROOT}"

echo "[INFO] Project root : ${PROJECT_ROOT}"
echo "[INFO] Running Cadence xrun with sim/run.f"

xrun -clean -f sim/run.f

echo "[INFO] Simulation completed."