// Spine bend vs lean, from real people (CMU clips): fits SPINE_FIT in motion-core.js (docs/xems-motion.md "Trunk sensor place").
//   node scripts/motion/spine-fit.js   → per spine level s: bend = a·lean + b, r, sd
const fs=require('fs'),vm=require('vm'),M=require('../../motion/viewer/motion-core.js');
const {mul,T,mv,logm,slerpM,yawOf,rz,dot}=M.m; const slerp=(A,B,k)=>mul(M.m.expm(M.m.sc(logm(mul(B,T(A))),k)),A);
const c={self:{}};vm.runInNewContext(fs.readFileSync(require('path').join(__dirname, '../../motion/mocap/cmu.js'),'utf8'),c);const D=c.self.XEMS_MOCAP;
const lean=(R)=>{const up=mv(R,[0,0,1]);return Math.atan2(dot(up,mv(rz(yawOf(R)),[1,0,0])),up[2]);};
for(const s of [0,0.18,0.36,0.67,1]){
 let n=0,sx=0,sy=0,sxx=0,sxy=0,syy=0;
 for(let i=0;i<D.clips.length;i++){const tl=M.sim.Timeline.session(D,[i]);for(let t=10;t<tl.len;t+=0.05){const f=tl.frame(t);
  const Rp=f.R.pelvis,Rt=f.R.trunk;const d=logm(mul(T(Rp),Rt))[1];const L=lean(slerp(Rp,Rt,s));
  n++;sx+=L;sy+=d;sxx+=L*L;sxy+=L*d;syy+=d*d;}}
 const a=(n*sxy-sx*sy)/(n*sxx-sx*sx),b=(sy-a*sx)/n; const r=(n*sxy-sx*sy)/Math.sqrt((n*sxx-sx*sx)*(n*syy-sy*sy));
 const sd=Math.sqrt(syy/n-(sy/n)**2);
 console.log('s',s,'a',a.toFixed(3),'b(deg)',(b*57.3).toFixed(1),'r',r.toFixed(2),'spine flex sd',(sd*57.3).toFixed(1));
}
