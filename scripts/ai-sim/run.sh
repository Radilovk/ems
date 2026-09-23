#!/usr/bin/env bash
# Offline test of the Smart Session engine (branding/java/src/com/isaigu/gymapp/ai) on the JVM.
# usage: scripts/ai-sim/run.sh [-v]   (-v prints each scenario's action log)
set -euo pipefail
D="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "${D}/../.." && pwd)"
OUT="$(mktemp -d)"; trap 'rm -rf "${OUT}"' EXIT
javac -nowarn -source 8 -target 8 -d "${OUT}" "${ROOT}"/branding/java/src/com/isaigu/gymapp/ai/Ai{Model,Screening,RestHr,Planner,HrFilter,Engine}.java "${D}/AiSim.java" 2>&1 | grep -v "Picked up\|bootstrap\|warning" || true
java -cp "${OUT}" AiSim "$@" 2>&1 | grep -v "Picked up"
