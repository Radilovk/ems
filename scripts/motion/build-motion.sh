#!/bin/sh
# XEMS Motion sensor firmware → motion/xems-motion-sense.uf2 and motion/xems-motion-sense-plus.uf2 (XIAO nRF52840
# Sense / Sense Plus) + Bluetooth update zips. Flash: double-tap RESET on the XIAO, drop the .uf2 on the drive.
# Same arduino-cli and Seeeduino:nrf52 1.1.13 as the voice module (build/xtool/arduino). docs/xems-motion.md.
set -eu
REPO=$(cd "$(dirname "$0")/../.." && pwd)
T=$REPO/build/xtool
mkdir -p "$T/fakebin" "$REPO/build/xmotion"
export ARDUINO_DIRECTORIES_DATA=$T/arduino ARDUINO_DIRECTORIES_DOWNLOADS=$T/arduino/dl ARDUINO_DIRECTORIES_USER=$T/arduino/user
URL=https://files.seeedstudio.com/arduino/package_seeeduino_boards_index.json
if [ ! -x "$T/arduino-cli" ]; then
	curl -fsSL https://downloads.arduino.cc/arduino-cli/arduino-cli_latest_Linux_64bit.tar.gz | tar xzf - -C "$T" arduino-cli
fi
if [ ! -d "$T/arduino/packages/Seeeduino/hardware/nrf52/1.1.13" ]; then
	"$T/arduino-cli" core update-index --additional-urls "$URL"
	"$T/arduino-cli" core install Seeeduino:nrf52@1.1.13 --additional-urls "$URL"
fi
# the Bluetooth clock from the chip's own RC oscillator, not the 32 kHz crystal: works on every board (the SoftDevice
# calibrates it); a crystal that does not start would freeze Bluetooth at start (owner's sensors, 2026-11-04)
for V in Seeed_XIAO_nRF52840_Sense Seeed_XIAO_nRF52840_Sense_Plus; do
	sed -i 's|^#define USE_LFXO |//#define USE_LFXO |; s|^//#define USE_LFRC |#define USE_LFRC |' \
		"$T/arduino/packages/Seeeduino/hardware/nrf52/1.1.13/variants/$V/variant.h"
done
printf '#!/bin/sh\nexit 0\n' > "$T/fakebin/adafruit-nrfutil"; chmod +x "$T/fakebin/adafruit-nrfutil"
if [ ! -x "$T/nrfu/bin/adafruit-nrfutil" ]; then
	python3 -m venv "$T/nrfu" && "$T/nrfu/bin/pip" install -q adafruit-nrfutil
fi
for B in Sense:sense SensePlus:sense-plus; do
	FQBN=Seeeduino:nrf52:xiaonRF52840${B%%:*}
	OUT=$REPO/build/xmotion/${B#*:}
	PATH=$T/fakebin:$PATH "$T/arduino-cli" compile --fqbn "$FQBN" --output-dir "$OUT" "$REPO/motion/xems_motion" \
		| grep -E 'Sketch uses|Global'
	python3 "$T/arduino/packages/Seeeduino/hardware/nrf52/1.1.13/tools/uf2conv/uf2conv.py" -f 0xADA52840 -c \
		-o "$REPO/motion/xems-motion-${B#*:}.uf2" "$OUT/xems_motion.ino.hex" 2>/dev/null | tail -1
	"$T/nrfu/bin/adafruit-nrfutil" dfu genpkg --dev-type 0x0052 --sd-req 0x0123 \
		--application "$OUT/xems_motion.ino.hex" "$REPO/motion/xems-motion-${B#*:}-ota.zip" >/dev/null
	echo "OTA zip: motion/xems-motion-${B#*:}-ota.zip"
done
