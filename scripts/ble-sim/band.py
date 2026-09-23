#!/usr/bin/env python3
"""Xiaomi Band 8 (FE95 / protobuf V1) simulator — independent of the XEMS Java code.
Protocol mirrored from Gadgetbridge XiaomiCharacteristic / XiaomiAuthService (band side).
Line protocol on stdin/stdout:
  in : W <char> <hex>         phone wrote to characteristic
  out: N <char> <hex>         band notifies on characteristic
       X <reason>             band drops the link
       L <text>               log
       .                      end of reply batch
"""
import sys, os, hmac, hashlib, struct, time
from Crypto.Cipher import AES

AUTH_KEY = bytes.fromhex(sys.argv[1])
STRICT_ACK_CHANNEL = os.environ.get("STRICT", "1") == "1"

def out(*a): print(*a, flush=True)
def log(t): out("L", t)

# ---- protobuf helpers -----------------------------------------------------
def varint(v):
    r=b""
    while True:
        b=v&0x7f; v>>=7
        if v: r+=bytes([b|0x80])
        else: return r+bytes([b])
def f_var(n,v): return varint(n<<3)+varint(v)
def f_bytes(n,b): return varint((n<<3)|2)+varint(len(b))+b
def parse(buf):
    i=0; d={}
    while i<len(buf):
        key=0; s=0
        while True:
            b=buf[i]; i+=1; key|=(b&0x7f)<<s; s+=7
            if not b&0x80: break
        fn,wt=key>>3,key&7
        if wt==0:
            v=0; s=0
            while True:
                b=buf[i]; i+=1; v|=(b&0x7f)<<s; s+=7
                if not b&0x80: break
        elif wt==2:
            l=0; s=0
            while True:
                b=buf[i]; i+=1; l|=(b&0x7f)<<s; s+=7
                if not b&0x80: break
            v=buf[i:i+l]; i+=l
        elif wt==5: v=buf[i:i+4]; i+=4
        elif wt==1: v=buf[i:i+8]; i+=8
        else: raise ValueError("wt %d"%wt)
        d.setdefault(fn,[]).append(v)
    return d

# ---- crypto (same math as Gadgetbridge computeAuthStep3Hmac / CCM 4-byte tag) ----
def step2(phone_nonce, watch_nonce):
    k = hmac.new(phone_nonce+watch_nonce, AUTH_KEY, hashlib.sha256).digest()
    out_=b""; tmp=b""; c=1
    while len(out_)<64:
        tmp = hmac.new(k, tmp+b"miwear-auth"+bytes([c]), hashlib.sha256).digest()
        out_+=tmp; c+=1
    o=out_[:64]
    # phone perspective: dec=0:16 enc=16:32 decNonce=32:36 encNonce=36:40
    return dict(p_dec=o[0:16], p_enc=o[16:32], p_dec_n=o[32:36], p_enc_n=o[36:40])
def ccm_enc(key, n4, ctr, pt):
    c=AES.new(key, AES.MODE_CCM, nonce=n4+struct.pack("<ii",0,ctr), mac_len=4)
    ct,tag=c.encrypt_and_digest(pt); return ct+tag
def ccm_dec(key, n4, ctr, data):
    c=AES.new(key, AES.MODE_CCM, nonce=n4+struct.pack("<ii",0,ctr), mac_len=4)
    return c.decrypt_and_verify(data[:-4], data[-4:])

# ---- band state -----------------------------------------------------------
st = dict(keys=None, phone_nonce=None, watch_nonce=os.urandom(16), authed=False,
          pending_ack=None, rt=False, rt_sent=0, cmds=[], clock=False, devinfo=False, userinfo=False)

def single(char, proto, encrypt):
    if encrypt:
        k=st["keys"]; ct=ccm_enc(k["p_dec"], k["p_dec_n"], 0, proto)   # band->phone: counter 0
        frame=bytes([0,0,2,1])+ct
    else:
        frame=bytes([0,0,2,2])+proto
    st["pending_ack"]=char
    out("N", char, frame.hex())

def cmd(t,s,extra=b""): return f_var(1,t)+f_var(2,s)+extra

