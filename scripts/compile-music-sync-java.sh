#!/usr/bin/env bash
# Compile BETA music-sync classes from Java to smali (avoids hand-written branch bugs).
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
JAVA_SRC="${ROOT}/branding/java/src"
JAVA_STUBS="${ROOT}/branding/java-stubs"
OUT_DIR="${ROOT}/build/music-sync-java"
CLASSES_DIR="${OUT_DIR}/classes"
DEX_FILE="${OUT_DIR}/classes.dex"
SMALI_OUT="${OUT_DIR}/smali"
BRANDING_SMALI="${ROOT}/branding/smali"
ANDROID_JAR="${ROOT}/android-sdk/platforms/android-30/android.jar"
D8="${ROOT}/android-sdk/build-tools/30.0.3/d8"
BAKSMALI="${ROOT}/tools/baksmali.jar"

mkdir -p "${CLASSES_DIR}" "${SMALI_OUT}" "${BRANDING_SMALI}" "${OUT_DIR}"

if [[ ! -f "${ANDROID_JAR}" ]]; then
  PREBUILT=(
    MusicSync.smali
    MusicPlayerHelper.smali
    MusicDiagLog.smali
    MusicUriSource.smali
  )
  missing=0
  for name in "${PREBUILT[@]}"; do
    if [[ ! -f "${BRANDING_SMALI}/${name}" ]]; then
      missing=1
      echo "Missing prebuilt ${BRANDING_SMALI}/${name}"
    fi
  done
  if [[ "${missing}" -eq 0 ]]; then
    echo "Android SDK not found — using prebuilt branding/smali for music sync."
    exit 0
  fi
  echo "ERROR: Android SDK missing (${ANDROID_JAR}) and prebuilt smali incomplete."
  exit 1
fi

LICENSE_CLASSES="${ROOT}/build/xems-license-java/classes"
mapfile -t JAVA_FILES < <(find "${JAVA_SRC}" -name '*.java' \
  ! -path '*/widget/XemsLicense.java' \
  ! -path '*/widget/XemsLicenseToken.java' \
  ! -path '*/widget/XemsLicenseClient.java' \
  ! -path '*/widget/XemsLocal*.java' | sort)
mapfile -t STUB_FILES < <(find "${JAVA_STUBS}" -name '*.java' | sort)

if [[ ! -d "${LICENSE_CLASSES}" ]]; then
  echo "ERROR: ${LICENSE_CLASSES} missing — run compile-xems-license-java.sh first"
  exit 1
fi

echo "Compiling ${#JAVA_FILES[@]} music-sync source files..."
rm -rf "${CLASSES_DIR}"
mkdir -p "${CLASSES_DIR}"
javac \
  --release 8 \
  -classpath "${ANDROID_JAR}:${JAVA_STUBS}:${LICENSE_CLASSES}" \
  -d "${CLASSES_DIR}" \
  "${STUB_FILES[@]}" \
  "${JAVA_FILES[@]}"

echo "Dexing..."
rm -f "${DEX_FILE}"
mkdir -p "${OUT_DIR}/dex"
mapfile -t DEX_CLASSES < <(find "${CLASSES_DIR}/com/isaigu/gymapp" \
  \( -path '*/train/utils/MusicSync*.class' \
     -o -path '*/train/utils/MasterStrengthControl.class' \
     -o -path '*/train/utils/MusicSyncBridge.class' \
     -o -path '*/train/utils/MusicPlayerEngine*.class' \
     -o -path '*/train/utils/MusicUriSource.class' \
     -o -path '*/train/utils/SoundEnvelopeMapper.class' \
     -o -path '*/train/utils/MusicAutoTune*.class' \
     -o -path '*/train/utils/MusicDiagLog.class' \
     -o -path '*/dialog/MusicPlayerHelper*.class' \
     -o -path '*/dialog/MusicDial*.class' \
     -o -path '*/dialog/MusicPlaylist*.class' \
     -o -path '*/dialog/MusicTrackLabel.class' \
     -o -path '*/dialog/ModalInfoHelper*.class' \
     -o -path '*/widget/MusicVisualizerView*.class' \
     -o -path '*/widget/MusicImpulseMeterView*.class' \
     -o -path '*/widget/XemsUi*.class' -o -path '*/widget/XemsGuard*.class' \
     -o -path '*/widget/XemsNav*.class' -o -path '*/widget/XemsLang*.class' \
     -o -path '*/widget/XemsIcon*.class' -o -path '*/widget/XemsPanel*.class' -o -path '*/widget/XemsFullscreen*.class' \) -print | sort)
