#!/usr/bin/env bash
# Compile the wearable bridge + band UI and the Smart Session (ai package) from Java to smali.
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
JAVA_SRC="${ROOT}/branding/java/src"
JAVA_STUBS="${ROOT}/branding/java-stubs"
OUT_DIR="${ROOT}/build/wearable-java"
CLASSES_DIR="${OUT_DIR}/classes"
DEX_FILE="${OUT_DIR}/classes.dex"
SMALI_OUT="${OUT_DIR}/smali"
BRANDING_SMALI="${ROOT}/branding/smali/wearable"
BRANDING_AI_SMALI="${ROOT}/branding/smali/ai"
ANDROID_JAR="${ROOT}/android-sdk/platforms/android-30/android.jar"
D8="${ROOT}/android-sdk/build-tools/30.0.3/d8"
BAKSMALI="${ROOT}/tools/baksmali.jar"
INTERVAL_CLASSES="${ROOT}/build/interval-timer-java/classes"
MUSIC_CLASSES="${ROOT}/build/music-sync-java/classes"

WEARABLE_JAVA=(
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/WearableBlePermissions.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/WearableBleDiagLog.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/WearableConfig.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/EmsBleCoexist.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/NotifyWearableBridge.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/WearableSyncHelper.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/WearableUi.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/WearableLivePanel.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/WearableBandPicker.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/WearableSettingsSection.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/HrGuardCore.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/HrGuard.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/NotifyHaForegroundService.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandProto.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandFraming.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandCrypto.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandBleClient.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandGattCallback.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthTimeoutTask.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandAuthStartRunnable.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandRealtimeStartRunnable.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandWriteQueue.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandKeepaliveTask.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandReconnectTask.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandPostAuthInit.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandAckTimeoutTask.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandMtuFallbackTask.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/HrHistory.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/HrChartView.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/WearableHrPanel.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/BandRemote.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandRemote.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandAppLink.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/BandAppInstall.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBand.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandMessages.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandStatus.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppFrames.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppPort.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppTask.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandRfcommPort.java"
  "${JAVA_SRC}/com/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient.java"
  "${JAVA_SRC}/com/isaigu/gymapp/ai/AiModel.java"
  "${JAVA_SRC}/com/isaigu/gymapp/ai/AiScreening.java"
  "${JAVA_SRC}/com/isaigu/gymapp/ai/AiRestHr.java"
  "${JAVA_SRC}/com/isaigu/gymapp/ai/AiPlanner.java"
  "${JAVA_SRC}/com/isaigu/gymapp/ai/AiHrFilter.java"
  "${JAVA_SRC}/com/isaigu/gymapp/ai/AiEngine.java"
  "${JAVA_SRC}/com/isaigu/gymapp/ai/AiEnergy.java"
  "${JAVA_SRC}/com/isaigu/gymapp/ai/AiRamp.java"
  "${JAVA_SRC}/com/isaigu/gymapp/ai/AiText.java"
  "${JAVA_SRC}/com/isaigu/gymapp/ai/AiViews.java"
  "${JAVA_SRC}/com/isaigu/gymapp/ai/AiUi.java"
  "${JAVA_SRC}/com/isaigu/gymapp/ai/AiSession.java"
)

mkdir -p "${CLASSES_DIR}" "${SMALI_OUT}" "${BRANDING_SMALI}" "${OUT_DIR}"

if [[ ! -f "${ANDROID_JAR}" ]]; then
  if [[ -f "${BRANDING_SMALI}/WearableSyncHelper.smali" ]]; then
    echo "Android SDK not found — using prebuilt wearable smali"
    exit 0
  fi
  echo "ERROR: Android SDK missing and no prebuilt wearable smali"
  exit 1
fi

bash "${ROOT}/scripts/compile-music-sync-java.sh"
bash "${ROOT}/scripts/compile-interval-timer-java.sh"

mapfile -t STUB_FILES < <(find "${JAVA_STUBS}" -name '*.java' | sort)

echo "Compiling wearable bridge + sync UI classes..."
rm -rf "${CLASSES_DIR}"
mkdir -p "${CLASSES_DIR}"
javac \
  --release 8 \
  -classpath "${ANDROID_JAR}:${JAVA_STUBS}:${MUSIC_CLASSES}:${INTERVAL_CLASSES}" \
  -d "${CLASSES_DIR}" \
  "${STUB_FILES[@]}" \
  "${WEARABLE_JAVA[@]}"

echo "Dexing..."
rm -f "${DEX_FILE}"
mkdir -p "${OUT_DIR}/dex"
mapfile -t DEX_CLASSES < <(find "${CLASSES_DIR}/com/isaigu/gymapp/wearable" "${CLASSES_DIR}/com/isaigu/gymapp/ai" -name '*.class' | sort)
(
  cd "${CLASSES_DIR}"
  "${D8}" \
    --min-api 21 \
    --lib "${ANDROID_JAR}" \
    --output "${OUT_DIR}/dex" \
    "${DEX_CLASSES[@]#${CLASSES_DIR}/}"
)
mv "${OUT_DIR}/dex/classes.dex" "${DEX_FILE}"

echo "Baksmaling..."
rm -rf "${SMALI_OUT}"
java -jar "${BAKSMALI}" d "${DEX_FILE}" -o "${SMALI_OUT}"

echo "Installing smali..."
rm -rf "${BRANDING_SMALI}"
mkdir -p "${BRANDING_SMALI}"
while IFS= read -r -d '' file; do
  rel="${file#${SMALI_OUT}/com/isaigu/gymapp/wearable/}"
  dest="${BRANDING_SMALI}/${rel}"
  mkdir -p "$(dirname "${dest}")"
  cp "${file}" "${dest}"
  echo "  -> wearable/${rel}"
done < <(find "${SMALI_OUT}/com/isaigu/gymapp/wearable" -name '*.smali' -print0)

echo "Installing ai smali..."
rm -rf "${BRANDING_AI_SMALI}"
mkdir -p "${BRANDING_AI_SMALI}"
cp -r "${SMALI_OUT}/com/isaigu/gymapp/ai/." "${BRANDING_AI_SMALI}/"

if [[ ! -f "${BRANDING_SMALI}/WearableSyncHelper.smali" ]]; then
  echo "ERROR: WearableSyncHelper.smali not produced"
  exit 1
fi

echo "Wearable bridge Java compile complete."