def on_phone_command(proto):
    d=parse(proto); t=d[1][0]; s=d.get(2,[0])[0]
    st["cmds"].append("%d/%d"%(t,s)); log("band got cmd %d/%d"%(t,s))
    if t==1 and s==26:
        auth=parse(d[3][0]); pn=parse(auth[30][0])[1][0]
        st["phone_nonce"]=pn; st["keys"]=step2(pn, st["watch_nonce"])
        k=st["keys"]
        wh=hmac.new(k["p_dec"], st["watch_nonce"]+pn, hashlib.sha256).digest()
        single("51", cmd(1,26, f_bytes(3, f_bytes(31, f_bytes(1,st["watch_nonce"])+f_bytes(2,wh)))), False)
    elif t==1 and s==27:
        k=st["keys"]; a3=parse(parse(d[3][0])[32][0])
        exp=hmac.new(k["p_enc"], st["phone_nonce"]+st["watch_nonce"], hashlib.sha256).digest()
        if a3[1][0]!=exp: out("X","auth step3 encryptedNonces mismatch"); return
        try:
            di=parse(ccm_dec(k["p_enc"], k["p_enc_n"], 0, a3[2][0]))
        except Exception as e:
            out("X","auth step3 deviceInfo decrypt failed: %s"%e); return
        log("auth ok, phone name=%r"%di.get(3,[b"?"])[0])
        st["authed"]=True
        single("51", cmd(1,27), False)
    elif t==2 and s==3: st["clock"]=True
    elif t==2 and s==2:
        st["devinfo"]=True
        single("51", cmd(2,2, f_bytes(4, f_bytes(3, f_bytes(1,b"SN123")+f_bytes(2,b"2.3.14")+f_bytes(3,b"M2239B1")))), True)
    elif t==8 and s==0: st["userinfo"]=True
    elif t==8 and s==45:
        st["rt"]=True; log("realtime START")
    elif t==8 and s==11:
        log("WARN phone overwrote user HR config (8/11)")
    elif t==8 and s==46: st["rt"]=False

def emit_realtime():
    if st["rt"] and st["pending_ack"] is None and st["rt_sent"]<5:
        hr = 0 if st["rt_sent"]==0 else 70+st["rt_sent"]
        rts=f_var(1,1234)+f_var(2,50)+f_var(4,hr)
        single("51", cmd(8,47, f_bytes(10, f_bytes(39, rts))), True)
        st["rt_sent"]+=1
        return True
    return False

for line in sys.stdin:
    parts=line.split()
    if not parts: continue
    if parts[0]=="TICK":
        emit_realtime(); out("."); continue
    if parts[0]=="SUMMARY":
        log("summary cmds=%s rt_sent=%d"%(",".join(st["cmds"]), st["rt_sent"])); out("."); continue
    _, char, hx = parts; data=bytes.fromhex(hx)
    if data[0:2]!=b"\0\0": log("chunk data on %s (unsupported in sim)"%char); out("."); continue
    typ=data[2]
    if typ==3:   # phone ACKs a band frame
        if st["pending_ack"] is None:
            log("unexpected ACK on %s"%char)
        elif char!=st["pending_ack"]:
            if STRICT_ACK_CHANNEL:
                out("X","ACK for frame on %s arrived on %s — band never sees it, drops link"%(st["pending_ack"],char)); out("."); continue
            log("ACK on wrong channel %s (lenient)"%char)
        st["pending_ack"]=None
        out("."); continue
    if typ==2:
        if char!="52": log("command written to %s"%char)
        enc=data[3]
        _skip_ack = os.environ.get("NOACK_FIRST_ENC")=="1" and enc==1 and not st.get("skipped")
        if _skip_ack:
            st["skipped"]=True; log("band swallows ACK for first encrypted command")
        else:
            out("N", char, "00000300")        # band ACKs phone command on the write char
        if enc==1:
            idx=struct.unpack("<H",data[4:6])[0]; k=st["keys"]
            try: proto=ccm_dec(k["p_enc"], k["p_enc_n"], idx, data[6:])
            except Exception as e: out("X","cannot decrypt phone cmd idx=%d: %s"%(idx,e)); out("."); continue
        else:
            if st["authed"]: out("X","plaintext command after auth"); out("."); continue
            proto=data[4:]
        on_phone_command(proto)
        out("."); continue
    log("unhandled frame %s"%hx); out(".")
