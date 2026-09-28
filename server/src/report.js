// The client's copy of the tablet's training report (branding/report/session-report.html): the same page,
// fed by the client's records on the server instead of the tablet's storage. The page is the same for
// everyone (cacheable); the records come from /v1/history/<cardId> in the browser.


const STYLE = '<style>#delBtn,#shareBtn,#rotBtn,#demoBtn,#demoTag,#vShort,#vFull,#cardSub,#sheet{display:none!important}</style>';

/**
 * The bridge the report page expects (window.XemsReport), made from one fetch of /v1/history/<cardId> (the id
 * comes from the page's own path, so the page is the same for every client and cacheable). The records arrive
 * gzip + base64 and are unpacked here, in the browser; the page waits for `ready`.
 */
export function bridgeScript() {
  return `<script>(function(){
var m=location.pathname.match(/^\\/r\\/([A-Za-z0-9]+)/),ID=m?m[1]:"",qs=new URLSearchParams(location.search),idx=[],recs={},who={};
try{localStorage.setItem("xems.report.view","short");}catch(e){}
function unz(b64){var s=atob(b64),u=new Uint8Array(s.length);for(var i=0;i<s.length;i++)u[i]=s.charCodeAt(i);
  return new Response(new Blob([u]).stream().pipeThrough(new DecompressionStream("gzip"))).text();}
var ready=fetch("/v1/history/"+ID).then(function(r){if(!r.ok)throw new Error(r.status);return r.json();}).then(function(d){
  if(!d||!d.ok)throw new Error("x");who=d.client||{};var R=d.recs||{};
  idx=(d.sessions||[]).filter(function(s){return R[s.id];});
  return Promise.all(idx.map(function(s){return unz(R[s.id]).then(function(t){recs[s.id]=t;},function(){recs[s.id]="null";});}));
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

/** The report page with the bridge in front of its own script (the same HTML for every client). */
export function renderReport(template) {
  return template.replace('</head>', STYLE + bridgeScript() + '</head>');
}
