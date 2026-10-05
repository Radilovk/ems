#!/usr/bin/env python3
"""No request ever leaves the tablet for the vendor's server (xemsplus.com) or any other host through the vendor's code.

- OKHttpUtils (the only place that opens a connection: OkHttpClient.newCall): every public request method answers
  "offline" to its callback at once (XemsLocalApi.offline) and returns; downloadFile just returns.
- com.danikula.videocache.HttpUrlSource.openConnection (the video cache's own HttpURLConnection): throws IOException.
- Glide's HttpUrlFetcher connection factory (remote pictures): throws IOException.
- com.maning.updatelibrary DownloadFileUtils.startDonwload (the vendor's app-update download): returns.

ApiMgr's customers / programs / history are already answered by the tablet (apply-local-mode.py); this closes the rest
(login, user submit, logo, video list, update checks …). Runs after apply-local-mode.py. Own code (licence, band, scale)
does not use OKHttpUtils.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
DECOMPILED = ROOT / "build" / "decompiled"
OKHTTP = DECOMPILED / "smali_classes2/com/isaigu/gymapp/utils/OKHttpUtils.smali"
VIDEO_SRC = DECOMPILED / "smali/com/danikula/videocache/HttpUrlSource.smali"
UPDATE_DL = DECOMPILED / "smali_classes5/com/maning/updatelibrary/http/DownloadFileUtils.smali"
GLIDE_HTTP = DECOMPILED / "smali/com/bumptech/glide/load/data/HttpUrlFetcher$DefaultHttpUrlConnectionFactory.smali"
LOCAL_API = "Lcom/isaigu/gymapp/widget/XemsLocalApi;"
MARKER = "# xems: no vendor network"
CB = "Lcom/isaigu/gymapp/utils/OKHttpUtils$HttpResponseCallback;"
METHOD = re.compile(
    r"^\.method public static (httpGetJson|httpPostJson|httpRequest|downloadFile|uploadFile)\((.*?)\)V$", re.M)
TOKEN = re.compile(r"J|D|L[^;]+;|\[?[ZBSCIF]")


def patch_okhttp() -> None:
    text = OKHTTP.read_text(encoding="utf-8")
    if MARKER in text:
        print("OKHttpUtils: already offline")
        return
    out, pos, count = [], 0, 0
    for m in METHOD.finditer(text):
        end = text.index(".end method", m.end())
        body = text[m.end():end]
        first_line = body.index("    .line ")
        params = TOKEN.findall(m.group(2))
        regs = sum(2 if t in ("J", "D") else 1 for t in params)
        if params and params[-1] == CB:
            jump = (f"    {MARKER}\n"
                    f"    invoke-static {{p{regs - 1}}}, {LOCAL_API}->offline({CB})V\n\n"
                    f"    return-void\n\n")
        else:
            jump = f"    {MARKER}\n    return-void\n\n"
        out.append(text[pos:m.end()] + body[:first_line] + jump + body[first_line:])
        pos = end
        count += 1
    out.append(text[pos:])
    if count != 9:
        raise SystemExit(f"OKHttpUtils: expected 9 request methods, patched {count}")
    OKHTTP.write_text("".join(out), encoding="utf-8")
    print(f"OKHttpUtils: {count} request methods answer offline")


def patch_throwing(path: Path, head: str, label: str) -> None:
    text = path.read_text(encoding="utf-8")
    if MARKER in text:
        print(f"{label}: already refused")
        return
    start = text.index(head)
    end = text.index(".end method", start)
    body = text[start:end]
    first_line = body.index("    .line ")
    jump = (f"    {MARKER}\n"
            f"    invoke-static {{}}, {LOCAL_API}->denied()Ljava/io/IOException;\n\n"
            f"    move-result-object v0\n\n"
            f"    throw v0\n\n")
    text = text[:start] + body[:first_line] + jump + body[first_line:] + text[end:]
    path.write_text(text, encoding="utf-8")
    print(f"{label}: refused")


def patch_returning(path: Path, head: str, label: str) -> None:
    text = path.read_text(encoding="utf-8")
    if MARKER in text:
        print(f"{label}: already refused")
        return
    start = text.index(head)
    end = text.index(".end method", start)
    body = text[start:end]
    first_line = body.index("    .line ")
    body = body[:first_line] + f"    {MARKER}\n    return-void\n\n" + body[first_line:]
    path.write_text(text[:start] + body + text[end:], encoding="utf-8")
    print(f"{label}: refused")


def main() -> int:
    for p in (OKHTTP, VIDEO_SRC, UPDATE_DL, GLIDE_HTTP):
        if not p.exists():
            print(f"ERROR: missing {p}", file=sys.stderr)
            return 1
    patch_okhttp()
    patch_throwing(VIDEO_SRC, ".method private openConnection(JI)Ljava/net/HttpURLConnection;",
                   "HttpUrlSource.openConnection")
    patch_throwing(GLIDE_HTTP, ".method public build(Ljava/net/URL;)Ljava/net/HttpURLConnection;",
                   "Glide connection factory")
    patch_returning(UPDATE_DL, ".method private startDonwload()V", "DownloadFileUtils.startDonwload")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
