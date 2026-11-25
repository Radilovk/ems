#!/usr/bin/env python3
"""Read a listener recording: `python3 analyze.py <code>` (fetches /v1/vrlog/<code>) or `python3 analyze.py file.gz`.
Prints callers, methods, and for hapticEventDot (what Thrill of the Fight sends) the events by body position with the
lit motors as a grid: vest faces are 4 columns x 5 rows (index = row*4 + col), hands = one uniform level."""
import collections, gzip, json, sys, urllib.request

BASE = "https://license.biocode-bg.com/v1/vrlog"


def get(url):
    return urllib.request.urlopen(urllib.request.Request(url, headers={"User-Agent": "curl/8"}))   # the edge refuses urllib's


def load(arg):
    if arg.endswith(".gz"):
        raw = open(arg, "rb").read()
    else:
        meta = json.load(get(f"{BASE}/{arg}"))
        raw = b"".join(get(f"{BASE}/{arg}/{i}").read() for i in range(meta["parts"]))
    return [json.loads(l) for l in gzip.decompress(raw).decode("utf-8").splitlines() if l.strip()]


def grid(levels, cols=4):
    rows = [levels[i:i + cols] for i in range(0, len(levels), cols)]
    return " | ".join(" ".join(f"{v:3d}" for v in r) for r in rows)


def main():
    L = load(sys.argv[1])
    print(L[0].get("summary", {}))
    ev = [r for r in L if r.get("m") == "hapticEventDot"]
    by = collections.Counter(r["a"][2] for r in ev)
    print("events by position:", dict(by))
    for r in ev:
        pos = r["a"][2]
        if pos.startswith("Hand"):
            continue
        lv = list(bytes.fromhex(r["a"][3]))
        print(f'{r["t"]/1000:8.1f}s {pos:10s} {grid(lv)}')
    hands = [list(bytes.fromhex(r["a"][3]))[0] for r in ev if r["a"][2].startswith("Hand")]
    if hands:
        print("hand events:", len(hands), "level max", max(hands))


if __name__ == "__main__":
    main()
