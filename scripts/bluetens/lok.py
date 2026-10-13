#!/usr/bin/env python3
"""Bluetens .lok program format — parse, build, time estimate (reference for a future Java port).

Read from the Bluetens app (com.bluetens, 7.0.105, Ionic/JS: UltraCreation "loki" TFile/TSection/TBlock/TToken).
Format is ASCII, one letter + digits per token, e.g. ``V1D16{|R1P96F6C708}{R47|R2P96F6|F7}``:

  Digits are 0-9 and lowercase a-f only; uppercase letters are always tokens.
  V<dec>   format version (1)            D<dec>  digit base for all other numbers (10 or 16)
  { ... }  section                       |       new block (inherits every field of the previous block)
  R        repeat   (section or block)   I       interval in ms after each repeat (section or block)
  F        frequency, Hz (int)           T       frequency ×10 (for 0.1 Hz steps)
  P        impulse width, µs (1..400)    C       cluster = pulses per repeat
  < S<n>.. >  after the sections: a playlist of sections (n decimal, 1-based); the app's time estimate
           counts each listed section once more; reading stops at '>'
  Digits are 0-9 and lowercase a-f only; uppercase letters are always tokens.
  A trailing '|' right before '}' repeats the previous block once more (the app's parser does that).

Block time   = (1000/F · C + I) · R  ms
Section time = (Σ blocks + I) · R    ms
File time    = Σ sections + Σ sections named by S

Usage:  python3 scripts/bluetens/lok.py <file.lok>...      → one line per file: name, duration, F/P ranges
        python3 scripts/bluetens/lok.py --selftest
"""
import sys

DEF_FREQ, DEF_IMPULSE, DEF_CLUSTER, DEF_REPEAT, DEF_INTERVAL = 54, 100, 1, 1, 0
MAX_FREQ, MIN_IMPULSE, MAX_IMPULSE = 1200, 20, 400
VALUE_LETTERS = set('VDRIFTPCS')
STRUCT = set('{}|<>')


class LokError(ValueError):
    pass


class Block:
    def __init__(self, prev=None):
        if prev:
            self.freq, self.impulse, self.cluster = prev.freq, prev.impulse, prev.cluster
            self.interval, self.repeat = prev.interval, prev.repeat
        else:
            self.freq, self.impulse, self.cluster = DEF_FREQ, DEF_IMPULSE, DEF_CLUSTER
            self.interval, self.repeat = DEF_INTERVAL, DEF_REPEAT

    def ms(self):
        return (1000.0 / self.freq * self.cluster + self.interval) * self.repeat


class Section:
    def __init__(self):
        self.repeat, self.interval, self.blocks = DEF_REPEAT, DEF_INTERVAL, []

    def ms(self):
        return (sum(b.ms() for b in self.blocks) + self.interval) * self.repeat


class Lok:
    def __init__(self):
        self.version, self.base, self.sections, self.loops = 1, 10, [], []

    def ms(self):
        pre = [s.ms() for s in self.sections]
        return sum(pre) + sum(pre[i] for i in self.loops)

    def blocks(self):
        for s in self.sections:
            yield from s.blocks


def _tokens(text):
    i, n = 0, len(text)
    while i < n:
        c = text[i]
        i += 1
        if c in ' \r\n\t':
            continue
        if c not in VALUE_LETTERS and c not in STRUCT:
            raise LokError('bad token %r at %d' % (c, i - 1))
        j = i
        while j < n and text[j] in '0123456789abcdef':
            j += 1
        yield c, text[i:j]
        i = j


def parse(text):
    lok, sec, blk, last = Lok(), None, None, None
    for c, v in _tokens(text):
        if c == 'V':
            lok.version = int(v)
        elif c == 'D':
            lok.base = int(v)
            if lok.base not in (10, 16):
                raise LokError('digit base %s' % v)
        elif c == '{':
            if sec is not None:
                raise LokError('nested section')
            sec, blk, last = Section(), None, None
        elif c == '}':
            if sec is None:
                raise LokError('} without {')
            if blk is not None:
                sec.blocks.append(blk)
            lok.sections.append(sec)
            sec = blk = last = None
        elif c == '|':
            if sec is None:
                raise LokError('| outside a section')
            if blk is not None:
                sec.blocks.append(blk)
                last = blk
            blk = Block(last)
        elif c in '<>':
            if sec is not None:
                raise LokError('%s inside a section' % c)
            if c == '>':
                break                            # the app stops reading at the loop end
        elif c == 'S':
            lok.loops.append(int(v, 10) - 1)     # always decimal
        else:
            if sec is None:
                raise LokError('%s outside a section' % c)
            val = int(v, lok.base)
            if blk is None:                      # section header: only R / I
                if c == 'R':
                    sec.repeat = val
                elif c == 'I':
                    sec.interval = val
                else:
                    raise LokError('%s in a section header' % c)
                continue
            if c == 'R':
                blk.repeat = val
            elif c == 'I':
                blk.interval = val
            elif c == 'F':
                if not 0 < val <= MAX_FREQ:
                    raise LokError('F%d' % val)
                blk.freq = val
            elif c == 'T':
                if not 0 < val / 10.0 <= MAX_FREQ:
                    raise LokError('T%d' % val)
                blk.freq = val / 10.0
            elif c == 'P':
                if not 0 < val <= MAX_IMPULSE:   # MIN_IMPULSE is the editor's floor, files go lower
                    raise LokError('P%d' % val)
                blk.impulse = val
            elif c == 'C':
                blk.cluster = val
    if sec is not None:
        raise LokError('unterminated section')
    return lok


