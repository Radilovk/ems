# python3 convert/crop_views.py land assets/views sheet.jpg name:file:center …   (center = the row to put at eye level, 0 top … 1 bottom)
# A photo hangs 220° wide round the player (the panoramic hall's three glass walls). Keep its full width (capped at
# 8192 px) and only the band of rows from 25° below to 25° above eye level, centred on `center` (fraction of height).
import sys, math
from PIL import Image, ImageDraw
Image.MAX_IMAGE_PIXELS = None
SPAN = math.radians(220)
src, out, sheet = sys.argv[1], sys.argv[2], sys.argv[3]
rows = []
for spec in sys.argv[4:]:
    name, f, c = spec.split(':')
    im = Image.open(f"{src}/{f}").convert('RGB')
    W, H = im.size
    half = math.tan(math.radians(25)) * W / SPAN
    cy = float(c) * H
    top = max(0, min(H - 2 * half, cy - half))
    bot = min(H, top + 2 * half)
    crop = im.crop((0, int(top), W, int(bot)))
    eye = (cy - top) / (bot - top)
    if W > 8192:
        crop = crop.resize((8192, round(crop.height * 8192 / W)), Image.LANCZOS)
    crop.save(f"{out}/{name}.jpg", quality=92)
    print(f'{name}: {crop.size} eye_row={eye:.3f} ppd={crop.width/220:.1f}')
    t = crop.resize((1600, round(1600 * crop.height / crop.width)))
    d = ImageDraw.Draw(t)
    k = t.width / SPAN                                   # px per unit tan
    for deg, col in [(0, 'yellow'), (16, 'red'), (-13, 'red')]:
        y = eye * t.height - math.tan(math.radians(deg)) * k
        d.line([(0, y), (t.width, y)], fill=col)
    d.text((5, 5), name, fill='red')
    rows.append(t)
S = Image.new('RGB', (1600, sum(r.height + 6 for r in rows)), 'white')
y = 0
for r in rows:
    S.paste(r, (0, y)); y += r.height + 6
S.save(sheet, quality=80)
