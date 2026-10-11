# Swap the project data inside a built XEMS Studio APK (cloud sessions: no Android SDK, Google Maven blocked).
# usage: python3 -I repack.py <old.apk> <export-pack.zip> <out-unsigned.apk>   — then zipalign + sign (build.sh repack)
import sys, zipfile
old, pack, out = sys.argv[1:4]
keep_assets = ("assets/dexopt/", "assets/_cl_", "assets/addons/")
with zipfile.ZipFile(old) as zo, zipfile.ZipFile(pack) as zp, zipfile.ZipFile(out, "w") as zn:
    newnames = {"assets/" + i.filename for i in zp.infolist() if not i.is_dir()}
    for i in zo.infolist():
        n = i.filename
        if n.startswith("META-INF/") and n.split("/")[-1].upper().endswith((".SF", ".RSA", ".EC", ".MF")):
            continue
        if n.startswith("assets/") and not n.startswith(keep_assets) or n in newnames:
            continue
        zn.writestr(i, zo.read(n), compress_type=i.compress_type)
    for i in zp.infolist():
        if i.is_dir():
            continue
        zi = zipfile.ZipInfo("assets/" + i.filename, date_time=(1981, 1, 1, 1, 1, 0))
        zi.external_attr = 0o644 << 16
        zn.writestr(zi, zp.read(i.filename), compress_type=zipfile.ZIP_DEFLATED)
print("ok", len(newnames), "project files")
