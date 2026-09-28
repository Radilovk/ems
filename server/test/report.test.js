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
