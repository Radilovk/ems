export const adminHtml = `<!DOCTYPE html>
<html lang="bg">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>XEMS License Admin</title>
<style>
*{box-sizing:border-box;margin:0;padding:0}
body{font-family:system-ui,sans-serif;background:#0f1419;color:#e6edf3;padding:1.5rem;max-width:1100px;margin:0 auto}
h1{font-size:1.4rem;margin-bottom:1rem;color:#58a6ff}
h2{font-size:1rem;margin:1.5rem 0 .75rem;color:#8b949e}
.card{background:#161b22;border:1px solid #30363d;border-radius:8px;padding:1rem;margin-bottom:1rem}
.row{display:flex;gap:.5rem;flex-wrap:wrap;align-items:end;margin-bottom:.5rem}
label{font-size:.8rem;color:#8b949e;display:block;margin-bottom:.2rem}
input,select,textarea{background:#0d1117;border:1px solid #30363d;color:#e6edf3;padding:.45rem .6rem;border-radius:6px;font-size:.9rem}
button{background:#238636;color:#fff;border:none;padding:.5rem 1rem;border-radius:6px;cursor:pointer;font-size:.85rem}
button.secondary{background:#21262d;border:1px solid #30363d;color:#e6edf3}
button.danger{background:#da3633}
button:hover{opacity:.9}
table{width:100%;border-collapse:collapse;font-size:.85rem}
th,td{padding:.4rem .6rem;text-align:left;border-bottom:1px solid #21262d}
th{color:#8b949e;font-weight:500}
.tag{display:inline-block;padding:.1rem .4rem;border-radius:4px;font-size:.75rem;background:#21262d}
.tag.active{background:#23863633;color:#3fb950}
.tag.disabled{background:#da363333;color:#f85149}
#stats{display:flex;gap:1rem;flex-wrap:wrap}
.stat{background:#21262d;padding:.75rem 1rem;border-radius:6px;min-width:120px}
.stat b{display:block;font-size:1.3rem;color:#58a6ff}
.msg{padding:.5rem;background:#23863633;border-radius:6px;margin:.5rem 0;font-size:.85rem}
.err{background:#da363333}
code{background:#21262d;padding:.1rem .3rem;border-radius:3px;font-size:.8rem}
</style>
</head>
<body>
<h1>XEMS License Server</h1>
<div id="stats" class="card"></div>

<div class="card">
<h2>Нов лицензен ключ</h2>
<div class="row">
  <div><label>Клиент</label><input id="c_customer" placeholder="Фитнес зала"></div>
  <div><label>План</label><select id="c_plan"><option value="pro">pro</option><option value="full">full</option><option value="base">base</option><option value="base+arms">base+arms</option><option value="custom">custom</option></select></div>
  <div><label>Устройства</label><input id="c_devices" type="number" value="3" min="1" style="width:70px"></div>
  <div><label>Дни (0=безсрочен)</label><input id="c_days" type="number" value="365" min="0" style="width:80px"></div>
  <button onclick="createLicense()">Създай ключ</button>
</div>
<div id="new_key"></div>
</div>

<div class="card">
<h2>Лицензи</h2>
<table id="lic_table"><thead><tr><th>ID</th><th>Клиент</th><th>План</th><th>Hint</th><th>Устройства</th><th>Статус</th><th></th></tr></thead><tbody></tbody></table>
</div>

<div class="card">
<h2>Издания (APK)</h2>
<table id="rel_table"><thead><tr><th>Code</th><th>Име</th><th>SHA256</th><th>Задълж.</th></tr></thead><tbody></tbody></table>
</div>

<script>
const api = (path, opts={}) => fetch('/admin/api/'+path, {...opts, headers:{'Content-Type':'application/json',...(opts.headers||{})}}).then(r=>{if(r.status===401){location.reload();throw new Error('auth')}return r.json()});

async function load() {
  const s = await api('stats');
  document.getElementById('stats').innerHTML =
    '<div class="stat"><span>Активни ключове</span><b>'+s.active_licenses+'</b></div>'+
    '<div class="stat"><span>Устройства</span><b>'+s.active_devices+'</b></div>'+
    '<div class="stat"><span>Последна версия</span><b>'+(s.latest_version||'—')+'</b></div>';
  const l = await api('licenses');
  const tb = document.querySelector('#lic_table tbody');
  tb.innerHTML = (l.licenses||[]).map(x=>'<tr><td><code>'+x.id+'</code></td><td>'+(x.customer||'—')+'</td><td>'+x.plan+'</td><td>…'+x.key_hint+'</td><td>'+x.max_devices+'</td><td><span class="tag '+x.status+'">'+x.status+'</span></td><td>'+
    (x.status==='active'?'<button class="danger" onclick="disable(\\''+x.id+'\\')">Спри</button>':'<button class="secondary" onclick="enable(\\''+x.id+'\\')">Пусни</button>')+
    '</td></tr>').join('');
  const r = await api('releases');
  document.querySelector('#rel_table tbody').innerHTML = (r.releases||[]).map(x=>'<tr><td>'+x.version_code+'</td><td>'+x.version_name+'</td><td><code>'+x.sha256.slice(0,12)+'…</code></td><td>'+(x.mandatory?'да':'не')+'</td></tr>').join('') || '<tr><td colspan="4">Няма издания</td></tr>';
}

async function createLicense() {
  const r = await api('licenses/create',{method:'POST',body:JSON.stringify({
    customer:document.getElementById('c_customer').value,
    plan:document.getElementById('c_plan').value,
    max_devices:+document.getElementById('c_devices').value,
    expires_days:+document.getElementById('c_days').value||null
  })});
  document.getElementById('new_key').innerHTML='<div class="msg">Ключ: <code>'+r.key+'</code> (ID: '+r.id+') — запиши го, няма да се покаже отново!</div>';
  load();
}
async function disable(id){await api('licenses/'+id,{method:'PATCH',body:JSON.stringify({status:'disabled'})});load()}
async function enable(id){await api('licenses/'+id,{method:'PATCH',body:JSON.stringify({status:'active'})});load()}
load();
</script>
</body>
</html>`;
