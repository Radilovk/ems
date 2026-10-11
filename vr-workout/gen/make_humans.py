"""Generate athletic coaches from MakeHuman / MPFB2 data (CC0) → vr-workout/assets/coaches/gen_*.glb.

Body = MPFB2 base mesh + macro targets (gender, age, muscle, weight, height, proportions, ethnicity), rig = MPFB2
"game_engine" (Unreal names, the same as the built-in coach), skin weights from MPFB2. The outfit, eyes and a short
hair cap are painted as vertex colours (the free system assets with real clothes/hair are not on GitHub).

usage (Blender as a Python module, `pip install bpy` for the running Python):
  git clone --depth 1 https://github.com/makehumancommunity/mpfb2 /tmp/mpfb2
  python gen/make_humans.py /tmp/mpfb2/src/mpfb/data vr-workout/assets/coaches [name …]
"""
import gzip, json, math, os, sys
import numpy as np
import bpy

DATA, OUT = sys.argv[1], sys.argv[2]
ONLY = sys.argv[3:]

# name: gender (0 f … 1 m), age (0.5 = 25 y, 0.75 ≈ 55 y), muscle, weight, height (0..1), race, skin, outfit
PEOPLE = {
    "gen_ivan":   dict(g=1.0, a=0.52, m=0.85, w=0.45, h=0.55, race="caucasian", skin=(0.86, 0.66, 0.53),
                       hair=(0.16, 0.11, 0.07), top="tank", top_c=(0.08, 0.09, 0.10), bottom="shorts",
                       bot_c=(0.10, 0.55, 0.62), shoe_c=(0.20, 0.22, 0.25)),
    "gen_maria":  dict(g=0.0, a=0.52, m=0.70, w=0.42, h=0.55, race="caucasian", skin=(0.90, 0.71, 0.60),
                       hair=(0.30, 0.17, 0.08), top="bra", top_c=(0.85, 0.25, 0.42), bottom="leggings",
                       bot_c=(0.10, 0.10, 0.13), shoe_c=(0.95, 0.95, 0.97)),
    "gen_kofi":   dict(g=1.0, a=0.54, m=1.00, w=0.55, h=0.52, race="african", skin=(0.42, 0.27, 0.18),
                       hair=(0.05, 0.04, 0.04), top="tee", top_c=(0.95, 0.95, 0.96), bottom="shorts",
                       bot_c=(0.12, 0.13, 0.16), shoe_c=(0.85, 0.25, 0.15)),
    "gen_amara":  dict(g=0.0, a=0.53, m=0.65, w=0.50, h=0.55, race="african", skin=(0.48, 0.31, 0.21),
                       hair=(0.06, 0.05, 0.05), top="tank", top_c=(0.98, 0.70, 0.20), bottom="shorts",
                       bot_c=(0.12, 0.12, 0.15), shoe_c=(0.95, 0.95, 0.97)),
    "gen_kenji":  dict(g=1.0, a=0.53, m=0.62, w=0.38, h=0.52, race="asian", skin=(0.88, 0.72, 0.57),
                       hair=(0.04, 0.04, 0.05), top="tee", top_c=(0.20, 0.30, 0.55), bottom="shorts",
                       bot_c=(0.15, 0.15, 0.17), shoe_c=(0.95, 0.95, 0.97)),
    "gen_mei":    dict(g=0.0, a=0.52, m=0.55, w=0.40, h=0.52, race="asian", skin=(0.92, 0.77, 0.64),
                       hair=(0.05, 0.04, 0.04), top="bra", top_c=(0.30, 0.75, 0.70), bottom="leggings",
                       bot_c=(0.22, 0.22, 0.30), shoe_c=(0.95, 0.95, 0.97)),
    "gen_georgi": dict(g=1.0, a=0.72, m=0.50, w=0.62, h=0.55, race="caucasian", skin=(0.84, 0.64, 0.52),
                       hair=(0.45, 0.43, 0.42), top="tee", top_c=(0.55, 0.12, 0.14), bottom="shorts",
                       bot_c=(0.13, 0.14, 0.18), shoe_c=(0.30, 0.30, 0.33)),
    "gen_elena":  dict(g=0.0, a=0.72, m=0.45, w=0.60, h=0.48, race="caucasian", skin=(0.89, 0.70, 0.60),
                       hair=(0.35, 0.22, 0.12), top="tee", top_c=(0.45, 0.35, 0.65), bottom="leggings",
                       bot_c=(0.12, 0.12, 0.16), shoe_c=(0.95, 0.95, 0.97)),
}


