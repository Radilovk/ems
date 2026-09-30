#!/usr/bin/env bash
# Offline test of the automatic mode (AutoCatalog / AutoPlanner / AutoLimits / AutoEngine / AutoTemplates) on the JVM.
# usage: scripts/ai-sim/run-auto.sh [-v]
set -euo pipefail
D="$(cd "$(dirname "$0")" && pwd)"; ROOT="$(cd "${D}/../.." && pwd)"
OUT="$(mktemp -d)"; trap 'rm -rf "${OUT}"' EXIT
A="${ROOT}/branding/java/src/com/isaigu/gymapp/ai"
javac -nowarn -source 8 -target 8 -d "${OUT}" "${A}"/Ai{Model,Screening,Planner,Personal}.java "${D}/stub/com/isaigu/gymapp/ai/AiText.java" "${A}"/Auto{Model,Catalog,Limits,Planner,Engine,Cues,TemplateData,Templates}.java "${D}/AutoSim.java" "${D}/TemplateSim.java" 2>&1 | grep -v "Picked up\|bootstrap\|warning" || true
java -Dstdout.encoding=UTF-8 -cp "${OUT}" AutoSim "$@" 2>&1 | grep -v "Picked up"
java -Dstdout.encoding=UTF-8 -cp "${OUT}" TemplateSim "$@" 2>&1 | grep -v "Picked up"
# The Smart Session's exercises (AiExercises over the real AiEngine).
OUT2="$(mktemp -d)"; trap 'rm -rf "${OUT}" "${OUT2}"' EXIT
javac -nowarn -source 8 -target 8 -d "${OUT2}" "${A}"/Ai{Model,Screening,RestHr,Planner,HrFilter,Engine,Energy,Personal,Exercises}.java "${A}/Workout.java" "${D}/stub/com/isaigu/gymapp/ai/AiText.java" "${D}/stub/com/isaigu/gymapp/train/utils/ChannelStrengthScale.java" "${A}"/Auto{Model,Catalog,Limits,Planner,Engine,Cues,TemplateData,Templates}.java "${D}/AiExSim.java" 2>&1 | grep -v "Picked up\|bootstrap\|warning" || true
java -Dstdout.encoding=UTF-8 -cp "${OUT2}" AiExSim "$@" 2>&1 | grep -v "Picked up"
# PathNorm (the tablet's SVG → M/L/C/Z for downloaded exercises) against scripts/exercise-paths.py fixtures.
OUT3="$(mktemp -d)"; trap 'rm -rf "${OUT}" "${OUT2}" "${OUT3}"' EXIT
javac -nowarn -d "${OUT3}" "${A}/PathNorm.java" "${D}/PathNormSim.java" 2>&1 | grep -v "Picked up" || true
java -Dstdout.encoding=UTF-8 -cp "${OUT3}" PathNormSim "${D}/pathnorm" 2>&1 | grep -v "Picked up"
