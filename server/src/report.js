// The client's copy of the tablet's training report (branding/report/session-report.html): the same page,
// fed by the client's records on the server instead of the tablet's storage. The page is the same for
// everyone (cacheable); the records come from /v1/history/<cardId> in the browser.

export const REPORT_LAST = 8; // how many of the newest trainings the page loads

const STYLE = '<style>#delBtn,#shareBtn,#rotBtn,#demoBtn,#demoTag,#vShort,#vFull,#cardSub,#sheet{display:none!important}</style>';

/** The bridge the report page expects (window.XemsReport), made from fetches; the page waits for `ready`. */
export function bridgeScript(cardId) {
  return `<script>(function(){
var ID=${JSON.stringify(cardId).replace(/</g, "\\u003c")},N=${REPORT_LAST},qs=new URLSearchParams(location.search),idx=[],recs={},who={};
try{localStorage.setItem("xems.report.view","short");}catch(e){}
function get(u,t){return fetch(u).then(function(r){if(!r.ok)throw new Error(r.status);return t?r.text():r.json();});}
var ready=get("/v1/history/"+ID).then(function(d){
  if(!d||!d.ok)throw new Error("x");who=d.client||{};idx=(d.sessions||[]).slice(-N);
  return Promise.all(idx.map(function(m){return get("/v1/history/"+ID+"/"+m.id,true).then(function(t){recs[m.id]=t;},function(){recs[m.id]="null";});}));
});
window.XemsReport={ready:ready,
  lang:function(){return /[?&#]en\\b/.test(location.href)?"en":"bg";},
  theme:function(){return qs.get("theme")==="dark"?"dark":"light";},
  client:function(){return JSON.stringify({name:who.name||""});},
  sessions:function(){return JSON.stringify(idx);},
  session:function(id){return recs[id]||"null";},
  focus:function(){return idx.length?String(idx[idx.length-1].id):"";},
  cardUrl:function(){return "";},auto:function(){return false;},
  putScores:function(){},refreshCard:function(){},deleteSession:function(){},
  close:function(){if(history.length>1)history.back();else window.close();}
};
})();</script>`;
}

/** The report page with the bridge in front of its own script. */
export function renderReport(template, cardId) {
  return template.replace('</head>', STYLE + bridgeScript(cardId) + '</head>');
}