def read_obj(path):
    V, VT, F, FT, G = [], [], [], [], []
    group = ""
    for line in open(path):
        if line.startswith("v "):
            V.append([float(x) for x in line.split()[1:4]])
        elif line.startswith("vt "):
            VT.append([float(x) for x in line.split()[1:3]])
        elif line.startswith("g "):
            group = line.split()[1]
        elif line.startswith("f "):
            idx = [p.split("/") for p in line.split()[1:]]
            F.append([int(i[0]) - 1 for i in idx])
            FT.append([int(i[1]) - 1 if len(i) > 1 and i[1] else -1 for i in idx])
            G.append(group)
    return np.array(V), np.array(VT), F, FT, G


def target(rel):
    p = os.path.join(DATA, "targets", rel)
    if not os.path.exists(p):
        return None
    d = []
    for line in gzip.open(p, "rt"):
        s = line.split()
        if len(s) == 4 and not line.startswith("#"):
            d.append((int(s[0]), float(s[1]), float(s[2]), float(s[3])))
    return d


def three(x):  # min/average/max weights of a 0..1 slider
    if x < 0.5:
        return {"min": 1 - 2 * x, "average": 2 * x, "max": 0.0}
    return {"min": 0.0, "average": 2 - 2 * x, "max": 2 * x - 1}


def morph(V, p):
    V = V.copy()
    gw = {"female": 1 - p["g"], "male": p["g"]}
    old = max(0.0, (p["a"] - 0.5) * 2)
    aw = {"young": 1 - old, "old": old}
    mw, ww = three(p["m"]), three(p["w"])

    def add(rel, k):
        if k < 1e-4:
            return
        t = target(rel)
        if t is None:
            print("  missing", rel)
            return
        for i, x, y, z in t:
            V[i] += k * np.array([x, y, z])

    for g, kg in gw.items():
        for a, ka in aw.items():
            add(f"macrodetails/{p['race']}-{g}-{a}.target.gz", kg * ka)
            for m, km in mw.items():
                for w, kw in ww.items():
                    k = kg * ka * km * kw
                    add(f"macrodetails/universal-{g}-{a}-{m}muscle-{w}weight.target.gz", k)
                    h = p["h"]
                    add(f"macrodetails/height/{g}-{a}-{m}muscle-{w}weight-{'max' if h > 0.5 else 'min'}height.target.gz",
                        k * abs(h - 0.5) * 2)
                    add(f"macrodetails/proportions/{g}-{a}-{m}muscle-{w}weight-idealproportions.target.gz", k * 0.8)
    return V


def to_blender(v):  # MakeHuman obj: Y up, decimetres, faces +Z → Blender: Z up, metres, faces -Y
    return np.stack([v[:, 0], -v[:, 2], v[:, 1]], axis=1) * 0.1


