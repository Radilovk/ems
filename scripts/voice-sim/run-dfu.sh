#!/bin/sh
# Offline test of the module's USB update from XEMS (VoiceDfu) — needs the voice firmware built
# (sh scripts/voice/build-voice.sh: it also makes build/xtool/nrfu, the real adafruit-nrfutil for the reference frames).
set -eu
REPO=$(cd "$(dirname "$0")/../.." && pwd)
W=$REPO/build/voice-dfu
rm -rf "$W"; mkdir -p "$W/cls" "$W/zip"
unzip -q -o "$REPO/voice/xems-voice-sense-plus-ota.zip" -d "$W/zip"
# the first frames as adafruit-nrfutil builds them (START, INIT, first DATA)
"$REPO/build/xtool/nrfu/bin/python" - "$W" <<'PY'
import sys, glob
from nordicsemi.dfu.dfu_transport_serial import HciPacket, DFU_START_PACKET, DFU_INIT_PACKET, DFU_DATA_PACKET
from nordicsemi.dfu.util import int32_to_bytes, int16_to_bytes
from nordicsemi.dfu.dfu_transport import DfuTransport
w = sys.argv[1]
bin_ = open(glob.glob(w + '/zip/*.bin')[0], 'rb').read(); dat = open(glob.glob(w + '/zip/*.dat')[0], 'rb').read()
HciPacket.sequence_number = 0
f = [x for x in int32_to_bytes(DFU_START_PACKET)] + [x for x in int32_to_bytes(4)] \
    + [x for x in DfuTransport.create_image_size_packet(0, 0, len(bin_))]
out = [HciPacket(f)]
f = [x for x in int32_to_bytes(DFU_INIT_PACKET)] + [chr(x) for x in dat] + [x for x in int16_to_bytes(0)]
out.append(HciPacket(f))
f = [x for x in int32_to_bytes(DFU_DATA_PACKET)] + [chr(x) for x in bin_[0:512]]
out.append(HciPacket(f))
open(w + '/ref.hex', 'w').write('\n'.join(bytes(p.data).hex() for p in out) + '\n')
PY
javac -d "$W/cls" "$REPO/voice/xems-app/java/com/isaigu/gymapp/wearable/voice/VoiceDfu.java" "$REPO/scripts/voice-sim/DfuSim.java"
java -cp "$W/cls" DfuSim "$W"/zip/*.bin "$W"/zip/*.dat "$W/ref.hex"
