#!/bin/sh
# XEMS voice firmware → voice/xems-voice-sense.uf2 (XIAO nRF52840 Sense) and voice/xems-voice-sense-plus.uf2
# (Sense Plus). Flash: double-tap RESET on the XIAO, drop the file on the drive that appears. The same arduino-cli and
# Seeeduino:nrf52 1.1.13 as the XBody bridge (build/xtool/arduino). docs/xems-voice.md.
set -eu
REPO=$(cd "$(dirname "$0")/../.." && pwd)
T=$REPO/build/xtool
mkdir -p "$T/fakebin" "$REPO/build/xvoice"
export ARDUINO_DIRECTORIES_DATA=$T/arduino ARDUINO_DIRECTORIES_DOWNLOADS=$T/arduino/dl ARDUINO_DIRECTORIES_USER=$T/arduino/user
URL=https://files.seeedstudio.com/arduino/package_seeeduino_boards_index.json
if [ ! -x "$T/arduino-cli" ]; then
	curl -fsSL https://downloads.arduino.cc/arduino-cli/arduino-cli_latest_Linux_64bit.tar.gz | tar xzf - -C "$T" arduino-cli
fi
if [ ! -d "$T/arduino/packages/Seeeduino/hardware/nrf52/1.1.13" ]; then
	"$T/arduino-cli" core update-index --additional-urls "$URL"
	"$T/arduino-cli" core install Seeeduino:nrf52@1.1.13 --additional-urls "$URL"
fi
# The core's post-build step wants adafruit-nrfutil; a stub there, the real one (venv) makes the Bluetooth update zips
printf '#!/bin/sh\nexit 0\n' > "$T/fakebin/adafruit-nrfutil"; chmod +x "$T/fakebin/adafruit-nrfutil"
if [ ! -x "$T/nrfu/bin/adafruit-nrfutil" ]; then
	python3 -m venv "$T/nrfu" && "$T/nrfu/bin/pip" install -q adafruit-nrfutil
fi
for B in Sense:sense SensePlus:sense-plus; do
	FQBN=Seeeduino:nrf52:xiaonRF52840${B%%:*}
	OUT=$REPO/build/xvoice/${B#*:}
	PATH=$T/fakebin:$PATH "$T/arduino-cli" compile --fqbn "$FQBN" --output-dir "$OUT" "$REPO/voice/xems_voice" \
		| grep -E 'Sketch uses|Global'
	python3 "$T/arduino/packages/Seeeduino/hardware/nrf52/1.1.13/tools/uf2conv/uf2conv.py" -f 0xADA52840 -c \
		-o "$REPO/voice/xems-voice-${B#*:}.uf2" "$OUT/xems_voice.ino.hex" 2>/dev/null | tail -1
	# over Bluetooth from a phone (nRF Device Firmware Update / nRF Connect): S140 7.3.0 = sd-req 0x0123
	"$T/nrfu/bin/adafruit-nrfutil" dfu genpkg --dev-type 0x0052 --sd-req 0x0123 \
		--application "$OUT/xems_voice.ino.hex" "$REPO/voice/xems-voice-${B#*:}-ota.zip" >/dev/null
	echo "OTA zip: voice/xems-voice-${B#*:}-ota.zip"
done
