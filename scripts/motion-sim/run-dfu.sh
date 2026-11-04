#!/bin/sh
# Offline test of the XEMS Motion app's USB loader (motion/app/src/bg/xems/motion/Dfu.java) against a simulated
# Adafruit nRF52 bootloader, for both packages it sends: our firmware (application, mode 4) and Seeed's SoftDevice
# S140 7.3.0 + bootloader 0.6.2 (mode 3, for boards without the SoftDevice). The first frames must be byte-equal to
# adafruit-nrfutil's own. Needs sh scripts/motion/build-motion.sh (firmware zips + build/xtool/nrfu).
set -eu
REPO=$(cd "$(dirname "$0")/../.." && pwd)
W=$REPO/build/motion-dfu
CORE=$REPO/build/xtool/arduino/packages/Seeeduino/hardware/nrf52/1.1.13
rm -rf "$W"; mkdir -p "$W/cls" "$W/app" "$W/sdbl"
unzip -q -o "$REPO/motion/xems-motion-sense-ota.zip" -d "$W/app"
unzip -q -o "$CORE/bootloader/Seeed_XIAO_nRF52840_Sense/Seeed_XIAO_nRF52840_Sense_bootloader-0.6.2_s140_7.3.0.zip" -d "$W/sdbl"
"$REPO/build/xtool/nrfu/bin/python" - "$W" <<'PY'
import sys, glob, json
from nordicsemi.dfu.dfu_transport_serial import HciPacket, DFU_START_PACKET, DFU_INIT_PACKET, DFU_DATA_PACKET
from nordicsemi.dfu.util import int32_to_bytes, int16_to_bytes
from nordicsemi.dfu.dfu_transport import DfuTransport
w = sys.argv[1]
def ref(d, mode, sd, bl, app, out):
    bin_ = open(glob.glob(d + '/*.bin')[0], 'rb').read(); dat = open(glob.glob(d + '/*.dat')[0], 'rb').read()
    HciPacket.sequence_number = 0
    f = [x for x in int32_to_bytes(DFU_START_PACKET)] + [x for x in int32_to_bytes(mode)] + [x for x in DfuTransport.create_image_size_packet(sd, bl, app)]
    p = [HciPacket(f)]
    p.append(HciPacket([x for x in int32_to_bytes(DFU_INIT_PACKET)] + [chr(x) for x in dat] + [x for x in int16_to_bytes(0)]))
    p.append(HciPacket([x for x in int32_to_bytes(DFU_DATA_PACKET)] + [chr(x) for x in bin_[0:512]]))
    open(out, 'w').write('\n'.join(bytes(x.data).hex() for x in p) + '\n')
app = glob.glob(w + '/app/*.bin')[0]
import os
ref(w + '/app', 4, 0, 0, os.path.getsize(app), w + '/ref-app.hex')
m = json.load(open(w + '/sdbl/manifest.json'))['manifest']['softdevice_bootloader']
ref(w + '/sdbl', 3, m['sd_size'], m['bl_size'], 0, w + '/ref-sdbl.hex')
open(w + '/sizes', 'w').write('%d %d' % (m['sd_size'], m['bl_size']))
PY
javac -d "$W/cls" "$REPO/motion/app/src/bg/xems/motion/Dfu.java" "$REPO/scripts/motion-sim/MotionDfuSim.java"
echo "application:"; java -cp "$W/cls" MotionDfuSim "$W"/app/*.bin "$W"/app/*.dat "$W/ref-app.hex"
echo "SoftDevice + bootloader:"; java -cp "$W/cls" MotionDfuSim "$W"/sdbl/*.bin "$W"/sdbl/*.dat "$W/ref-sdbl.hex" $(cat "$W/sizes")
