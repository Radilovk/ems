"""Auto-rig an unrigged humanoid in T/A-pose: joints from the mesh's own proportions, Unreal bone names, Blender
bone-heat skin weights. usage: python autorig.py in.gltf|glb out.glb"""
import sys, os, bpy, numpy as np
from mathutils import Vector
src, dst = sys.argv[1], sys.argv[2]
bpy.ops.wm.read_factory_settings(use_empty=True)
bpy.ops.import_scene.gltf(filepath=src)
for ob in list(bpy.data.objects):
    if ob.type != "MESH":
        continue
    mw = ob.matrix_world.copy(); ob.parent = None; ob.matrix_world = mw
for ob in list(bpy.data.objects):
    if ob.type != "MESH":
        bpy.data.objects.remove(ob)
meshes = [o for o in bpy.data.objects if o.type == "MESH"]
bpy.ops.object.select_all(action="DESELECT")
for o in meshes:
    o.select_set(True)
bpy.context.view_layer.objects.active = meshes[0]
bpy.ops.object.join()
body = bpy.context.view_layer.objects.active
bpy.ops.object.transform_apply(location=True, rotation=True, scale=True)
V = np.array([v.co[:] for v in body.data.vertices])
zmin, zmax = V[:, 2].min(), V[:, 2].max()
H = zmax - zmin
k = 1.70 / H                                     # to metres, ~1.70 m
body.scale = (k, k, k)
bpy.ops.object.transform_apply(scale=True)
V = np.array([v.co[:] for v in body.data.vertices])
V[:, 2] -= V[:, 2].min()
cx = V[:, 0].mean()
body.location = (-cx, -np.median(V[:, 1]), -0.0)
body.location.z = -(np.array([v.co[2] for v in body.data.vertices]).min())
bpy.ops.object.transform_apply(location=True)
V = np.array([v.co[:] for v in body.data.vertices]); H = V[:, 2].max()
fwd = -1.0                                       # glTF +Z forward → Blender -Y


def slice_at(z, band=0.012):
    return V[np.abs(V[:, 2] - z) < band]


def leg_x(z, side):
    s = slice_at(z)
    s = s[(s[:, 0] * side > 0.02)]
    return s[:, 0].mean() if len(s) else side * 0.09


hip_z, knee_z, ankle_z = 0.53 * H, 0.285 * H, 0.05 * H
J = {}
for s, side in (("l", 1), ("r", -1)):
    lx = leg_x(knee_z, side)
    J["thigh_" + s] = Vector((side * abs(leg_x(hip_z - 0.06, side)), 0, hip_z - 0.02))
    J["calf_" + s] = Vector((lx, fwd * 0.012, knee_z))
    ax = leg_x(ankle_z + 0.03, side)
    J["foot_" + s] = Vector((ax, 0.01, ankle_z))
    J["ball_" + s] = Vector((ax, fwd * 0.12, 0.02))
    J["ball_end_" + s] = Vector((ax, fwd * 0.19, 0.02))
sh_z = 0.815 * H
J["pelvis"] = Vector((0, 0, hip_z + 0.01))
J["spine_01"] = Vector((0, 0, 0.6 * H))
J["spine_02"] = Vector((0, 0, 0.67 * H))
J["spine_03"] = Vector((0, 0, 0.74 * H))
J["neck_01"] = Vector((0, 0, 0.84 * H))
J["head"] = Vector((0, 0, 0.89 * H))
J["head_end"] = Vector((0, 0, H))
for s, side in (("l", 1), ("r", -1)):
    arm = V[(V[:, 0] * side > 0.2 * H) & (V[:, 2] > 0.4 * H)]
    tip = arm[np.argmax(arm[:, 0] * side)] if len(arm) else np.array([side * 0.4 * H, 0, 0.5 * H])
    shoulder = Vector((side * 0.105 * H, 0.0, sh_z))
    d = Vector(tip) - shoulder
    L = d.length
    d.normalize()
    J["clavicle_" + s] = Vector((side * 0.02 * H, fwd * 0.01, sh_z + 0.01))
    J["upperarm_" + s] = shoulder
    J["lowerarm_" + s] = shoulder + d * (0.42 * L) + Vector((0, 0.02, 0))
    J["hand_" + s] = shoulder + d * (0.78 * L)
    J["hand_end_" + s] = shoulder + d * L