def _num(v, base):
    return format(v, 'x') if base == 16 else str(v)


def build(lok):
    """Serialise like the app does (only fields that change against the previous block)."""
    b = lok.base
    out = ['V%dD%d' % (lok.version, b)]
    for s in lok.sections:
        out.append('{')
        if s.repeat != 1:
            out.append('R' + _num(s.repeat, b))
        if s.interval != 0:
            out.append('I' + _num(s.interval, b))
        prev = None
        for k in s.blocks:
            out.append('|')
            f = ('F' + _num(int(k.freq), b)) if k.freq == int(k.freq) else ('T' + _num(int(k.freq * 10), b))
            if prev is None:
                out.append('R' + _num(k.repeat, b))
                if k.interval != DEF_INTERVAL:
                    out.append('I' + _num(k.interval, b))
                out.append('P' + _num(k.impulse, b))
                out.append(f)
                if k.cluster != DEF_CLUSTER:
                    out.append('C' + _num(k.cluster, b))
            else:
                if k.repeat != prev.repeat:
                    out.append('R' + _num(k.repeat, b))
                if k.interval != prev.interval:
                    out.append('I' + _num(k.interval, b))
                if k.impulse != prev.impulse:
                    out.append('P' + _num(k.impulse, b))
                if k.freq != prev.freq:
                    out.append(f)
                if k.cluster != prev.cluster:
                    out.append('C' + _num(k.cluster, b))
            prev = k
        out.append('}')
    if lok.loops:
        out.append('<' + ''.join('S%d' % (i + 1) for i in lok.loops) + '>')
    return ''.join(out)


def summary(name, lok):
    bl = list(lok.blocks())
    fr = [k.freq for k in bl] or [0]
    pw = [k.impulse for k in bl] or [0]
    return '%-28s %7.1f s  F %g..%g Hz  P %d..%d us  %d sections %d blocks' % (
        name, lok.ms() / 1000.0, min(fr), max(fr), min(pw), max(pw), len(lok.sections), len(bl))


def _selftest():
    # Structure of a real short program (warm-up 300 s @6 Hz, ramp, cool-down), not a vendor file.
    src = 'V1D16{|R1P12cF6C708}{Rb1|R1P12cF6|F7|F8|F9|Fa|Fb|Fc|Fd|Fe|Ff|C78|R2C1|R1Fd|Fb|F9|F7|F4Cc}{|R1P12cF3C384}'
    lok = parse(src)
    assert lok.base == 16 and len(lok.sections) == 3
    assert lok.sections[0].blocks[0].impulse == 300 and lok.sections[0].blocks[0].cluster == 1800
    assert abs(lok.sections[0].ms() - 300000) < 1e-6, lok.sections[0].ms()
    assert lok.sections[1].repeat == 0xb1
    again = parse(build(lok))
    assert abs(again.ms() - lok.ms()) < 1e-6 and len(list(again.blocks())) == len(list(lok.blocks()))
    t = parse('V1D10{|R2I500P250T125C10}<S1>')
    assert t.sections[0].blocks[0].freq == 12.5 and abs(t.ms() - 2 * 2 * (800 + 500)) < 1e-6
    for bad in ('V1D16|R1', 'V1D16{{', 'V1D16{|P191}', 'V1D16{<}', 'V1D16{|X1}', 'V1D8{}'):
        try:
            parse(bad)
        except LokError:
            continue
        raise AssertionError('accepted ' + bad)
    print('lok selftest OK')


if __name__ == '__main__':
    args = sys.argv[1:]
    if not args or args == ['--selftest']:
        _selftest()
        sys.exit(0)
    bad = 0
    for p in args:
        try:
            with open(p, encoding='ascii') as fh:
                print(summary(p.rsplit('/', 1)[-1], parse(fh.read())))
        except (LokError, ValueError) as e:
            bad += 1
            print('%s: INVALID %s' % (p, e))
    sys.exit(1 if bad else 0)
