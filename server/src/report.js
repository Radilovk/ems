// The client's copy of the tablet's training report (branding/report/session-report.html): the same page,
// fed by the client's records on the server instead of the tablet's storage. The page is the same for
// everyone (cacheable); the records come from /v1/history/<cardId> in the browser.
//
// Every training stays reachable at no cost to the server: the server keeps the full record of the newest 12
// (history.js REC_KEEP) and a small summary of up to 600; the client's browser keeps every full record it has
// received (IndexedDB, the phone is the archive), so an older training opens in full on the phone that saw it;
// anything older than both shows as a short report from its summary under "История" (olderScript).

const STYLE = '<style>#delBtn,#shareBtn,#rotBtn,#demoBtn,#demoTag,#vShort,#vFull,#cardSub,#sheet{display:none!important}'
  + '#older{margin-top:14px;display:grid;gap:8px}#older .sec-h{margin:0}#older .sess{cursor:default;grid-template-columns:44px 1fr auto}'
  + '#older .e{font:700 17px var(--f-cond,inherit);white-space:nowrap}#older .e small{font-size:11px;font-weight:500;margin-left:1px}'
  + '#older .more{all:unset;cursor:pointer;justify-self:center;padding:8px 16px;border-radius:999px;border:1px solid var(--stroke);font-size:13px;color:var(--muted)}'
  + '#older .more:active{transform:scale(.97)}</style>';

/* ── runs in the client's browser (serialised with toString: self-contained, ES5) ── */

