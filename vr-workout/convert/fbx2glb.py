import sys, os, bpy
src, dst = sys.argv[1], sys.argv[2]
bpy.ops.wm.read_factory_settings(use_empty=True)
bpy.ops.import_scene.fbx(filepath=src, automatic_bone_orientation=True, ignore_leaf_bones=True)
arm = [o for o in bpy.data.objects if o.type == "ARMATURE"][0]
for ob in bpy.data.objects:
    ob.animation_data_clear()
# ActorCore "Unity" FBX: the armature object is turned 90° and its mesh child turned back, so in Blender the bones
# lie while the body stands. Zero both turns: bones and body then share one upright frame (centimetres).
arm.rotation_euler = (0, 0, 0)
for ob in arm.children:
    ob.rotation_euler = (0, 0, 0)
for ob in list(bpy.data.objects):
    if ob.type == "EMPTY" or (ob.type == "MESH" and ob.parent is None):
        bpy.data.objects.remove(ob)
bpy.context.view_layer.update()
bpy.ops.object.select_all(action="SELECT")
bpy.context.view_layer.objects.active = arm
bpy.ops.object.transform_apply(location=False, rotation=True, scale=True)
hip = arm.data.bones[0]
print("bones top z", max(b.head_local.z for b in arm.data.bones))
bpy.ops.export_scene.gltf(filepath=dst, export_format="GLB", export_animations=False)
print("wrote", dst, os.path.getsize(dst) // 1024, "KB")
