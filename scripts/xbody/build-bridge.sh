#!/bin/sh
# XIAO nRF52840 BLE bridge firmware → xbody/bridge/xems-bridge.uf2 (double-tap RESET on the XIAO, drop the file on
# the XIAO… drive that appears). arduino-cli + Seeeduino:nrf52 1.1.13 go to build/xtool/arduino.
set -eu
REPO=$(cd "$(dirname "$0")/../.." && pwd)
T=$REPO/build/xtool
mkdir -p "$T/fakebin" "$REPO/build/xbridge"
export ARDUINO_DIRECTORIES_DATA=$T/arduino ARDUINO_DIRECTORIES_DOWNLOADS=$T/arduino/dl ARDUINO_DIRECTORIES_USER=$T/arduino/user
URL=https://files.seeedstudio.com/arduino/package_seeeduino_boards_index.json
if [ ! -x "$T/arduino-cli" ]; then
	curl -fsSL https://downloads.arduino.cc/arduino-cli/arduino-cli_latest_Linux_64bit.tar.gz | tar xzf - -C "$T" arduino-cli
fi
if [ ! -d "$T/arduino/packages/Seeeduino/hardware/nrf52/1.1.13" ]; then
	"$T/arduino-cli" core update-index --additional-urls "$URL"
	"$T/arduino-cli" core install Seeeduino:nrf52@1.1.13 --additional-urls "$URL"
fi
# The core's post-build step wants adafruit-nrfutil (DFU zip, does not build on new Pythons); only the .hex is used.
printf '#!/bin/sh\nexit 0\n' > "$T/fakebin/adafruit-nrfutil"; chmod +x "$T/fakebin/adafruit-nrfutil"
# 4 links × 11 client characteristics = 44 > the core's 40: raise the cap (4 × 5 services = 20 is its limit exactly).
sed -i 's/^#define CFG_GATT_MAX_CLIENT_CHARS .*/#define CFG_GATT_MAX_CLIENT_CHARS        48/' \
	"$T/arduino/packages/Seeeduino/hardware/nrf52/1.1.13/libraries/Bluefruit52Lib/src/BLEGatt.h"
PATH=$T/fakebin:$PATH "$T/arduino-cli" compile --fqbn Seeeduino:nrf52:xiaonRF52840 \
	--output-dir "$REPO/build/xbridge" "$REPO/xbody/bridge/xems_bridge" | grep -E 'Sketch uses|Global'
python3 "$T/arduino/packages/Seeeduino/hardware/nrf52/1.1.13/tools/uf2conv/uf2conv.py" -f 0xADA52840 -c \
	-o "$REPO/xbody/bridge/xems-bridge.uf2" "$REPO/build/xbridge/xems_bridge.ino.hex" | tail -1
# The unit carries the same firmware and its version: the panel updates an older bridge by itself (DFU + xems-uf2).
B=$REPO/xbody/overlay/opt/xems/bridge
mkdir -p "$B"
cp "$REPO/xbody/bridge/xems-bridge.uf2" "$B/xems-bridge.uf2"
sed -n 's/^#define BRIDGE_VER "\([0-9]*\)".*/\1/p' "$REPO/xbody/bridge/xems_bridge/xems_bridge.ino" > "$B/VERSION"
echo "build-bridge: firmware v$(cat "$B/VERSION") → $B"
