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


def scenario(voice, noise, var=0):
    """the plan for one run and the commands it must produce, in order"""
    plan = ['noise %d' % noise, 'noisevar %d' % var]
    v = lambda w, s, p: say(WORDS[w], voice, s, p, '%s_%s_%d_%d' % (voice, w, s, p))
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
    rec = ['sil 1000']
    for w in WORDS:
        for s, p in ((150, 50), (165, 45), (135, 55)):
            rec.append('rec %s %s' % (w, say(WORDS[w], enroll_voice, s, p, '%s_%s_%d_%d' % (enroll_voice, w, s, p))))
    fails = 0
    # (voice, noise, ± dB it wanders, noise while recording the examples, label, must pass)
    for voice, noise, var, rn, tag, must in ((enroll_voice, 0, 0, 4, 'clean', True),
                                             (enroll_voice, 250, 0, 4, 'noise', True),
                                             (enroll_voice, 80, 8, 80, 'room', True),
                                             (enroll_voice, 250, 8, 250, 'busy room', True),
                                             (enroll_voice, 600, 0, 4, 'loud noise', False),
                                             ('bg+f2', 0, 0, 4, 'other voice', False)):
        plan, want = scenario(voice, noise, var)
        plan = ['noise %d' % rn, 'noisevar %d' % var] + rec + plan
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
