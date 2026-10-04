import { describe, it } from 'node:test';
import assert from 'node:assert/strict';
import { cardId, isCardId, normClientKey, validCardData, renderCard, keepFigure, CARD_PLACEHOLDER, lookupHash, lookupMatches } from '../src/card.js';

const ok = () => ({
  v: 1, lang: 'bg', name: 'Мария', n: 22, sec: 31944, kcal: 3213, contr: 4865, streak: 12, since: 1, gen: 2,
  weeks: [2, 2, 1, 2, 2, 1, 2, 2, 2, 2, 2, 2], mus: [1, 0.9, 0.8, 0.7, 0.6, 0.5, 0.4, 0.3, 0.2, 0.1],
  eff: [[1, 80]], last: { d: 1, t: 'x', e: 80, k: 160, a: 1400, h: 0 },
});

describe('card id', () => {
  it('is 12 unambiguous characters', () => {
    for (let i = 0; i < 50; i++) assert.ok(isCardId(cardId()));
  });
  it('rejects look-alikes and other lengths', () => {
    assert.equal(isCardId('abcdefghijk0'), false);
    assert.equal(isCardId('abc'), false);
    assert.equal(isCardId('../etc/passwd'), false);
  });
});

describe('client key', () => {
  it('keeps safe characters only', () => {
    assert.equal(normClientKey(' 42 '), '42');
    assert.equal(normClientKey('a/b<c>'), 'abc');
  });
});

describe('validCardData', () => {
  it('accepts the report page shape', () => assert.equal(validCardData(ok()), null));
  it('rejects a missing muscle array', () => {
    const d = ok(); d.mus = [1];
    assert.equal(validCardData(d), 'mus');
  });
  it('accepts the period views', () => {
    const d = ok(); d.p30 = { n: 3, sec: 1, kcal: 1, mus: Array(10).fill(0.5), eff: [[1, 70]] };
    d.last.mus = Array(10).fill(0.4);
    assert.equal(validCardData(d), null);
  });
  it('rejects a broken 30-day view', () => {
    const d = ok(); d.p30 = { n: 3, mus: [1] };
    assert.equal(validCardData(d), 'p30');
  });
  it('accepts the deltoid level and rejects a wrong one', () => {
    const d = ok(); d.delt = 0.6; d.last.delt = -1;
    assert.equal(validCardData(d), null);
    d.delt = 7;
    assert.equal(validCardData(d), 'delt');
  });
  it('rejects non-numbers', () => {
    const d = ok(); d.kcal = '9';
    assert.equal(validCardData(d), 'kcal');
  });
});

describe('renderCard', () => {
  it('embeds the data where the placeholder is', () => {
    const html = renderCard(`<script type="application/json">${CARD_PLACEHOLDER}</script>`, ok());
    assert.match(html, /^<!doctype html>/);
    assert.ok(html.includes('"contr":4865'));
    assert.ok(!html.includes(CARD_PLACEHOLDER));
  });
  it('cannot break out of the script tag', () => {
    const d = ok(); d.name = '</script><script>alert(1)</script>';
    const html = renderCard(`<script>${CARD_PLACEHOLDER}</script>`, d);
    assert.equal(html.split('</script>').length, 2);
  });
  it('gives link previews the first name and totals, escaped', () => {
    const d = ok(); d.name = 'Ана"<x>';
    const html = renderCard(CARD_PLACEHOLDER, d);
    assert.ok(html.includes('og:title" content="Ана&quot;&lt;x> · XEMS"'));
    assert.ok(html.includes('22 тренировки'));
  });
  it('does not expand $ patterns from the data', () => {
    const d = ok(); d.name = "$&$'";
    assert.ok(renderCard(CARD_PLACEHOLDER, d).includes("$&$'"));
  });
});

describe('keepFigure', () => {
  const t = 'a<!--FIG:female-->F<!--/FIG:female--><!--FIG:male-->M<!--/FIG:male-->b';
  it('keeps the woman\'s figure by default', () => assert.equal(keepFigure(t, 'F'), 'a<!--FIG:female-->F<!--/FIG:female-->b'));
  it('keeps the man\'s figure for M', () => assert.equal(keepFigure(t, 'M'), 'a<!--FIG:male-->M<!--/FIG:male-->b'));
});

describe('card lookup', () => {
  const h = (c) => c.repeat(64);
  it('accepts 64 hex only', () => {
    assert.equal(lookupHash(h('A')), h('a'));
    assert.equal(lookupHash('abc'), null);
    assert.equal(lookupHash(null), null);
  });
  it('is found by the e-mail or by the phone', () => {
    assert.equal(lookupMatches({ email_hash: h('a'), phone_hash: h('b') }, h('a'), h('b')), true);
    assert.equal(lookupMatches({ email_hash: h('a'), phone_hash: h('b') }, h('a'), h('c')), true);
    assert.equal(lookupMatches({ email_hash: h('a'), phone_hash: h('b') }, null, h('b')), true);
    assert.equal(lookupMatches({ email_hash: h('a'), phone_hash: h('b') }, h('a'), null), true);
    assert.equal(lookupMatches({ email_hash: null, phone_hash: h('b') }, h('x'), h('b')), true);
    assert.equal(lookupMatches({ email_hash: h('a'), phone_hash: h('b') }, h('x'), h('y')), false);
    assert.equal(lookupMatches({ email_hash: h('a'), phone_hash: null }, null, h('a')), false);
    assert.equal(lookupMatches({ email_hash: null, phone_hash: null }, h('a'), h('b')), false);
  });
});
