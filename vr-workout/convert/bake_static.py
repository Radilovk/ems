import sys, os, bpy
src, dst = sys.argv[1], sys.argv[2]
bpy.ops.wm.read_factory_settings(use_empty=True)
bpy.ops.import_scene.gltf(filepath=src)
# a scene skinned to a rig of props: freeze every mesh as it stands, drop the rigs
for ob in list(bpy.data.objects):
    if ob.type == "MESH":
        bpy.context.view_layer.objects.active = ob
        for m in list(ob.modifiers):
            if m.type == "ARMATURE":
                bpy.ops.object.modifier_apply(modifier=m.name)
        ob.vertex_groups.clear()
for ob in list(bpy.data.objects):
    if ob.type == "MESH":
        mw = ob.matrix_world.copy()
        ob.parent = None
        ob.matrix_world = mw
for ob in list(bpy.data.objects):
    if ob.type in ("ARMATURE", "EMPTY") or ob.name.startswith("Icosphere"):
        bpy.data.objects.remove(ob)
bpy.ops.export_scene.gltf(filepath=dst, export_format="GLB", export_animations=False, export_skins=False)
print("wrote", dst, os.path.getsize(dst) // 1024, "KB")
