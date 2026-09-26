export const adminHtml = `<!DOCTYPE html>
<html lang="bg">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>XEMS — Админ панел</title>
<style>
*{box-sizing:border-box;margin:0;padding:0}
body{font-family:system-ui,sans-serif;background:#0f1419;color:#e6edf3;padding:1rem 1.25rem 2rem;max-width:1180px;margin:0 auto}
h1{font-size:1.35rem;margin-bottom:.25rem;color:#58a6ff}
.subtitle{font-size:.85rem;color:#8b949e;margin-bottom:1rem;line-height:1.45}
nav{display:flex;gap:.35rem;flex-wrap:wrap;margin-bottom:1rem}
nav button{background:#21262d;border:1px solid #30363d;color:#e6edf3;padding:.45rem .85rem;border-radius:6px;cursor:pointer;font-size:.85rem}
nav button.on{background:#238636;border-color:#238636;color:#fff}
.panel{display:none}
.panel.on{display:block}
.card{background:#161b22;border:1px solid #30363d;border-radius:8px;padding:1rem;margin-bottom:1rem}
h2{font-size:1rem;margin:0 0 .5rem;color:#c9d1d9}
h3{font-size:.9rem;margin:0 0 .5rem;color:#c9d1d9}
.intro{font-size:.85rem;color:#8b949e;line-height:1.5;margin-bottom:.85rem;padding:.65rem .75rem;background:#0d1117;border-radius:6px;border-left:3px solid #58a6ff}
.intro b{color:#e6edf3}
.row{display:flex;gap:.5rem;flex-wrap:wrap;align-items:end;margin-bottom:.5rem}
label{font-size:.78rem;color:#8b949e;display:block;margin-bottom:.2rem}
.field-hint{font-size:.72rem;color:#6e7681;margin-top:.15rem}
input,select,textarea{background:#0d1117;border:1px solid #30363d;color:#e6edf3;padding:.45rem .6rem;border-radius:6px;font-size:.9rem}
textarea{width:100%;min-height:90px;resize:vertical;font-family:ui-monospace,monospace;font-size:.82rem}
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
.msg{padding:.55rem .7rem;background:#23863633;border-radius:6px;margin:.5rem 0;font-size:.85rem;line-height:1.45}
.err{background:#da363333}
.hint{font-size:.82rem;color:#8b949e;line-height:1.45;margin-bottom:.75rem}
code{background:#21262d;padding:.1rem .3rem;border-radius:3px;font-size:.78rem;word-break:break-all}
.steps{display:grid;gap:.5rem}
.step{background:#0d1117;border:1px solid #21262d;border-radius:6px;padding:.65rem .75rem;font-size:.84rem;line-height:1.45}
.actions{display:flex;gap:.35rem;flex-wrap:wrap}
.modal{position:fixed;inset:0;background:rgba(0,0,0,.65);display:none;align-items:center;justify-content:center;padding:1rem;z-index:10}
.modal.on{display:flex}
.modal-box{background:#161b22;border:1px solid #30363d;border-radius:8px;padding:1rem;max-width:640px;width:100%;max-height:90vh;overflow:auto}
.task-grid{display:grid;grid-template-columns:repeat(auto-fill,minmax(220px,1fr));gap:.75rem;margin-bottom:1rem}
.task-card{background:#161b22;border:1px solid #30363d;border-radius:8px;padding:.85rem;cursor:pointer;transition:border-color .15s}
.task-card:hover{border-color:#58a6ff}
.task-card .icon{font-size:1.4rem;margin-bottom:.35rem}
.task-card h3{font-size:.92rem;color:#e6edf3;margin-bottom:.25rem}
.task-card p{font-size:.78rem;color:#8b949e;line-height:1.4}
.plan-box{background:#0d1117;border:1px solid #21262d;border-radius:6px;padding:.6rem .75rem;font-size:.82rem;color:#8b949e;margin:.5rem 0 .75rem;line-height:1.45}
.plan-box b{color:#3fb950}
.empty{padding:1.5rem;text-align:center;color:#8b949e;font-size:.85rem}
.footer-note{font-size:.75rem;color:#6e7681;margin-top:1rem;padding-top:.75rem;border-top:1px solid #21262d}
.copy-btn{font-size:.72rem;padding:.2rem .45rem;margin-left:.35rem}
.key-display{font-size:1.05rem;letter-spacing:.04em}
</style>
</head>
<body>
<h1>XEMS — Админ панел</h1>
<p class="subtitle">От тук управляваш <b>ключове за клиенти</b>, <b>таблети</b> и <b>обновявания на приложението</b>. Всичко е през браузър — не е нужен терминал.</p>

<nav>
  <button class="on" data-tab="dash" onclick="tab('dash')">Начало</button>
  <button data-tab="lic" onclick="tab('lic')">Ключове за клиенти</button>
  <button data-tab="dev" onclick="tab('dev')">Таблети</button>
  <button data-tab="rel" onclick="tab('rel')">Нова версия (APK)</button>
  <button data-tab="log" onclick="tab('log')">Журнал</button>
</nav>

<section id="dash" class="panel on">
  <div id="stats" class="card"></div>

  <h2 style="margin-bottom:.65rem;color:#8b949e;font-size:.9rem">Какво искаш да направиш?</h2>
  <div class="task-grid">
    <div class="task-card" onclick="tab('lic')">
      <div class="icon">🔑</div>
      <h3>Нов клиент / нов ключ</h3>
      <p>Създай лицензен ключ, дай го на таблета в Настройки → Достъп и лиценз → Активирай.</p>
    </div>
    <div class="task-card" onclick="tab('lic')">
      <div class="icon">⏸️</div>
      <h3>Спри или пусни достъп</h3>
      <p>Деактивирай ключ, когато клиентът спре да плаща. Таблетите се заключват до 24 ч.</p>
    </div>
    <div class="task-card" onclick="tab('dev')">
      <div class="icon">📱</div>
      <h3>Освободи слот за таблет</h3>
      <p>Махни стар таблет, за да може нов да ползва същия ключ.</p>
    </div>
    <div class="task-card" onclick="tab('rel')">
      <div class="icon">⬆️</div>
      <h3>Пусни нова версия</h3>
      <p>Регистрирай APK — таблетите ще видят „Изтегли и инсталирай“ при следващ старт.</p>
    </div>
    <div class="task-card" onclick="tab('lic')">
      <div class="icon">🦾</div>
      <h3>Добави костюм (MAC)</h3>
      <p>Разреши нов EMS костюм за клиент — бутон „Костюми“ при лиценза.</p>
    </div>
    <div class="task-card" onclick="tab('log')">
      <div class="icon">📋</div>
      <h3>Виж история</h3>
      <p>Кой ключ е създаден, кой таблет е активиран, кога.</p>
    </div>
  </div>

  <div class="card">
    <h2>Бързи стъпки</h2>
    <div class="steps">
      <div class="step"><b>1. Нов клиент</b> — Ключове → въведи име на залата → Създай ключ → копирай ключа → на таблета: Настройки → Достъп и лиценз → Активирай.</div>
      <div class="step"><b>2. Нова версия</b> — качи <code>xems27.apk</code> в GitHub → Нова версия → въведи version code/name → Регистрирай.</div>
      <div class="step"><b>3. Смяна на таблет</b> — Таблети → Премахни старото устройство → активирай ключа на новия таблет.</div>
    </div>
    <p class="footer-note">Сървър: Cloudflare (безплатен tier). APK: GitHub. Разходи при нормална употреба: $0.</p>
  </div>
</section>

<section id="lic" class="panel">
  <div class="intro">
    <b>Тук създаваш и управляваш ключове.</b>
    Всеки ключ отключва модули на таблета (таймер, музика, пулс, AI, гривна).
    Можеш да спреш ключ, да промениш костюми (MAC) или да видиш кои таблети го ползват.
  </div>

  <div class="card">
    <h2>Създай нов ключ</h2>
    <div class="row">
      <div style="min-width:160px"><label>Име на клиента / зала</label><input id="c_customer" placeholder="напр. Фитнес София"></div>
      <div style="min-width:200px">
        <label>Какво отключва</label>
        <select id="c_plan" onchange="updatePlanHint()">
          <option value="full">Всичко — таймер, музика, пулс, AI, гривна</option>
          <option value="pro">Pro — таймер, музика, пулс</option>
          <option value="base">Базов — само тренировка, без модули</option>
          <option value="base+arms">Базов + ръце 1:1</option>
          <option value="custom">По поръчка (ръчно в базата)</option>
        </select>
      </div>
      <div><label>Колко таблета</label><input id="c_devices" type="number" value="3" min="1" style="width:70px" title="Максимален брой таблети с този ключ"></div>
      <div><label>Валидност (дни)</label><input id="c_days" type="number" value="365" min="0" style="width:80px" title="0 = безсрочен"></div>
      <button onclick="createLicense()">Създай ключ</button>
    </div>
    <div id="plan_hint" class="plan-box"></div>
    <p class="field-hint">След създаване ключът се показва <b>веднъж</b> — копирай го и изпрати на клиента. На таблета: Настройки → Достъп и лиценз.</p>
    <div id="new_key"></div>
  </div>

  <div class="card">
    <h2>Всички ключове</h2>
    <p class="hint" style="margin-bottom:.5rem">
      <b>Детайли</b> — виж таблетите по ключа.
      <b>Костюми</b> — добави MAC адрес на EMS костюм.
      <b>Спри</b> — заключва модулите (до 24 ч на таблета).
    </p>
    <table id="lic_table"><thead><tr>
      <th>ID</th><th>Клиент</th><th>План</th><th>Ключ (посл. 4)</th><th>Таблети</th><th>Костюми</th><th>Статус</th><th>Действия</th>
    </tr></thead><tbody></tbody></table>
  </div>
</section>

<section id="dev" class="panel">
  <div class="intro">
    <b>Тук виждаш всички таблети</b>, които са активирали ключ.
    Ако клиентът смени таблет и лимитът е запълнен — махни старото устройство, за да освободиш слот.
    Промяната влиза в сила веднага; таблетът ще се заключи при следващото опресняване.
  </div>
  <div class="card">
    <h2>Активни таблети</h2>
    <table id="dev_table"><thead><tr>
      <th>ID на таблета</th><th>Клиент</th><th>Модел</th><th>Версия на приложението</th><th>Последно онлайн</th><th>В настройка?</th><th>Действие</th>
    </tr></thead><tbody></tbody></table>
  </div>
</section>

<section id="rel" class="panel">
  <div class="intro">
    <b>Тук казваш таблетите да обновят приложението.</b>
    APK файлът стои в GitHub; тук само регистрираш коя версия е актуална.
    Таблетите проверяват при старт (на ~12 ч) и показват „Изтегли и инсталирай“.
  </div>

  <div class="card">
    <h2>Регистрирай нова версия</h2>
    <div class="steps" style="margin-bottom:.85rem">
      <div class="step"><b>Стъпка 1.</b> Качи нов <code>xems27.apk</code> в GitHub (branch <code>main</code>).</div>
      <div class="step"><b>Стъпка 2.</b> Попълни полетата по-долу (version code/name от <code>RELEASE_VERSION</code>).</div>
      <div class="step"><b>Стъпка 3.</b> Натисни „Провери URL“, после „Регистрирай версия“.</div>
    </div>
    <div class="row">
      <div><label>Version code <span class="field-hint">(число, напр. 213)</span></label><input id="r_code" type="number" placeholder="213" style="width:90px"></div>
      <div><label>Version name <span class="field-hint">(напр. 1.1.88-ai)</span></label><input id="r_name" placeholder="1.1.88-ai" style="width:130px"></div>
      <div style="flex:1;min-width:240px"><label>URL на APK</label><input id="r_url" style="width:100%" value="https://github.com/Radilovk/ems/raw/main/xems27.apk"></div>
    </div>
    <div class="row">
      <div style="flex:1"><label>Съобщение за таблета <span class="field-hint">(какво е ново)</span></label><input id="r_notes" placeholder="Поправки и подобрения…" style="width:100%"></div>
      <div>
        <label>&nbsp;</label>
        <label style="display:flex;align-items:center;gap:.35rem;color:#e6edf3;font-size:.85rem;cursor:pointer" title="Без бутон „По-късно“ при старт">
          <input id="r_mandatory" type="checkbox"> Задължително обновяване
        </label>
      </div>
    </div>
    <div class="row actions">
      <button class="secondary" onclick="verifyRelease()">① Провери URL</button>
      <button onclick="registerRelease()">② Регистрирай версия</button>
    </div>
    <div id="rel_msg"></div>
    <div id="rel_verify"></div>
  </div>

  <div class="card">
    <h2>Регистрирани версии</h2>
    <p class="hint" style="margin-bottom:.5rem">Таблетите виждат само най-новата версия с по-голям code от текущия им.</p>
    <table id="rel_table"><thead><tr>
      <th>Code</th><th>Име</th><th>Размер</th><th>Регистрирана</th><th>Съобщение</th><th>Задължителна</th><th>Действия</th>
    </tr></thead><tbody></tbody></table>
  </div>
</section>

<section id="log" class="panel">
  <div class="intro">
    <b>История на действията</b> — създаване на ключове, активиране на таблети, спиране, обновявания.
  </div>
  <div class="card">
    <table id="log_table"><thead><tr>
      <th>Кога</th><th>Действие</th><th>Лиценз</th><th>Таблет</th><th>Детайли</th>
    </tr></thead><tbody></tbody></table>
  </div>
</section>

<div id="lic_modal" class="modal" onclick="if(event.target===this)closeLic()">
  <div class="modal-box">
    <h2 id="m_title">Лиценз</h2>
    <div id="m_body"></div>
    <div class="row actions" style="margin-top:.75rem">
      <button class="secondary" onclick="closeLic()">Затвори</button>
      <span id="m_actions"></span>
    </div>
  </div>
</div>

<div id="ems_modal" class="modal" onclick="if(event.target===this)closeEms()">
  <div class="modal-box">
    <h2 id="ems_title">Костюми (MAC адреси)</h2>
    <p class="hint">Въведи MAC адреси на EMS костюми, които този клиент може да ползва освен сдвоените в настройката на таблета. По един на ред.</p>
    <p id="ems_paired" class="plan-box" style="margin-bottom:.5rem"></p>
    <textarea id="ems_input" placeholder="AA:BB:CC:DD:EE:FF"></textarea>
    <div class="row actions" style="margin-top:.75rem">
      <button class="secondary" onclick="closeEms()">Отказ</button>
      <button onclick="saveEms()">Запази костюми</button>
    </div>
  </div>
</div>

<script>
const PLAN_INFO={
  full:{label:'Всичко',mods:'таймер, музика, пулс, AI, гривна',feat:''},
  pro:{label:'Pro',mods:'таймер, музика, пулс',feat:''},
  base:{label:'Базов',mods:'само тренировка (модулите заключени)',feat:''},
  'base+arms':{label:'Базов + ръце',mods:'само тренировка',feat:'ръце с нормална сила (1:1)'},
  custom:{label:'По поръчка',mods:'задава се ръчно',feat:''},
};
const ACTION_LABELS={
  activate:'Активиране на таблет',
  refresh:'Опресняване на жетон',
  create_license:'Създаден ключ',
  update_license:'Променен лиценз',
  remove_device:'Премахнат таблет',
  update_release:'Променена версия',
  delete_release:'Изтрита версия',
};

async function api(path,opts={}){
  const r=await fetch('/0123/api/'+path,{...opts,headers:{'Content-Type':'application/json',...(opts.headers||{})}});
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
  window.scrollTo({top:0,behavior:'smooth'});
}

function updatePlanHint(){
  const p=document.getElementById('c_plan').value;
  const info=PLAN_INFO[p]||PLAN_INFO.custom;
  let txt='<b>'+info.label+'</b> отключва: '+info.mods;
  if(info.feat) txt+=' + <b>'+info.feat+'</b>';
  document.getElementById('plan_hint').innerHTML=txt;
}
updatePlanHint();

function fmtTs(t){if(!t)return'—';return new Date(t*1000).toLocaleString('bg-BG',{dateStyle:'short',timeStyle:'short'})}
function fmtSize(n){n=+n||0;if(n>1e6)return(n/1e6).toFixed(1)+' MB';if(n>1e3)return(n/1e3).toFixed(0)+' KB';return n+' B'}
function fmtDev(id){if(!id)return'—';return id.length===16?id.slice(0,4)+'-'+id.slice(4,8)+'-'+id.slice(8,12)+'-'+id.slice(12):id}
function emsCount(t){try{return JSON.parse(t||'[]').length}catch(e){return 0}}
function planLabel(p){return(PLAN_INFO[p]||{}).label||p}
function actionLabel(a){return ACTION_LABELS[a]||a}

function copyText(text,btn){
  navigator.clipboard.writeText(text).then(()=>{
    const old=btn.textContent;btn.textContent='Копирано!';setTimeout(()=>btn.textContent=old,1500);
  }).catch(()=>prompt('Копирай:',text));
}

async function load(){
  const s=await api('stats');
  document.getElementById('stats').innerHTML=
    '<div class="stat"><span>Активни ключове</span><b>'+s.active_licenses+'</b></div>'+
    '<div class="stat"><span>Таблети онлайн</span><b>'+s.active_devices+'</b></div>'+
    '<div class="stat"><span>Последна версия</span><b>'+(s.latest_version_name||s.latest_version||'—')+'</b></div>';

  const l=await api('licenses');
  window._licenses=l.licenses||[];
  const licRows=window._licenses.map(x=>'<tr><td><code>'+x.id+'</code></td><td>'+(x.customer||'—')+'</td><td title="'+x.plan+'">'+planLabel(x.plan)+'</td><td>…'+x.key_hint+'</td><td>'+x.max_devices+'</td><td>'+emsCount(x.ems)+' <button class="secondary" onclick="editEms(\\''+x.id+'\\')">Костюми</button></td><td><span class="tag '+x.status+'">'+x.status+'</span></td><td class="actions">'+
    '<button class="secondary" onclick="showLic(\\''+x.id+'\\')">Детайли</button>'+
    (x.status==='active'?'<button class="danger" onclick="disable(\\''+x.id+'\\',\\''+(x.customer||x.id).replace(/'/g,"")+'\\')">Спри</button>':'<button class="secondary" onclick="enable(\\''+x.id+'\\')">Пусни отново</button>')+
    '</td></tr>').join('');
  document.querySelector('#lic_table tbody').innerHTML=licRows||'<tr><td colspan="8" class="empty">Няма ключове — създай първия от формата по-горе.</td></tr>';

  const r=await api('releases');
  document.querySelector('#rel_table tbody').innerHTML=(r.releases||[]).map(x=>
    '<tr><td>'+x.version_code+'</td><td>'+x.version_name+'</td><td>'+fmtSize(x.size)+'</td><td>'+fmtTs(x.published_at)+'</td><td>'+(x.notes||'—')+'</td><td>'+(x.mandatory?'да':'не')+'</td><td class="actions">'+
    '<button class="secondary" onclick="toggleMandatory('+x.version_code+','+(x.mandatory?0:1)+')" title="Промени дали обновяването е задължително">'+(x.mandatory?'Направи по избор':'Направи задължително')+'</button>'+
    '<button class="danger" onclick="deleteRelease('+x.version_code+',\\''+x.version_name+'\\')">Изтрий</button></td></tr>'
  ).join('')||'<tr><td colspan="7" class="empty">Няма регистрирани версии — таблетите няма да видят обновяване.</td></tr>';
}

async function loadDevices(){
  const d=await api('devices');
  document.querySelector('#dev_table tbody').innerHTML=(d.devices||[]).map(x=>'<tr><td><code>'+fmtDev(x.device_id)+'</code></td><td>'+(x.customer||'—')+'</td><td>'+(x.device_model||'—')+'</td><td>'+(x.app_version||'?')+' <span style="color:#8b949e">('+x.app_code+')</span></td><td>'+fmtTs(x.last_seen)+'</td><td>'+(x.setup?'<span class="tag active">да — админ</span>':'не')+'</td><td>'+
    (x.status==='active'?'<button class="danger" onclick="removeDevice(\\''+x.license_id+'\\',\\''+x.device_id+'\\')" title="Освобождава слот за нов таблет">Премахни таблет</button>':'<span class="tag removed">премахнат</span>')+
    '</td></tr>').join('')||'<tr><td colspan="7" class="empty">Няма активирани таблети. Ключът още не е ползван.</td></tr>';
}

async function loadAudit(){
  const a=await api('audit');
  document.querySelector('#log_table tbody').innerHTML=(a.audit||[]).map(x=>'<tr><td>'+fmtTs(x.ts)+'</td><td>'+actionLabel(x.action)+'</td><td><code>'+(x.license_id||'—')+'</code></td><td><code>'+fmtDev(x.device_id)+'</code></td><td>'+(x.detail||'—')+'</td></tr>').join('')||'<tr><td colspan="5" class="empty">Журналът е празен.</td></tr>';
}

async function verifyRelease(){
  const el=document.getElementById('rel_verify');
  el.innerHTML='<div class="msg">Проверявам APK файла…</div>';
  try{
    const r=await api('releases/verify',{method:'POST',body:JSON.stringify({url:document.getElementById('r_url').value})});
    el.innerHTML='<div class="msg">✓ Файлът е валиден · '+fmtSize(r.size)+' · SHA256: <code>'+r.sha256+'</code><br>Можеш да натиснеш „Регистрирай версия“.</div>';
  }catch(e){el.innerHTML='<div class="msg err">'+e.message+'</div>';}
}

async function registerRelease(){
  const el=document.getElementById('rel_msg');
  const code=+document.getElementById('r_code').value;
  const name=document.getElementById('r_name').value.trim();
  if(!code||!name){el.innerHTML='<div class="msg err">Попълни version code и version name.</div>';return;}
  el.innerHTML='<div class="msg">Регистрирам…</div>';
  try{
    const r=await api('releases/register',{method:'POST',body:JSON.stringify({
      version_code:code,version_name:name,
      object_key:document.getElementById('r_url').value,
      notes:document.getElementById('r_notes').value,
      mandatory:document.getElementById('r_mandatory').checked
    })});
    el.innerHTML='<div class="msg">✓ Версия <b>'+r.version_name+'</b> (code '+r.version_code+') е регистрирана. Таблетите ще я видят при следващ старт.</div>';
    document.getElementById('rel_verify').innerHTML='';
    load();
  }catch(e){el.innerHTML='<div class="msg err">'+e.message+'</div>';}
}

async function toggleMandatory(code,val){
  await api('releases/'+code,{method:'PATCH',body:JSON.stringify({mandatory:!!val})});
  load();
}
async function deleteRelease(code,name){
  if(!confirm('Изтрий версия '+name+' (code '+code+')?\\n\\nТаблетите няма да я виждат повече.')) return;
  await api('releases/'+code,{method:'DELETE'});
  load();
}

async function createLicense(){
  const customer=document.getElementById('c_customer').value.trim();
  if(!customer){document.getElementById('new_key').innerHTML='<div class="msg err">Въведи име на клиента / залата.</div>';return;}
  const r=await api('licenses/create',{method:'POST',body:JSON.stringify({
    customer,plan:document.getElementById('c_plan').value,
    max_devices:+document.getElementById('c_devices').value,
    expires_days:+document.getElementById('c_days').value||null
  })});
  document.getElementById('new_key').innerHTML=
    '<div class="msg">✓ Ключът е готов за <b>'+customer+'</b>:<br>'+
    '<span class="key-display"><code id="created_key">'+r.key+'</code></span>'+
    '<button class="secondary copy-btn" onclick="copyText(document.getElementById(\\'created_key\\').textContent,this)">Копирай</button><br>'+
    '<span style="font-size:.8rem;color:#8b949e">ID: '+r.id+' · Запиши ключа — няма да се покаже отново! · На таблета: Настройки → Достъп и лиценз → Активирай</span></div>';
  load();
}

let _emsLicId=null;
async function editEms(id){
  _emsLicId=id;
  const lic=(window._licenses||[]).find(x=>x.id===id)||{};
  let current=[];try{current=JSON.parse(lic.ems||'[]')}catch(e){}
  const a=await api('activations/'+id);
  const paired=new Set();
  (a.activations||[]).forEach(t=>{try{JSON.parse(t.ems_local||'[]').forEach(m=>paired.add(m))}catch(e){}});
  document.getElementById('ems_title').textContent='Костюми — '+(lic.customer||id);
  document.getElementById('ems_paired').innerHTML=paired.size
    ?'<b>Сдвоени от таблетите в настройка:</b> '+[...paired].join(', ')
    :'<b>Сдвоени от таблетите:</b> все още няма (ще се появят след настройка).';
  document.getElementById('ems_input').value=current.join('\\n');
  document.getElementById('ems_modal').classList.add('on');
}
function closeEms(){document.getElementById('ems_modal').classList.remove('on');_emsLicId=null;}
async function saveEms(){
  if(!_emsLicId) return;
  await api('licenses/'+_emsLicId,{method:'PATCH',body:JSON.stringify({ems:document.getElementById('ems_input').value})});
  closeEms();load();
}

async function showLic(id){
  const lic=(window._licenses||[]).find(x=>x.id===id)||{};
  const a=await api('activations/'+id);
  const acts=a.activations||[];
  const active=acts.filter(x=>x.status==='active').length;
  document.getElementById('m_title').textContent=lic.customer||id;
  document.getElementById('m_body').innerHTML=
    '<p><b>План:</b> '+planLabel(lic.plan)+' · <b>Статус:</b> '+lic.status+' · <b>Таблети:</b> '+active+' / '+lic.max_devices+'</p>'+
    '<p><b>Костюми от сървъра:</b> '+(JSON.parse(lic.ems||'[]').join(', ')||'няма — добави с бутон „Костюми“')+'</p>'+
    '<h3 style="margin-top:.75rem">Таблети с този ключ</h3>'+
    (acts.length?'<table><tr><th>ID</th><th>Модел</th><th>Версия</th><th>Последно</th><th>Статус</th></tr>'+
    acts.map(x=>'<tr><td><code>'+fmtDev(x.device_id)+'</code></td><td>'+(x.device_model||'—')+'</td><td>'+(x.app_version||'?')+'</td><td>'+fmtTs(x.last_seen)+'</td><td><span class="tag '+x.status+'">'+x.status+'</span></td></tr>').join('')+'</table>'
    :'<p class="hint">Ключът още не е активиран на таблет. Дай го на клиента: Настройки → Достъп и лиценз.</p>');
  document.getElementById('m_actions').innerHTML=
    '<button class="secondary" onclick="closeLic();editEms(\\''+id+'\\')">Костюми</button>'+
    (lic.status==='active'?'<button class="danger" onclick="closeLic();disable(\\''+id+'\\',\\''+(lic.customer||id).replace(/'/g,"")+'\\')">Спри ключа</button>':'<button onclick="closeLic();enable(\\''+id+'\\')">Пусни ключа</button>');
  document.getElementById('lic_modal').classList.add('on');
}
function closeLic(){document.getElementById('lic_modal').classList.remove('on')}

async function removeDevice(licId,devId){
  if(!confirm('Премахни таблет '+fmtDev(devId)+'?\\n\\nОсвобождава един слот — нов таблет може да активира същия ключ.')) return;
  await api('activations/'+licId+'/'+devId+'/remove',{method:'POST'});
  loadDevices();load();
}

async function disable(id,name){
  if(!confirm('Спри ключа за „'+name+'“?\\n\\nТаблетите ще заключат модулите при следващото опресняване (до 24 ч).')) return;
  await api('licenses/'+id,{method:'PATCH',body:JSON.stringify({status:'disabled'})});load();
}
async function enable(id){
  await api('licenses/'+id,{method:'PATCH',body:JSON.stringify({status:'active'})});load();
}

load();
</script>
</body>
</html>`;
