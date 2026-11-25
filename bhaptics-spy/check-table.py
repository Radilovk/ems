#!/usr/bin/env python3
"""Guards Sig.TABLE against the vendor's published interface: reads `javap` of IBhapticsService from the public
tact-android aar (path as argv[1]) and compares method order, argument kinds and return kinds."""
import re, subprocess, sys, zipfile, tempfile, pathlib
aar, src = sys.argv[1], pathlib.Path(__file__).parent / "src/com/xems/bhspy/Sig.java"
d = tempfile.mkdtemp()
zipfile.ZipFile(aar).extract("classes.jar", d)
out = subprocess.run(["javap", "-cp", f"{d}/classes.jar", "com.bhaptics.service.IBhapticsService"],
                     capture_output=True, text=True).stdout
K = {"java.lang.String": "S", "int": "I", "float": "F", "boolean": "Z", "byte[]": "B", "int[]": "i", "float[]": "f"}
R = {"void": "V", "boolean": "Z", "int": "I", "byte[]": "b", "java.util.List<java.lang.String>": "L"}
want = []
for m in re.finditer(r"public abstract (\S+) (\w+)\(([^)]*)\)", out):
    ret, name, args = m.groups()
    want.append(f"{name}:{''.join(K[a.strip()] for a in args.split(',') if a.strip())}:{R[ret]}")
have = re.findall(r'"([A-Za-z0-9]+:[A-Za-z]*:[A-Za-z])"', src.read_text())
if want != have:
    for i, (w, h) in enumerate(zip(want, have)):
        if w != h:
            print("MISMATCH", i, "vendor", w, "ours", h)
    print("lengths", len(want), len(have))
    sys.exit(1)
print("table matches the vendor's interface:", len(want), "methods")
