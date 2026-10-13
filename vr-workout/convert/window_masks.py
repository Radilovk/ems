# Window masks for the photo rooms: bright, grey pixels inside hand-placed boxes (u0, u1, v0, v1 in the 2:1 photo)
# become the glass the view (assets/views) is seen through.
# Run: python3 convert/window_masks.py assets/rooms assets/rooms [/tmp/check.jpg]   (the last: a sheet to check by eye)
import sys, numpy as np
from PIL import Image, ImageFilter
ROOMS = {
 "crossfit_gym": (0.70, [(0.12, 0.15, 0.47, 0.53), (0.43, 0.465, 0.46, 0.53), (0.495, 0.525, 0.46, 0.53),
                         (0.555, 0.59, 0.45, 0.535)]),
 "dancing_hall": (0.80, [(0.0, 0.25, 0.44, 0.535), (0.515, 0.775, 0.44, 0.535), (0.985, 1.0, 0.44, 0.535)]),
 "mirrored_hall": (0.80, [(0.42, 0.635, 0.43, 0.54), (0.66, 0.72, 0.28, 0.555),
                          (0.76, 0.88, 0.42, 0.55)]),
 "neon_studio": (0.80, [(0.68, 0.90, 0.44, 0.556)]),
}
src_dir, out_dir = sys.argv[1], sys.argv[2]
W, H = 2048, 1024
sheet = []
for name, (thr, boxes) in ROOMS.items():
    im = np.asarray(Image.open(f"{src_dir}/{name}.jpg").convert('RGB').resize((W, H), Image.LANCZOS)).astype(np.float32) / 255
    lum = im @ np.array([0.299, 0.587, 0.114])
    sat = im.max(2) - im.min(2)
    box = np.zeros((H, W), bool)
    for u0, u1, v0, v1 in boxes:
        box[int(v0 * H):int(v1 * H), int(u0 * W):int(u1 * W)] = True
    m = box & (lum > thr) & (sat < 0.2)
    mi = Image.fromarray((m * 255).astype(np.uint8))
    mi = mi.filter(ImageFilter.MinFilter(3)).filter(ImageFilter.MaxFilter(3))
    mi = mi.filter(ImageFilter.MaxFilter(3)).filter(ImageFilter.MinFilter(3))
    mi = mi.filter(ImageFilter.MaxFilter(5))      # a little over the frame: no bright fringe of the old glass left
    mi = mi.filter(ImageFilter.GaussianBlur(1.0))
    mi.save(f"{out_dir}/{name}_win.png", optimize=True)
    a = np.asarray(mi)[..., None] / 255
    prev = (im * 255 * (1 - a) + np.array([255, 0, 255]) * a).astype(np.uint8)
    sheet.append(Image.fromarray(prev).crop((0, int(0.25 * H), W, int(0.65 * H))).resize((2000, 400)))
if len(sys.argv) < 4:
    sys.exit()
s = Image.new('RGB', (2000, 400 * len(sheet)))
for i, p in enumerate(sheet):
    s.paste(p, (0, 400 * i))
s.save(sys.argv[3], quality=80)
