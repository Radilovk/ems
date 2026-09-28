import test from 'node:test';
import assert from 'node:assert/strict';
import { renderReport, bridgeScript } from '../src/report.js';

test('the bridge goes before the page script and carries the card id', () => {
  const html = renderReport('<html><head><title>x</title></head><body><script>run()</script></body></html>', 'AbCdEfGhJkMn');
  assert.ok(html.indexOf('window.XemsReport') < html.indexOf('run()'));
  assert.ok(html.includes('"AbCdEfGhJkMn"'));
  assert.ok(html.includes('#delBtn'));
});

test('the card id is JSON-quoted, so it cannot break out of the script', () => {
  const s = bridgeScript('a"</script>');
  assert.ok(!s.includes('a"</script>'));
});
