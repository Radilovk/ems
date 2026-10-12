"""Re-export a glb/gltf with textures no larger than `max` px (JPEG). usage: in.glb out.glb [max]"""
import sys, os, bpy
src, dst = sys.argv[1], sys.argv[2]
mx = int(sys.argv[3]) if len(sys.argv) > 3 else 2048
bpy.ops.wm.read_factory_settings(use_empty=True)
bpy.ops.import_scene.gltf(filepath=src)
for ob in list(bpy.data.objects):
    if ob.name.startswith("Icosphere"):
        bpy.data.objects.remove(ob)
for img in bpy.data.images:
    w, h = img.size
    if max(w, h) > mx:
        img.scale(w * mx // max(w, h), h * mx // max(w, h))
bpy.ops.export_scene.gltf(filepath=dst, export_format="GLB", export_image_format="JPEG", export_jpeg_quality=88)
print("wrote", dst, os.path.getsize(dst) // 1024, "KB")