bones = [("pelvis", None, "spine_01"), ("spine_01", "pelvis", "spine_02"), ("spine_02", "spine_01", "spine_03"),
         ("spine_03", "spine_02", "neck_01"), ("neck_01", "spine_03", "head"), ("head", "neck_01", "head_end")]
for s in ("l", "r"):
    bones += [("thigh_" + s, "pelvis", "calf_" + s), ("calf_" + s, "thigh_" + s, "foot_" + s),
              ("foot_" + s, "calf_" + s, "ball_" + s), ("ball_" + s, "foot_" + s, "ball_end_" + s),
              ("clavicle_" + s, "spine_03", "upperarm_" + s), ("upperarm_" + s, "clavicle_" + s, "lowerarm_" + s),
              ("lowerarm_" + s, "upperarm_" + s, "hand_" + s), ("hand_" + s, "lowerarm_" + s, "hand_end_" + s)]
ad = bpy.data.armatures.new("rig")
arm_ob = bpy.data.objects.new("Armature", ad)
bpy.context.scene.collection.objects.link(arm_ob)
bpy.context.view_layer.objects.active = arm_ob
bpy.ops.object.mode_set(mode="EDIT")
eb = {}
for name, parent, tail in bones:
    e = ad.edit_bones.new(name)
    e.head = J[name]; e.tail = J[tail]
    eb[name] = e
for name, parent, _ in bones:
    if parent:
        eb[name].parent = eb[parent]
bpy.ops.object.mode_set(mode="OBJECT")
bpy.ops.object.select_all(action="DESELECT")
body.select_set(True); arm_ob.select_set(True)
bpy.context.view_layer.objects.active = arm_ob
# Skin weights from distance to the bone segments, kept to the body region a vertex belongs to (an arm never pulls
# the ribs of the other side, a leg never pulls the other leg). Two nearest bones blend smoothly at the joints.
P = np.array([v.co[:] for v in body.data.vertices])
segs = {n: (np.array(J[n][:]), np.array(J[t][:])) for n, _, t in bones}
def seg_dist(p, a, b):
    ab = b - a
    t = np.clip(((p - a) @ ab) / max(ab @ ab, 1e-9), 0, 1)
    return np.linalg.norm(p - (a + t[:, None] * ab), axis=1)
D = {n: seg_dist(P, *segs[n]) for n in segs}
x, z = P[:, 0], P[:, 2]
sh_x = abs(J["upperarm_l"][0])
allowed = {}
for n in segs:
    side = 1 if n.endswith("_l") else (-1 if n.endswith("_r") else 0)
    m = np.ones(len(P), bool)
    if any(n.startswith(k) for k in ("upperarm", "lowerarm", "hand")):
        m = (x * side > sh_x - 0.03) & (z > hip_z - 0.25)
    elif n.startswith("clavicle"):
        m = (x * side > 0.0) & (z > 0.7 * H)
    elif any(n.startswith(k) for k in ("thigh", "calf", "foot", "ball")):
        m = (x * side > -0.01) & (z < hip_z + 0.06)
    allowed[n] = m
names = list(segs)
Dm = np.stack([np.where(allowed[n], D[n], 9.0) for n in names], axis=1)
order = np.argsort(Dm, axis=1)[:, :2]
groups = {n: body.vertex_groups.new(name=n) for n in names}
for i in range(len(P)):
    i0, i1 = order[i]
    d0, d1 = Dm[i, i0], Dm[i, i1]
    w1 = np.exp(-(d1 - d0) / 0.025)
    w0 = 1.0 / (1.0 + w1); w1 = w1 / (1.0 + w1)
    groups[names[i0]].add([i], float(w0), "REPLACE")
    if w1 > 0.02:
        groups[names[i1]].add([i], float(w1), "REPLACE")
body.parent = arm_ob
mod = body.modifiers.new("Armature", "ARMATURE"); mod.object = arm_ob
unweighted = sum(1 for v in body.data.vertices if not v.groups)
print("vertices without weights:", unweighted, "of", len(body.data.vertices))
bpy.ops.export_scene.gltf(filepath=dst, export_format="GLB", export_animations=False)
print("wrote", dst, os.path.getsize(dst) // 1024, "KB")