if (
  cd "${CLASSES_DIR}"
  "${D8}" \
    --min-api 21 \
    --lib "${ANDROID_JAR}" \
    --output "${OUT_DIR}/dex" \
    "${DEX_CLASSES[@]#${CLASSES_DIR}/}"
); then
  mv "${OUT_DIR}/dex/classes.dex" "${DEX_FILE}"
  echo "Baksmaling..."
  rm -rf "${SMALI_OUT}"
  java -jar "${BAKSMALI}" d "${DEX_FILE}" -o "${SMALI_OUT}"
  INSTALL_SMALI=1
else
  echo "WARN: d8 failed for music-sync stack — keeping prebuilt smali in ${BRANDING_SMALI}"
  INSTALL_SMALI=0
fi

if [[ "${INSTALL_SMALI}" -eq 1 ]]; then
echo "Installing smali to branding/smali..."
# Keep an existing file when the compiler only renumbered .line directives.
ROOT="${ROOT}" SMALI_OUT="${SMALI_OUT}" BRANDING_SMALI="${BRANDING_SMALI}" python3 - << 'PY'
import os
import shutil

smali_out = os.environ["SMALI_OUT"]
branding = os.environ["BRANDING_SMALI"]

MUSIC_EXACT = {
    "MasterStrengthControl.smali",
    "MusicSyncBridge.smali",
    "MusicUriSource.smali",
    "SoundEnvelopeMapper.smali",
    "MusicDiagLog.smali",
}
MUSIC_PREFIXES = (
    "MusicSync",
    "MusicPlayerHelper",
    "MusicDial",
    "MusicPlaylist",
    "MusicTrackLabel",
    "MusicPlayerEngine",
    "ModalInfoHelper",
    "MusicAutoTune",
)
WIDGET_PREFIXES = (
    "MusicVisualizerView",
    "MusicImpulseMeterView",
    "XemsUi",
    "XemsGuard",
    "XemsNav",
    "XemsLang",
    "XemsIcon",
    "XemsPanel",
    "XemsFullscreen",
)


def strip_lines(path):
    with open(path, encoding="utf-8") as handle:
        return "".join(
            line for line in handle if not line.strip().startswith(".line ")
        )


def generated_files():
    found = []
    for dirpath, _, names in os.walk(smali_out):
        for name in names:
            if not name.endswith(".smali"):
                continue
            path = os.path.join(dirpath, name)
            rel = os.path.relpath(path, smali_out).replace("\\", "/")
            if "/widget/" in ("/" + rel) or rel.startswith("widget/"):
                if name.startswith(WIDGET_PREFIXES):
                    found.append(("widget/" + name, path))
            elif name in MUSIC_EXACT or name.startswith(MUSIC_PREFIXES):
                found.append((name, path))
    return found


generated = {}
for rel, path in generated_files():
    generated[rel] = path

for dirpath, _, names in os.walk(branding):
    for name in names:
        if not name.endswith(".smali"):
            continue
        path = os.path.join(dirpath, name)
        rel = os.path.relpath(path, branding).replace("\\", "/")
        managed = False
        if rel.startswith("widget/"):
            managed = name.startswith(WIDGET_PREFIXES)
        elif "/" not in rel:
            managed = name in MUSIC_EXACT or name.startswith(MUSIC_PREFIXES)
        if managed and rel not in generated:
            os.remove(path)
            print(f"  delete {rel}")

for rel in sorted(generated):
    src = generated[rel]
    dest = os.path.join(branding, rel)
    os.makedirs(os.path.dirname(dest), exist_ok=True)
    if os.path.isfile(dest) and strip_lines(src) == strip_lines(dest):
        print(f"  keep {rel}")
        continue
    shutil.copyfile(src, dest)
    print(f"  -> {rel}")
PY
fi

echo "Music-sync Java compile complete."
