#!/usr/bin/env python3
"""Offline test of the XEMS voice recogniser: Bulgarian commands spoken by espeak-ng, recorded as examples, then said
again (other speed / pitch, with and without noise, among running speech). The engine is the chip's own kws.h.
Usage: python3 scripts/voice-sim/run.py [-v]   (needs espeak-ng, ffmpeg, g++)"""
import os, subprocess, sys

HERE = os.path.dirname(os.path.abspath(__file__))
OUT = os.path.join(HERE, '..', '..', 'build', 'voice-sim')
VERBOSE = '-v' in sys.argv
WORDS = {'start': 'старт', 'pause': 'пауза', 'stop': 'стоп', 'plus': 'увеличи импулса',
         'minus': 'намали импулса', 'one': 'едно', 'two': 'две', 'three': 'три'}
# said alone and loud like a command, yet none of them is one: must never act
OTHER = ['хайде', 'добре', 'браво', 'още', 'четири', 'давай', 'спокойно', 'почивка', 'издръж', 'край']
TALK = ['Днес тренираме краката и гърба, дишай спокойно и стегни корема.',
        'Колко време остава до края на тренировката, още малко издръж.']


def say(text, voice, speed, pitch, name):
    raw = os.path.join(OUT, name + '.raw')
    if not os.path.exists(raw):
        wav = raw[:-4] + '.wav'
        subprocess.run(['espeak-ng', '-v', voice, '-s', str(speed), '-p', str(pitch), '-w', wav, text], check=True)
        subprocess.run(['ffmpeg', '-loglevel', 'error', '-y', '-i', wav, '-ar', '16000', '-ac', '1', '-f', 's16le', raw],
                       check=True)
    return raw


def trim(b):
    """the bytes of s16 audio without its silent head and tail (10 ms frames under rms 100)"""
    import array
    x = array.array('h', b)
    loud = [i for i in range(0, len(x) - 160, 160) if sum(v * v for v in x[i:i + 160]) / 160 > 100 * 100]
    return x[loud[0]:loud[-1] + 160].tobytes() if loud else b


def phrase(w, voice, speed, pitch, gap=0):
    """a command as said: two-word ones ("увеличи импулса") with a pause of `gap` ms between the words"""
    words = WORDS[w].split()
    if not gap or len(words) == 1:
        return say(WORDS[w], voice, speed, pitch, '%s_%s_%d_%d' % (voice, w, speed, pitch))
    raw = os.path.join(OUT, '%s_%s_%d_%d_gap%d.raw' % (voice, w, speed, pitch, gap))
    if not os.path.exists(raw):
        parts = [open(say(x, voice, speed, pitch, '%s_%s_%d_%d' % (voice, x, speed, pitch)), 'rb').read() for x in words]
        parts = [trim(b) for b in parts]             # espeak pads every word with ≈ 0.6 s of silence
        open(raw, 'wb').write(parts[0] + b'\0' * (gap * 32) + parts[1])
    return raw


def scenario(voice, noise, var=0, pgap=0, slow=0):
    """the plan for one run and the commands it must produce, in order"""
    plan = ['noise %d' % noise, 'noisevar %d' % var]
    v = lambda w, s, p: phrase(w, voice, s - slow, p, pgap)
    seq = [('one', 0.4), ('two', 0.4), ('three', 0.4), ('start', 1.5), ('plus', 1.5), ('plus', 1.5), ('pause', 1.5),
           ('talk0', 1.0), ('start', 1.5),
           ('one', 0.4), ('two', 0.4), ('three', 0.4), ('start', 1.5), ('minus', 1.5), ('talk1', 1.0)]
    seq += [('other%d' % i, 1.2) for i in range(len(OTHER))] + [('stop', 1.5)]
    want = ['start', 'plus', 'plus', 'pause', 'start', 'minus', 'stop']
    plan.append('sil 3000')                           # the room's noise is there before the first word
    for i, (w, gap) in enumerate(seq):
        if w.startswith('other'):
            plan.append('mark %s' % w)
            plan.append('play %s 1.0' % say(OTHER[int(w[5:])], voice, 150, 50, voice + '_' + w))
        elif w.startswith('talk'):
            plan.append('mark talk')
            plan.append('play %s 0.4' % say(TALK[int(w[4])], voice, 165, 50, voice + '_' + w))
        else:
            sp, pi = (175, 42) if i % 2 else (140, 58)   # never the examples' own speed / pitch
            plan.append('mark %s' % w)
            plan.append('play %s 1.0' % v(w, sp, pi))
        plan.append('sil %d' % int(gap * 1000))
    return plan, want


def main():
    os.makedirs(OUT, exist_ok=True)
    exe = os.path.join(OUT, 'kws_test')
    subprocess.run(['g++', '-O2', '-Wall', '-o', exe, os.path.join(HERE, 'kws_test.cpp')], check=True)
    enroll_voice = 'bg+m3'
    def examples(gap=0, slow=0):
        r = ['sil 1000']
        for w in WORDS:
            for i, (s, p) in enumerate(((150, 50), (165, 45), (135, 55))):
                r.append('rec %s %s' % (w, phrase(w, enroll_voice, s - slow, p, gap + 60 * i if gap else 0)))
        return r
    fails = 0
    # (voice, noise, ± dB it wanders, noise while recording the examples, label, must pass)
    for voice, noise, var, rn, tag, must in ((enroll_voice, 0, 0, 4, 'clean', True),
                                             (enroll_voice, 250, 0, 4, 'noise', True),
                                             (enroll_voice, 80, 8, 80, 'room', True),
                                             (enroll_voice, 250, 8, 250, 'busy room', True),
                                             (enroll_voice, 80, 8, 80, 'slow, pausing', True),
                                             (enroll_voice, 600, 0, 4, 'loud noise', False),
                                             ('bg+f2', 0, 0, 4, 'other voice', False)):
        # slow, pausing: a trainer who says "увеличи … импулса" slowly, 250–370 ms between the words
        gap, slow = (250, 35) if tag.startswith('slow') else (0, 0)
        plan, want = scenario(voice, noise, var, gap + 50 if gap else 0, slow)
        plan = ['noise %d' % rn, 'noisevar %d' % var] + examples(gap, slow) + plan
        pf = os.path.join(OUT, 'plan.txt')
        open(pf, 'w').write('\n'.join(plan) + '\n')
        lines = subprocess.run([exe, pf], check=True, capture_output=True, text=True).stdout.splitlines()
        got = [l.split()[2] for l in lines if l.split()[1] == 'CMD']
        recs = [l for l in lines if ' REC ' in l and ' ok ' in l]
        store = [l for l in lines if 'STORE' in l][0]
        ok = got == want and len(recs) == 3 * len(WORDS) and 'reload=ok' in store
        if VERBOSE or not ok:
            print('\n'.join('   ' + l for l in lines if 'REC' not in l))
        print('%-4s %-12s got %s%s' % ('ok' if ok else ('FAIL' if must else 'info'), tag, ' '.join(got),
                                      '' if ok else '   want ' + ' '.join(want)))
        fails += 0 if ok or not must else 1
    print(store.split(' ', 1)[1])
    sys.exit(1 if fails else 0)


if __name__ == '__main__':
    main()