/** window.XemsReport for the page: one fetch of /v1/history/<cardId>, the phone's archive merged in. */
function bridge() {
  var m = location.pathname.match(/^\/r\/([A-Za-z0-9]+)/), ID = m ? m[1] : '', qs = new URLSearchParams(location.search),
    idx = [], recs = {}, who = {};
  try { localStorage.setItem('xems.report.view', 'short'); } catch (e) { /* no storage */ }
  function unz(b64) {
    var s = atob(b64), u = new Uint8Array(s.length);
    for (var i = 0; i < s.length; i++) u[i] = s.charCodeAt(i);
    return new Response(new Blob([u]).stream().pipeThrough(new DecompressionStream('gzip'))).text();
  }
  // the phone's archive: {trainingId: gzip-base64} per card — what the server sends is added, what the
  // server no longer lists (a deleted training) is dropped; without IndexedDB, the server's records only
  function archive(sent, list) {
    return new Promise(function (done) {
      var keep = function (have) {
        var o = {};
        list.forEach(function (s) { var k = String(s.id), z = sent[k] || (have && have[k]); if (z) o[k] = z; });
        return o;
      };
      try {
        var q = indexedDB.open('xems-report', 1);
        q.onupgradeneeded = function () { q.result.createObjectStore('recs'); };
        q.onerror = function () { done(keep(null)); };
        q.onsuccess = function () {
          try {
            var st = q.result.transaction('recs', 'readwrite').objectStore('recs'), g = st.get(ID);
            g.onsuccess = function () { var o = keep(g.result); try { st.put(o, ID); } catch (e) { /* full */ } done(o); };
            g.onerror = function () { done(keep(null)); };
          } catch (e) { done(keep(null)); }
        };
      } catch (e) { done(keep(null)); }
    });
  }
  var ready = fetch('/v1/history/' + ID).then(function (r) { if (!r.ok) throw new Error(r.status); return r.json(); })
    .then(function (d) {
      if (!d || !d.ok) throw new Error('x');
      who = d.client || {};
      var all = d.sessions || [];
      return archive(d.recs || {}, all).then(function (R) {
        idx = all.filter(function (s) { return R[s.id]; });
        window.XemsOlder = all.filter(function (s) { return !R[s.id]; });
        return Promise.all(idx.map(function (s) {
          return unz(R[s.id]).then(function (t) { recs[s.id] = t; }, function () { recs[s.id] = 'null'; });
        }));
      });
    });
  window.XemsReport = {
    ready: ready,
    lang: function () { return /[?&#]en\b/.test(location.href) ? 'en' : 'bg'; },
    theme: function () { return qs.get('theme') === 'dark' ? 'dark' : 'light'; },
    client: function () { return JSON.stringify({ name: who.name || '' }); },
    sessions: function () { return JSON.stringify(idx); },
    session: function (id) { return recs[id] || 'null'; },
    focus: function () { return idx.length ? String(idx[idx.length - 1].id) : ''; },
    cardUrl: function () { return ''; }, auto: function () { return false; },
    putScores: function () {}, refreshCard: function () {}, deleteSession: function () {},
    close: function () { if (history.length > 1) history.back(); else window.close(); },
  };
}

/** "По-стари тренировки": the trainings with no full record anywhere, from their summaries (newest first). */
function older() {
  var BR = window.XemsReport;
  if (!BR || !BR.ready) return;
  var EN = BR.lang() === 'en', tr = function (b, e) { return EN ? e : b; }, STEP = 20;
  var MON = EN ? ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
    : ['яну', 'фев', 'мар', 'апр', 'май', 'юни', 'юли', 'авг', 'сеп', 'окт', 'ное', 'дек'];
  var WD = EN ? ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'] : ['нд', 'пн', 'вт', 'ср', 'чт', 'пт', 'сб'];
  var CH = EN ? ['Chest', 'Abs', 'Front thigh', 'Calves', 'Arms', 'Traps', 'Back', 'Lower back', 'Glutes', 'Back thigh']
    : ['Гърди', 'Корем', 'Предно бедро', 'Прасци', 'Ръце', 'Трапец', 'Гръб', 'Кръст', 'Седалище', 'Задно бедро'];
  function esc(t) { return String(t).replace(/&/g, '&amp;').replace(/</g, '&lt;'); }
  function two(v) { return (v < 10 ? '0' : '') + v; }
  function row(s) {
    var d = new Date(s.start || s.id), sc = s.scores || {}, md = s.modes | 0;
    var title = s.program ? tr('Програма „', 'Program “') + s.program + tr('“', '”')
      : (md & 8) && !(md & 7) ? tr('Масаж', 'Massage') : tr('Тренировка', 'Training');
    var act = Math.round((s.activeS || s.durS || 0) / 60);
    var sub = [WD[d.getDay()] + ' ' + two(d.getHours()) + ':' + two(d.getMinutes()), act + tr(' мин', ' min')];
    if (sc.kcal > 0) sub.push(Math.round(sc.kcal) + ' kcal');
    if (s.hasHr && s.hrAvg > 0) sub.push(tr('пулс ', 'HR ') + Math.round(s.hrAvg));
    var top = (s.mus || []).map(function (v, i) { return [v, i]; }).filter(function (x) { return x[0] >= 60; })
      .sort(function (a, b) { return b[0] - a[0]; }).slice(0, 3).map(function (x) { return CH[x[1]]; });
    var e = sc.eff > 0 ? Math.round(sc.eff) : 0, col = e >= 80 ? 'var(--go)' : e >= 60 ? 'var(--amber)' : 'var(--muted)';
    return '<div class="sess"><div class="date"><span class="num">' + d.getDate() + '</span><small>' + MON[d.getMonth()]
      + (d.getFullYear() !== new Date().getFullYear() ? ' ' + String(d.getFullYear()).slice(2) : '') + '</small></div>'
      + '<div style="min-width:0"><div class="t">' + esc(title) + '</div><div class="s">' + esc(sub.join(' · ')) + '</div>'
      + (top.length ? '<div class="s">' + esc(top.join(', ')) + '</div>' : '') + '</div>'
      + (e ? '<span class="e" style="color:' + col + '">' + e + '<small>%</small></span>' : '<span></span>') + '</div>';
  }
  function show() {
    var L = (window.XemsOlder || []).slice().sort(function (a, b) { return (b.start || b.id) - (a.start || a.id); });
    var list = document.getElementById('list');
    if (!L.length || !list || !list.parentNode) return;
    var box = document.getElementById('older') || document.createElement('div'), n = STEP;
    box.id = 'older';
    function draw() {
      box.innerHTML = '<div class="sec-h"><h3 style="font-size:14px">' + tr('По-стари тренировки', 'Older trainings')
        + '</h3><span class="hint">' + L.length + ' · ' + tr('кратко', 'short') + '</span></div>'
        + '<div class="list">' + L.slice(0, n).map(row).join('') + '</div>'
        + (L.length > n ? '<button type="button" class="more">' + tr('Покажи още ', 'Show more ') + Math.min(STEP, L.length - n) + '</button>' : '');
      var b = box.querySelector('.more');
      if (b) b.onclick = function () { n += STEP; draw(); };
    }
    draw();
    list.parentNode.appendChild(box);
  }
  BR.ready.then(function () { setTimeout(show, 0); }, function () {});
}

/**
 * A function's own source as a page script. The bundler (wrangler: esbuild keepNames) writes __name(fn, "x")
 * into the functions' bodies — the page gets a do-nothing __name, so the same source runs there.
 */
function pageScript(fn) {
  return '<script>var __name=window.__name||function(f){return f};(' + fn.toString() + ')();</script>';
}

/** The bridge, in front of the page's own script. */
export function bridgeScript() {
  return pageScript(bridge);
}

/** The report page with the bridge in front of its own script and the older trainings after it. */
export function renderReport(template) {
  return template.replace('</head>', STYLE + bridgeScript() + '</head>')
    .replace(/<\/body>(?![\s\S]*<\/body>)/, () => pageScript(older) + '</body>');
}
