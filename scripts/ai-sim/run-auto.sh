#!/usr/bin/env bash
# Offline test of the automatic mode (AutoCatalog / AutoPlanner / AutoLimits / AutoEngine) on the JVM.
# usage: scripts/ai-sim/run-auto.sh [-v]
set -euo pipefail
D="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "${D}/../.." && pwd)"
OUT="$(mktemp -d)"; trap 'rm -rf "${OUT}"' EXIT
A="${ROOT}/branding/java/src/com/isaigu/gymapp/ai"
javac -nowarn -source 8 -target 8 -d "${OUT}" "${A}"/Ai{Model,Screening,Planner,Personal}.java "${D}/stub/com/isaigu/gymapp/ai/AiText.java" "${A}"/Auto{Model,Catalog,Limits,Planner,Engine,Cues}.java "${D}/AutoSim.java" 2>&1 | grep -v "Picked up\|bootstrap\|warning" || true
java -Dstdout.encoding=UTF-8 -cp "${OUT}" AutoSim "$@" 2>&1 | grep -v "Picked up"
