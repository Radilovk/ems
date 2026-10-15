"""The owner's burger.glb is a pile: one assembled burger and its parts scattered round it. Split it (Blender module):
burger.glb = the assembled one (its middle at the origin), burger_bits.glb = the loose parts as separate meshes (a bun,
a patty, cheese, tomato …) that fly apart when a burger is smashed in the chef scene.
usage: python burger_split.py burger.glb out_dir"""
import sys, os, bpy, mathutils

src, out = sys.argv[1], sys.argv[2]
CENTRE, R = mathutils.Vector((-8.06, -2.35)), 0.2          # the assembled burger's place in the pile (x, y; z up)
bpy.ops.wm.read_factory_settings(use_empty=True)
bpy.ops.import_scene.gltf(filepath=src)
ob = [o for o in bpy.data.objects if o.type == "MESH"][0]
ob.parent = None
bpy.context.view_layer.objects.active = ob
ob.select_set(True)
bpy.ops.object.transform_apply(location=True, rotation=True, scale=True)
bpy.ops.object.mode_set(mode="EDIT")
bpy.ops.mesh.separate(type="LOOSE")
bpy.ops.object.mode_set(mode="OBJECT")
parts = [o for o in bpy.data.objects if o.type == "MESH"]
for o in list(bpy.data.objects):
    if o.type != "MESH":
        bpy.data.objects.remove(o)


def centre(o):
    bb = [o.matrix_world @ mathutils.Vector(c) for c in o.bound_box]
    return sum(bb, mathutils.Vector()) / 8.0


def export(objs, path, join):
    bpy.ops.object.select_all(action="DESELECT")
    for o in objs:
        o.select_set(True)
    bpy.context.view_layer.objects.active = objs[0]
    if join:
        bpy.ops.object.join()
        o = bpy.context.view_layer.objects.active
        bpy.ops.object.origin_set(type="ORIGIN_GEOMETRY", center="BOUNDS")
        o.location = (0, 0, 0)
    else:
        for o in objs:                               # each part round its own middle, side by side
            bpy.context.view_layer.objects.active = o
            bpy.ops.object.select_all(action="DESELECT")
            o.select_set(True)
            bpy.ops.object.origin_set(type="ORIGIN_GEOMETRY", center="BOUNDS")
            o.location = (0, 0, 0)
        for o in objs:
            o.select_set(True)
    bpy.ops.export_scene.gltf(filepath=path, export_format="GLB", export_image_format="JPEG", export_jpeg_quality=85,
        use_selection=True)
    print("wrote", path, len(objs), os.path.getsize(path) // 1024, "KB")


burger = [o for o in parts if (centre(o).xy - CENTRE).length < R]
bits = [o for o in parts if o not in burger and len(o.data.polygons) >= 16]
export(burger, os.path.join(out, "burger.glb"), True)
export(bits, os.path.join(out, "burger_bits.glb"), False)
