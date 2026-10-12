"""Mixamo (or any rigged) FBX → glb for the Quest: no clips, textures down to `max` px. usage: in.fbx out.glb [max]"""
import sys, os, bpy
src, dst = sys.argv[1], sys.argv[2]
mx = int(sys.argv[3]) if len(sys.argv) > 3 else 2048
bpy.ops.wm.read_factory_settings(use_empty=True)
bpy.ops.import_scene.fbx(filepath=src, automatic_bone_orientation=True, ignore_leaf_bones=True)
for ob in bpy.data.objects:
    ob.animation_data_clear()
for a in list(bpy.data.actions):
    bpy.data.actions.remove(a)
for img in bpy.data.images:
    w, h = img.size
    if max(w, h) > mx:
        img.scale(w * mx // max(w, h), h * mx // max(w, h))
# "nonPBR" Mixamo materials come in with a metallic sheen (cloth looks like foil): plain cloth / skin instead
for m in bpy.data.materials:
    b = m.node_tree.nodes.get("Principled BSDF") if m.node_tree else None
    if b is None:
        continue
    if not b.inputs["Metallic"].is_linked:
        b.inputs["Metallic"].default_value = 0.0
    if not b.inputs["Roughness"].is_linked:
        b.inputs["Roughness"].default_value = max(b.inputs["Roughness"].default_value, 0.7)
    for k in ("Specular IOR Level", "Specular"):
        if k in b.inputs and not b.inputs[k].is_linked:
            b.inputs[k].default_value = min(b.inputs[k].default_value, 0.3)
bpy.ops.export_scene.gltf(filepath=dst, export_format="GLB", export_animations=False,
                          export_image_format="AUTO")
print("wrote", dst, os.path.getsize(dst) // 1024, "KB")
