import sys, bpy, numpy as np
from PIL import Image
src, dst = sys.argv[1], sys.argv[2]
img = bpy.data.images.load(src)
w, h = img.size
px = np.empty(w * h * 4, dtype=np.float32)
img.pixels.foreach_get(px)
rgb = px.reshape(h, w, 4)[::-1, :, :3]
rgb = np.clip(np.nan_to_num(rgb, nan=0.0, posinf=0.0, neginf=0.0), 0.0, None)   # some HDRIs carry NaN / negative pixels
lum = 0.2126 * rgb[..., 0] + 0.7152 * rgb[..., 1] + 0.0722 * rgb[..., 2]
key = np.exp(np.mean(np.log(1e-4 + lum)))
c = rgb * (0.22 / key)
c = np.clip((c * (2.51 * c + 0.03)) / (c * (2.43 * c + 0.59) + 0.14), 0, 1)       # ACES fit
c = np.where(c <= 0.0031308, 12.92 * c, 1.055 * np.power(c, 1 / 2.4) - 0.055)   # → sRGB
Image.fromarray((c * 255 + 0.5).astype(np.uint8)).save(dst, quality=90)
print("wrote", dst, w, h, "key", key)
