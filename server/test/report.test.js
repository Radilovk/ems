import test from 'node:test';
import assert from 'node:assert/strict';
import { renderReport, bridgeScript } from '../src/report.js';

test('the bridge goes before the page script and takes the card id from the path', () => {
  const html = renderReport('<html><head><title>x</title></head><body><script>run()</script></body></html>');
  assert.ok(html.indexOf('window.XemsReport') < html.indexOf('run()'));
  assert.ok(html.includes('#delBtn'));
  const js = bridgeScript().replace(/^<script>|<\/script>$/g, '');
  assert.doesNotThrow(() => new Function(js));
  const m = '/r/AbCdEfGhJkMn'.match(new RegExp(js.match(/location\.pathname\.match\((\/.*?\/)\)/)[1].slice(1, -1)));
  assert.equal(m[1], 'AbCdEfGhJkMn');
});

test('the older trainings script goes after the page and parses', () => {
  const html = renderReport('<html><head></head><body><script>run()</script></body></html>');
  const i = html.lastIndexOf('<script>');
  assert.ok(i > html.indexOf('run()'));
  assert.ok(html.includes("getElementById('older')"));
  const js = html.slice(i + 8, html.lastIndexOf('</script>'));
  assert.doesNotThrow(() => new Function(js));
});
