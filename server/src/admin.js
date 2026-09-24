export const adminHtml = `<!DOCTYPE html>
<html lang="bg">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>XEMS License Admin</title>
<style>
*{box-sizing:border-box;margin:0;padding:0}
body{font-family:system-ui,sans-serif;background:#0f1419;color:#e6edf3;padding:1rem 1.25rem 2rem;max-width:1180px;margin:0 auto}
h1{font-size:1.35rem;margin-bottom:.25rem;color:#58a6ff}
.subtitle{font-size:.85rem;color:#8b949e;margin-bottom:1rem}
nav{display:flex;gap:.35rem;flex-wrap:wrap;margin-bottom:1rem}
nav button{background:#21262d;border:1px solid #30363d;color:#e6edf3;padding:.45rem .85rem;border-radius:6px;cursor:pointer;font-size:.85rem}
nav button.on{background:#238636;border-color:#238636;color:#fff}
.panel{display:none}
.panel.on{display:block}
.card{background:#161b22;border:1px solid #30363d;border-radius:8px;padding:1rem;margin-bottom:1rem}
h2{font-size:1rem;margin:0 0 .75rem;color:#8b949e}
h3{font-size:.9rem;margin:0 0 .5rem;color:#c9d1d9}
.row{display:flex;gap:.5rem;flex-wrap:wrap;align-items:end;margin-bottom:.5rem}
label{font-size:.78rem;color:#8b949e;display:block;margin-bottom:.2rem}
input,select,textarea{background:#0d1117;border:1px solid #30363d;color:#e6edf3;padding:.45rem .6rem;border-radius:6px;font-size:.9rem}
textarea{width:100%;min-height:70px;resize:vertical}
button{background:#238636;color:#fff;border:none;padding:.5rem 1rem;border-radius:6px;cursor:pointer;font-size:.85rem}
button.secondary{background:#21262d;border:1px solid #30363d;color:#e6edf3}
button.danger{background:#da3633}
button:hover{opacity:.9}
button:disabled{opacity:.45;cursor:not-allowed}
table{width:100%;border-collapse:collapse;font-size:.82rem}
th,td{padding:.45rem .55rem;text-align:left;border-bottom:1px solid #21262d;vertical-align:top}
th{color:#8b949e;font-weight:500}
.tag{display:inline-block;padding:.1rem .4rem;border-radius:4px;font-size:.72rem;background:#21262d}
.tag.active{background:#23863633;color:#3fb950}
.tag.disabled,.tag.removed{background:#da363333;color:#f85149}
#stats{display:flex;gap:.75rem;flex-wrap:wrap}
.stat{background:#21262d;padding:.7rem .9rem;border-radius:6px;min-width:110px}
.stat span{font-size:.75rem;color:#8b949e}
.stat b{display:block;font-size:1.25rem;color:#58a6ff;margin-top:.15rem}
.msg{padding:.55rem .7rem;background:#23863633;border-radius:6px;margin:.5rem 0;font-size:.85rem}
.err{background:#da363333}
.hint{font-size:.82rem;color:#8b949e;line-height:1.45;margin-bottom:.75rem}
.hint ol{margin:.35rem 0 .35rem 1.1rem}
.hint li{margin:.2rem 0}
code{background:#21262d;padding:.1rem .3rem;border-radius:3px;font-size:.78rem;word-break:break-all}
.steps{display:grid;gap:.75rem}
.step{background:#0d1117;border:1px solid #21262d;border-radius:6px;padding:.75rem}
.actions{display:flex;gap:.35rem;flex-wrap:wrap}
.modal{position:fixed;inset:0;background:rgba(0,0,0,.65);display:none;align-items:center;justify-content:center;padding:1rem;z-index:10}
.modal.on{display:flex}
.modal-box{background:#161b22;border:1px solid #30363d;border-radius:8px;padding:1rem;max-width:640px;width:100%;max-height:90vh;overflow:auto}
</style>
</head>
<body>
<h1>XEMS License Server</h1>
<p class="subtitle">Управление на лицензи, таблети и OTA обновявания — само през браузър.</p>

<nav>
  <button class="on" data-tab="dash" onclick="tab('dash')">Табло</button>
  <button data-tab="lic" onclick="tab('lic')">Лицензи</button>
  <button data-tab="dev" onclick="tab('dev')">Устройства</button>
  <button data-tab="rel" onclick="tab('rel')">Обновления (APK)</button>
  <button data-tab="log" onclick="tab('log')">Журнал</button>
</nav>

<section id="dash" class="panel on">
  <div id="stats" class="card"></div>
  <div class="card">
    <h2>Бърз старт</h2>
    <div class="hint">
      <p><b>Нов клиент:</b> Лицензи → създай ключ → дай го на таблета (Настройки → Достъп и лиценз).</p>
      <p><b>Нова версия на приложението:</b> Обновления (APK) → след като APK е в GitHub, регистрирай версията. Таблетите ще видят прозорец за update.</p>
      <p><b>Костюми:</b> при лиценза → Промени MAC — или таблетът ги докладва след сдвояване в настройка.</p>
    </div>
  </div>
</section>

<section id="lic" class="panel">
  <div class="card">
    <h2>Нов лицензен ключ</h2>
    <div class="row">
      <div><label>Клиент</label><input id="c_customer" placeholder="Фитнес зала"></div>
      <div><label>План</label><select id="c_plan"><option value="full">full — всичко</option><option value="pro">pro</option><option value="base">base</option><option value="base+arms">base+arms</option><option value="custom">custom</option></select></div>
      <div><label>Устройства</label><input id="c_devices" type="number" value="3" min="1" style="width:70px"></div>
      <div><label>Дни (0=безсрочен)</label><input id="c_days" type="number" value="365" min="0" style="width:80px"></div>
      <button onclick="createLicense()">Създай ключ</button>
    </div>
    <div id="new_key"></div>
  </div>
  <div class="card">
    <h2>Лицензи</h2>
    <table id="lic_table"><thead><tr><th>ID</th><th>Клиент</th><th>План</th><th>Hint</th><th>Устр.</th><th>Костюми</th><th>Статус</th><th></th></tr></thead><tbody></tbody></table>
  </div>
</section>

<section id="dev" class="panel">
  <div class="card">
    <h2>Активни таблети</h2>
    <p class="hint">Всички устройства, активирали ключ. Можеш да премахнеш устройство, за да освободиш слот за друг таблет.</p>
    <table id="dev_table"><thead><tr><th>Device ID</th><th>Клиент</th><th>Модел</th><th>Версия</th><th>Последно</th><th>Настройка</th><th></th></tr></thead><tbody></tbody></table>
  </div>
</section>

<section id="rel" class="panel">
  <div class="card">
    <h2>Как работи OTA обновяването</h2>
    <p id="r2_status" class="hint"></p>
    <div class="hint steps">
      <div class="step"><b>Вариант A (препоръчителен):</b> Избери APK файл → <b>Качи в сървъра</b>. Файлът се пази в Cloudflare R2 и таблетите го теглят от <code>license.biocode-bg.com</code>.</div>
      <div class="step"><b>Вариант B:</b> APK в GitHub → регистрирай URL. Сървърът проверява SHA256 и сочи таблетите към GitHub.</div>
      <div class="step"><b>3.</b> Таблетите проверяват при старт (на ~12 ч) и показват „Изтегли и инсталирай“.</div>
    </div>
  </div>
  <div class="card" id="r2_upload_card">
    <h2>Качи APK директно (R2)</h2>
    <div class="row">
      <div><label>Version code</label><input id="u_code" type="number" placeholder="213" style="width:90px"></div>
      <div><label>Version name</label><input id="u_name" placeholder="1.1.88-ai" style="width:130px"></div>
      <div style="flex:1;min-width:200px"><label>APK файл</label><input id="u_file" type="file" accept=".apk,application/vnd.android.package-archive"></div>
    </div>
    <div class="row">
      <div style="flex:1"><label>Бележка</label><input id="u_notes" placeholder="Какво е ново" style="width:100%"></div>
      <div><label>&nbsp;</label><label style="display:flex;align-items:center;gap:.35rem;color:#e6edf3;font-size:.85rem"><input id="u_mandatory" type="checkbox"> Задължително</label></div>
      <button onclick="uploadReleaseFile()">Качи в сървъра</button>
    </div>
    <div id="u_msg"></div>
  </div>
  <div class="card">
    <h2>Или регистрирай от GitHub URL</h2>
    <div class="row">
      <div><label>Version code</label><input id="r_code" type="number" placeholder="213" style="width:90px"></div>
      <div><label>Version name</label><input id="r_name" placeholder="1.1.88-ai" style="width:130px"></div>
      <div style="flex:1;min-width:240px"><label>URL на APK</label><input id="r_url" style="width:100%" value="https://github.com/Radilovk/ems/raw/main/xems27.apk"></div>
    </div>
    <div class="row">
      <div style="flex:1"><label>Бележка (вижда се в таблета)</label><input id="r_notes" placeholder="Какво е ново в тази версия" style="width:100%"></div>
      <div><label>&nbsp;</label><label style="display:flex;align-items:center;gap:.35rem;color:#e6edf3;font-size:.85rem"><input id="r_mandatory" type="checkbox"> Задължително</label></div>
    </div>
    <div class="row actions">
      <button class="secondary" onclick="verifyRelease()">Провери URL</button>
      <button onclick="registerRelease()">Регистрирай версия</button>
    </div>
    <div id="rel_msg"></div>
    <div id="rel_verify"></div>
  </div>
  <div class="card">
    <h2>Регистрирани версии</h2>
    <table id="rel_table"><thead><tr><th>Code</th><th>Име</th><th>Размер</th><th>Дата</th><th>Бележка</th><th>Задълж.</th><th></th></tr></thead><tbody></tbody></table>
  </div>
</section>

<section id="log" class="panel">
  <div class="card">
    <h2>Журнал на действията</h2>
    <table id="log_table"><thead><tr><th>Време</th><th>Действие</th><th>Лиценз</th><th>Устройство</th><th>Детайл</th></tr></thead><tbody></tbody></table>
  </div>
</section>

<div id="lic_modal" class="modal" onclick="if(event.target===this)closeLic()">
  <div class="modal-box">
    <h2 id="m_title">Лиценз</h2>
    <div id="m_body"></div>
    <div class="row" style="margin-top:.75rem"><button class="secondary" onclick="closeLic()">Затвори</button></div>
  </div>
</div>

<script>
async function api(path, opts={}){
  const r=await fetch('/admin/api/'+path,{...opts,headers:{'Content-Type':'application/json',...(opts.headers||{})}});
  if(r.status===401){location.reload();throw new Error('Нужна е отново автентикация');}
  const j=await r.json().catch(()=>({ok:false,message:'Невалиден отговор'}));
  if(!j.ok) throw new Error(j.message||j.error||'Грешка');
  return j;
}
function tab(id){
  document.querySelectorAll('.panel').forEach(p=>p.classList.remove('on'));
  document.querySelectorAll('nav button').forEach(b=>b.classList.toggle('on',b.dataset.tab===id));
  document.getElementById(id).classList.add('on');
  if(id==='dev') loadDevices();
  if(id==='log') loadAudit();
}
function fmtTs(t){if(!t)return'—';return new Date(t*1000).toLocaleString('bg-BG',{dateStyle:'short',timeStyle:'short'})}
function fmtSize(n){n=+n||0;if(n>1e6)return(n/1e6).toFixed(1)+' MB';if(n>1e3)return(n/1e3).toFixed(0)+' KB';return n+' B'}
function fmtDev(id){if(!id)return'—';return id.length===16?id.slice(0,4)+'-'+id.slice(4,8)+'-'+id.slice(8,12)+'-'+id.slice(12):id}
function emsCount(t){try{return JSON.parse(t||'[]').length}catch(e){return 0}}

async function loadR2Status(){
  try{
    const r=await api('releases/r2-status');
    const el=document.getElementById('r2_status');
    const card=document.getElementById('r2_upload_card');
    if(r.r2){
      el.innerHTML='<span class="tag active">R2 активен</span> — можеш да качваш APK директно.';
      if(card) card.style.display='block';
    }else{
      el.innerHTML='<span class="tag disabled">R2 не е активиран</span> — включи R2 в <a href="https://dash.cloudflare.com/" style="color:#58a6ff">Cloudflare Dashboard</a> → R2, после deploy. Дотогава ползвай GitHub URL.';
      if(card) card.style.opacity='0.55';
    }
  }catch(e){}
}

async function uploadReleaseFile(){
  const el=document.getElementById('u_msg');
  const f=document.getElementById('u_file').files[0];
  if(!f){el.innerHTML='<div class="msg err">Избери APK файл</div>';return;}
  el.innerHTML='<div class="msg">Качване… ('+fmtSize(f.size)+')</div>';
  const fd=new FormData();
  fd.append('file',f);
  fd.append('version_code',document.getElementById('u_code').value);
  fd.append('version_name',document.getElementById('u_name').value);
  fd.append('notes',document.getElementById('u_notes').value);
  fd.append('mandatory',document.getElementById('u_mandatory').checked?'1':'0');
  try{
    const r=await fetch('/admin/api/releases/upload-file',{method:'POST',body:fd,credentials:'same-origin'});
    if(r.status===401){location.reload();return;}
    const j=await r.json();
    if(!j.ok) throw new Error(j.message||j.error);
    el.innerHTML='<div class="msg">Качено: <b>'+j.version_name+'</b> · <code>'+j.url+'</code></div>';
    load();
  }catch(e){el.innerHTML='<div class="msg err">'+e.message+'</div>';}
}

async function load(){
  loadR2Status();
  const s=await api('stats');
  document.getElementById('stats').innerHTML=
    '<div class="stat"><span>Активни ключове</span><b>'+s.active_licenses+'</b></div>'+
    '<div class="stat"><span>Таблети</span><b>'+s.active_devices+'</b></div>'+
    '<div class="stat"><span>Последна версия</span><b>'+(s.latest_version_name||s.latest_version||'—')+'</b></div>';
  const l=await api('licenses');
  window._licenses=l.licenses||[];
  document.querySelector('#lic_table tbody').innerHTML=window._licenses.map(x=>'<tr><td><code>'+x.id+'</code></td><td>'+(x.customer||'—')+'</td><td>'+x.plan+'</td><td>…'+x.key_hint+'</td><td>'+x.max_devices+'</td><td>'+emsCount(x.ems)+' <button class="secondary" onclick="editEms(\\''+x.id+'\\')">MAC</button></td><td><span class="tag '+x.status+'">'+x.status+'</span></td><td class="actions">'+
    '<button class="secondary" onclick="showLic(\\''+x.id+'\\')">Детайли</button>'+
    (x.status==='active'?'<button class="danger" onclick="disable(\\''+x.id+'\\')">Спри</button>':'<button class="secondary" onclick="enable(\\''+x.id+'\\')">Пусни</button>')+
    '</td></tr>').join('');
  const r=await api('releases');
  document.querySelector('#rel_table tbody').innerHTML=(r.releases||[]).map(x=>{
    const src=x.object_key&&x.object_key.startsWith('https://')?'GitHub':'R2';
    return '<tr><td>'+x.version_code+'</td><td>'+x.version_name+' <span class="tag">'+src+'</span></td><td>'+fmtSize(x.size)+'</td><td>'+fmtTs(x.published_at)+'</td><td>'+(x.notes||'—')+'</td><td>'+(x.mandatory?'да':'не')+'</td><td class="actions">'+
    '<button class="secondary" onclick="toggleMandatory('+x.version_code+','+(x.mandatory?0:1)+')">'+(x.mandatory?'Незадълж.':'Задълж.')+'</button>'+
    '<button class="danger" onclick="deleteRelease('+x.version_code+',\\''+x.version_name+'\\')">Изтрий</button></td></tr>';
  }).join('')||'<tr><td colspan="7">Няма регистрирани версии — таблетите няма да видят update.</td></tr>';
}

async function loadDevices(){
  const d=await api('devices');
  document.querySelector('#dev_table tbody').innerHTML=(d.devices||[]).map(x=>'<tr><td><code>'+fmtDev(x.device_id)+'</code></td><td>'+(x.customer||'—')+'</td><td>'+(x.device_model||'—')+'</td><td>'+(x.app_version||'?')+' <span style="color:#8b949e">('+x.app_code+')</span></td><td>'+fmtTs(x.last_seen)+'</td><td>'+(x.setup?'да':'не')+'</td><td>'+
    (x.status==='active'?'<button class="danger" onclick="removeDevice(\\''+x.license_id+'\\',\\''+x.device_id+'\\')">Премахни</button>':'<span class="tag removed">'+x.status+'</span>')+
    '</td></tr>').join('')||'<tr><td colspan="7">Няма активирани устройства.</td></tr>';
}

async function loadAudit(){
  const a=await api('audit');
  document.querySelector('#log_table tbody').innerHTML=(a.audit||[]).map(x=>'<tr><td>'+fmtTs(x.ts)+'</td><td>'+x.action+'</td><td><code>'+(x.license_id||'—')+'</code></td><td><code>'+fmtDev(x.device_id)+'</code></td><td>'+(x.detail||'—')+'</td></tr>').join('')||'<tr><td colspan="5">Празен журнал.</td></tr>';
}

async function verifyRelease(){
  const el=document.getElementById('rel_verify');
  el.innerHTML='<div class="msg">Проверка…</div>';
  try{
    const r=await api('releases/verify',{method:'POST',body:JSON.stringify({url:document.getElementById('r_url').value})});
    el.innerHTML='<div class="msg">OK · '+fmtSize(r.size)+' · SHA256 <code>'+r.sha256+'</code></div>';
  }catch(e){el.innerHTML='<div class="msg err">'+e.message+'</div>';}
}

async function registerRelease(){
  const el=document.getElementById('rel_msg');
  el.innerHTML='<div class="msg">Регистрация…</div>';
  try{
    const r=await api('releases/register',{method:'POST',body:JSON.stringify({
      version_code:+document.getElementById('r_code').value,
      version_name:document.getElementById('r_name').value,
      object_key:document.getElementById('r_url').value,
      notes:document.getElementById('r_notes').value,
      mandatory:document.getElementById('r_mandatory').checked
    })});
    el.innerHTML='<div class="msg">Регистрирано: <b>'+r.version_name+'</b> (code '+r.version_code+')</div>';
    document.getElementById('rel_verify').innerHTML='';
    load();
  }catch(e){el.innerHTML='<div class="msg err">'+e.message+'</div>';}
}

async function toggleMandatory(code,val){
  await api('releases/'+code,{method:'PATCH',body:JSON.stringify({mandatory:!!val})});
  load();
}
async function deleteRelease(code,name){
  if(!confirm('Изтрий версия '+name+' (code '+code+')? Таблетите няма да я виждат.')) return;
  await api('releases/'+code,{method:'DELETE'});
  load();
}

async function createLicense(){
  const r=await api('licenses/create',{method:'POST',body:JSON.stringify({
    customer:document.getElementById('c_customer').value,
    plan:document.getElementById('c_plan').value,
    max_devices:+document.getElementById('c_devices').value,
    expires_days:+document.getElementById('c_days').value||null
  })});
  document.getElementById('new_key').innerHTML='<div class="msg">Ключ: <code>'+r.key+'</code> (ID: '+r.id+') — запиши го, няма да се покаже отново!</div>';
  load();
}

async function showLic(id){
  const lic=(window._licenses||[]).find(x=>x.id===id)||{};
  const a=await api('activations/'+id);
  const acts=a.activations||[];
  document.getElementById('m_title').textContent=lic.customer||id;
  document.getElementById('m_body').innerHTML='<p><b>План:</b> '+lic.plan+' · <b>Статус:</b> '+lic.status+' · <b>Устройства:</b> '+lic.max_devices+'</p>'+
    '<p><b>Костюми (MAC):</b> '+(JSON.parse(lic.ems||'[]').join(', ')||'няма')+'</p>'+
    '<h3 style="margin-top:.75rem">Таблети</h3>'+
    (acts.length?'<table><tr><th>ID</th><th>Модел</th><th>Версия</th><th>Последно</th></tr>'+
    acts.map(x=>'<tr><td><code>'+fmtDev(x.device_id)+'</code></td><td>'+(x.device_model||'—')+'</td><td>'+(x.app_version||'?')+'</td><td>'+fmtTs(x.last_seen)+'</td></tr>').join('')+'</table>':'<p class="hint">Няма активирани таблети.</p>');
  document.getElementById('lic_modal').classList.add('on');
}
function closeLic(){document.getElementById('lic_modal').classList.remove('on')}

async function editEms(id){
  const lic=(window._licenses||[]).find(x=>x.id===id)||{};
  let current=[];try{current=JSON.parse(lic.ems||'[]')}catch(e){}
  const a=await api('activations/'+id);
  const paired=new Set();
  (a.activations||[]).forEach(t=>{try{JSON.parse(t.ems_local||'[]').forEach(m=>paired.add(m))}catch(e){}});
  const v=prompt('Позволени костюми (MAC, по един на ред или със запетая).\\nСдвоени в настройката: '+(paired.size?[...paired].join(', '):'няма'),current.join(', '));
  if(v===null) return;
  await api('licenses/'+id,{method:'PATCH',body:JSON.stringify({ems:v})});
  load();
}

async function removeDevice(licId,devId){
  if(!confirm('Премахни устройство '+fmtDev(devId)+'?')) return;
  await api('activations/'+licId+'/'+devId+'/remove',{method:'POST'});
  loadDevices(); load();
}

async function disable(id){await api('licenses/'+id,{method:'PATCH',body:JSON.stringify({status:'disabled'})});load()}
async function enable(id){await api('licenses/'+id,{method:'PATCH',body:JSON.stringify({status:'active'})});load()}

load();
</script>
</body>
</html>`;