def build(name, p, base):
    V0, VT, F, FT, G = base
    V = to_blender(morph(V0, p))
    groups = {}
    for f, g in zip(F, G):
        groups.setdefault(g, set()).update(f)
    cube = {g: V[list(ix)].mean(axis=0) for g, ix in groups.items()}
    rig = json.load(open(os.path.join(DATA, "rigs/standard/rig.game_engine.json")))
    wts = json.load(open(os.path.join(DATA, "rigs/standard/weights.game_engine.json")))["weights"]

    def point(spec):
        if spec["strategy"] == "CUBE":
            return cube[spec["cube_name"]]
        return V[spec["vertex_indices"]].mean(axis=0)

    keep_groups = {"body", "helper-l-eye", "helper-r-eye"}
    faces = [(f, ft, g) for f, ft, g in zip(F, FT, G) if g in keep_groups]
    used = sorted({i for f, _, _ in faces for i in f})
    remap = {o: n for n, o in enumerate(used)}
    Vk = V[used]
    floor = Vk[:, 2].min()
    Vk = Vk - [0, 0, floor]
    V = V - [0, 0, floor]
    cube = {k: c - [0, 0, floor] for k, c in cube.items()}

    # ---- colours: skin, outfit by body region (bone weights + heights), eyes, hair cap
    W = {b: np.zeros(len(V)) for b in wts}
    for b, lst in wts.items():
        for i, w in lst:
            W[b][i] = w
    z = V[:, 2]
    j = {b: point(rig[b]["head"]) for b in rig}
    knee, hip = j["calf_l"][2], j["thigh_l"][2]
    ankle, waist = j["foot_l"][2], j["spine_01"][2] + 0.02
    elbow, neck = j["lowerarm_l"][2], j["neck_01"][2]
    arm = sum(W[b] for b in W if any(k in b for k in ("upperarm", "lowerarm", "hand", "thumb", "index", "middle",
                                                      "ring", "pinky")))
    upper = sum(W[b + s] for b in ("upperarm_",) for s in ("l", "r"))
    feet = sum(W[b + s] for b in ("foot_", "ball_") for s in ("l", "r"))
    col = np.tile(np.array(p["skin"]), (len(V), 1))
    front = -V[:, 1]                       # Blender front is -Y
    bottom_top = waist + 0.01
    if p["bottom"] == "shorts":
        bot_low = knee + 0.40 * (hip - knee)
    else:
        bot_low = ankle + 0.05
    m_bottom = (z > bot_low) & (z < bottom_top) & (arm < 0.3)
    col[m_bottom] = p["bot_c"]
    chest = j["spine_03"][2]
    if p["top"] == "bra":
        m_top = (z > chest - 0.11) & (z < neck - 0.07) & (arm < 0.25)
    elif p["top"] == "tank":
        m_top = (z > waist - 0.03) & (z < neck - 0.05 + 0.03 * (front < 0)) & (arm < 0.25)
    else:                                   # tee: short sleeves to mid upper arm
        sleeve = (upper > 0.3) & (z > elbow + 0.6 * (j["upperarm_l"][2] - elbow))
        m_top = ((z > waist - 0.03) & (z < neck - 0.035 + 0.02 * (front < 0)) & (arm < 0.3)) | sleeve
    col[m_top & ~m_bottom] = p["top_c"]
    m_shoe = (feet > 0.35) & (z < ankle + 0.035)
    col[m_shoe] = p["shoe_c"]
    col[m_shoe & (z < 0.022)] = (0.97, 0.97, 0.97)
    col[(feet > 0.2) & (z >= ankle + 0.035) & (z < ankle + 0.075)] = (0.96, 0.96, 0.96)   # socks
    # short hair: the scalp above the hairline (forehead in front, behind the ears at the back)
    eye = np.mean([V[sorted(groups[f"helper-{s}-eye"])].mean(axis=0) for s in ("l", "r")], axis=0)
    head_w = W.get("head", np.zeros(len(V)))
    back = V[:, 1] - eye[1]                          # + = behind the eyes
    hairline = eye[2] + 0.055 - np.clip(back, 0, 0.12) * 0.9
    m_hair = (head_w > 0.5) & (z > hairline) & ~((np.abs(V[:, 0] - eye[0]) > 0.055) & (back < 0.09) & (z < eye[2] + 0.03))
    col[m_hair] = p["hair"]
    for s in ("l", "r"):
        ix = sorted(groups[f"helper-{s}-eye"])
        c = V[ix].mean(axis=0)
        d = V[ix] - c
        d /= np.linalg.norm(d, axis=1, keepdims=True)
        f = -d[:, 1]
        e = np.tile([0.93, 0.92, 0.9], (len(ix), 1))
        e[f > 0.86] = (0.30, 0.20, 0.12)
        e[f > 0.96] = (0.03, 0.03, 0.03)
        col[ix] = e
    # eyebrows: a soft darker band above each eye on the skin
    for s, sx in (("l", 1), ("r", -1)):
        c = cube.get(f"joint-{s}-eye")
        if c is None:
            c = V[sorted(groups[f"helper-{s}-eye"])].mean(axis=0)
        brow = c + [0, -0.012, 0.025]
        dist = np.sqrt(((V[:, 0] - brow[0]) / 0.024) ** 2 + ((V[:, 2] - brow[2]) / 0.006) ** 2)
        m = (dist < 1.0) & (V[:, 1] < c[1]) & (W.get("head", np.zeros(len(V))) > 0.5)
        col[m] = col[m] * 0.35 + np.array(p["hair"]) * 0.65

    # ---- Blender objects
    bpy.ops.wm.read_factory_settings(use_empty=True)
    me = bpy.data.meshes.new(name)
    me.from_pydata(Vk.tolist(), [], [[remap[i] for i in f] for f, _, _ in faces])
    me.update()
    uv = me.uv_layers.new(name="UVMap")
    for (f, ft, _), poly in zip(faces, me.polygons):
        for li, t in zip(poly.loop_indices, ft):
            uv.data[li].uv = VT[t] if t >= 0 else (0, 0)
    ca = me.color_attributes.new("Col", "BYTE_COLOR", "POINT")
    for n, o in enumerate(used):
        c = col[o]
        ca.data[n].color = (float(c[0]), float(c[1]), float(c[2]), 1.0)
    for poly in me.polygons:
        poly.use_smooth = True
    ob = bpy.data.objects.new(name, me)
    bpy.context.scene.collection.objects.link(ob)
    mat = bpy.data.materials.new(name + "_mat")
    nt = mat.node_tree
    bsdf = nt.nodes["Principled BSDF"]
    vc = nt.nodes.new("ShaderNodeVertexColor")
    vc.layer_name = "Col"
    nt.links.new(vc.outputs["Color"], bsdf.inputs["Base Color"])
    bsdf.inputs["Roughness"].default_value = 0.62
    me.materials.append(mat)

    arm_d = bpy.data.armatures.new(name + "_rig")
    rig_ob = bpy.data.objects.new("Armature", arm_d)
    bpy.context.scene.collection.objects.link(rig_ob)
    bpy.context.view_layer.objects.active = rig_ob
    bpy.ops.object.mode_set(mode="EDIT")
    eb = {}
    for b, d in rig.items():
        e = arm_d.edit_bones.new(b)
        e.head = point(d["head"])
        e.tail = point(d["tail"])
        if (e.tail - e.head).length < 1e-4:
            e.tail = e.head + type(e.head)((0, 0, 0.02))
        e.roll = d.get("roll", 0.0)
        eb[b] = e
    for b, d in rig.items():
        if d.get("parent"):
            eb[b].parent = eb[d["parent"]]
            eb[b].use_connect = False
    bpy.ops.object.mode_set(mode="OBJECT")
    for b, lst in wts.items():
        vg = ob.vertex_groups.new(name=b)
        for i, w in lst:
            if i in remap:
                vg.add([remap[i]], w, "REPLACE")
    ob.parent = rig_ob
    mod = ob.modifiers.new("Armature", "ARMATURE")
    mod.object = rig_ob
    os.makedirs(OUT, exist_ok=True)
    out = os.path.join(OUT, name + ".glb")
    bpy.ops.export_scene.gltf(filepath=out, export_format="GLB", export_animations=False, export_skins=True)
    print("wrote", out, os.path.getsize(out) // 1024, "KB", "tall %.2f m" % Vk[:, 2].max())


base = read_obj(os.path.join(DATA, "3dobjs/base.obj"))
for name, p in PEOPLE.items():
    if not ONLY or name in ONLY:
        build(name, p, base)
