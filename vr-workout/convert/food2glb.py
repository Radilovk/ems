"""The chef scene's models (owner's download, 2026-10: Sketchfab CC-BY food + a Mixamo chef throwing) → light .glb for
the headset: decimated to `tris`, textures no larger than `max` px (JPEG), the model's middle at the origin.

usage (Blender as a module, bpy 4.2 on Python 3.11):
  python food2glb.py in.(glb|gltf|fbx) out.glb [tris] [max] [anim]
    tris = 0 keeps the mesh as it is · anim = 1 keeps a skinned model's skeleton and animation (the chef itself goes
    through convert/chef2scn.gd: Blender reads only the first take of his FBX)
"""
import sys, os, bpy

src, dst = sys.argv[1], sys.argv[2]
tris = int(sys.argv[3]) if len(sys.argv) > 3 else 6000
mx = int(sys.argv[4]) if len(sys.argv) > 4 else 512
anim = len(sys.argv) > 5 and sys.argv[5] == "1"

bpy.ops.wm.read_factory_settings(use_empty=True)
if src.lower().endswith(".fbx"):
    bpy.ops.import_scene.fbx(filepath=src, ignore_leaf_bones=True)
else:
    bpy.ops.import_scene.gltf(filepath=src)

for o in list(bpy.data.objects):
    if o.name.startswith("Icosphere"):           # a stray helper sphere in some Sketchfab exports
        bpy.data.objects.remove(o)
meshes = [o for o in bpy.data.objects if o.type == "MESH"]
for ob in meshes:
    if ob.data.shape_keys:                       # face shapes: not needed far away, and they break the export
        ob.shape_key_clear()
count = sum(len(p.vertices) - 2 for ob in meshes for p in ob.data.polygons)
if tris and count > tris:
    ratio = tris / count
    for ob in meshes:
        m = ob.modifiers.new("dec", "DECIMATE")
        m.ratio = ratio
        bpy.context.view_layer.objects.active = ob
        bpy.ops.object.modifier_apply(modifier="dec")
after = sum(len(p.vertices) - 2 for ob in meshes for p in ob.data.polygons)
print("tris", count, "->", after)

for img in bpy.data.images:
    w, h = img.size
    if max(w, h) > mx:
        img.scale(max(1, w * mx // max(w, h)), max(1, h * mx // max(w, h)))

if not anim:
    # one object, its middle at the origin (the game sizes and spins it round that point)
    bpy.ops.object.select_all(action="DESELECT")
    for ob in meshes:
        ob.select_set(True)
    bpy.context.view_layer.objects.active = meshes[0]
    for ob in bpy.data.objects:
        if ob.type != "MESH":
            ob.select_set(False)
    bpy.ops.object.parent_clear(type="CLEAR_KEEP_TRANSFORM")
    bpy.ops.object.transform_apply(location=True, rotation=True, scale=True)
    if len(meshes) > 1:
        bpy.ops.object.join()
    ob = bpy.context.view_layer.objects.active
    bpy.ops.object.origin_set(type="ORIGIN_GEOMETRY", center="BOUNDS")
    ob.location = (0, 0, 0)
    for o in list(bpy.data.objects):
        if o.type != "MESH":
            bpy.data.objects.remove(o)
    d = ob.dimensions
    print("size", round(d.x, 3), round(d.y, 3), round(d.z, 3))

bpy.ops.export_scene.gltf(filepath=dst, export_format="GLB", export_image_format="JPEG", export_jpeg_quality=85,
    export_animations=anim, export_morph=False, export_apply=not anim)
print("wrote", dst, os.path.getsize(dst) // 1024, "KB")
