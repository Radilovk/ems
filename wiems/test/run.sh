#!/bin/sh
# Offline test of wiems/pklg_att.py: builds a synthetic PacketLogger file and checks the decoded ATT lines.
set -e
cd "$(dirname "$0")/.."
python3 -I test/make_pklg.py "${TMPDIR:-/tmp}/wiems-test.pklg"
out=$(python3 -I pklg_att.py "${TMPDIR:-/tmp}/wiems-test.pklg")
echo "$out"
for want in ">W   c64  0x0012 [6e400002-b5a3-f393-e0a9-e50e24dcca9e] 53 01 0a ff" \
            "<N   c64  0x0014 [6e400003-b5a3-f393-e0a9-e50e24dcca9e] a5 00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f 10 11 12 13 14 15 16 17 18 19 1a 1b 1c 1d 1e 1f" \
            "0x0010-0xffff 6e400001-b5a3-f393-e0a9-e50e24dcca9e" \
            ">C   c64  0x0012"; do
  echo "$out" | grep -qF -- "$want" || { echo "FAIL: missing: $want"; exit 1; }
done
echo "PASS"
