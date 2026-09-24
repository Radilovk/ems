#!/usr/bin/env python3
"""Generate v4 band icons — white glyphs on transparent PNG."""
from pathlib import Path

try:
    from PIL import Image, ImageDraw
except ImportError:
    raise SystemExit("pip install pillow")

OUT = Path(__file__).resolve().parent.parent / "src" / "common" / "icons"
SIZE = 96
FG = (255, 255, 255, 255)


def blank():
    return Image.new("RGBA", (SIZE, SIZE), (0, 0, 0, 0))


def save(name, img):
    OUT.mkdir(parents=True, exist_ok=True)
    img.save(OUT / name, optimize=True)


def circle_outline(d, r, w=6):
    d.ellipse((SIZE // 2 - r, SIZE // 2 - r, SIZE // 2 + r, SIZE // 2 + r), outline=FG, width=w)


def ai():
    im = blank()
    d = ImageDraw.Draw(im)
    cx, cy = SIZE // 2, SIZE // 2
    d.polygon([(cx, 10), (cx + 10, cy - 10), (cx + 34, cy), (cx + 10, cy + 10),
               (cx, 86), (cx - 10, cy + 10), (cx - 34, cy), (cx - 10, cy - 10)], fill=FG)
    save("ai.png", im)


def bolt():
    im = blank()
    d = ImageDraw.Draw(im)
    d.polygon([(52, 8), (30, 50), (46, 50), (38, 88), (66, 42), (50, 42), (52, 8)], fill=FG)
    save("bolt.png", im)


def timer():
    im = blank()
    d = ImageDraw.Draw(im)
    circle_outline(d, 36, 7)
    d.line([(48, 48), (48, 30)], fill=FG, width=6)
    d.line([(48, 48), (62, 48)], fill=FG, width=6)
    d.rectangle((42, 10, 54, 18), fill=FG)
    save("timer.png", im)


def music():
    im = blank()
    d = ImageDraw.Draw(im)
    d.rounded_rectangle((58, 18, 72, 62), radius=4, fill=FG)
    d.rounded_rectangle((24, 30, 38, 74), radius=4, fill=FG)
    d.rectangle((38, 18, 58, 26), fill=FG)
    d.rectangle((38, 30, 58, 38), fill=FG)
    save("music.png", im)


def heart():
    im = blank()
    d = ImageDraw.Draw(im)
    d.ellipse((18, 22, 46, 50), fill=FG)
    d.ellipse((50, 22, 78, 50), fill=FG)
    d.polygon([(18, 40), (48, 78), (78, 40)], fill=FG)
    save("heart.png", im)


def play():
    im = blank()
    d = ImageDraw.Draw(im)
    d.polygon([(30, 20), (30, 76), (76, 48)], fill=FG)
    save("play.png", im)


def pause():
    im = blank()
    d = ImageDraw.Draw(im)
    d.rounded_rectangle((28, 22, 42, 74), radius=4, fill=FG)
    d.rounded_rectangle((54, 22, 68, 74), radius=4, fill=FG)
    save("pause.png", im)


def plus():
    im = blank()
    d = ImageDraw.Draw(im)
    d.rounded_rectangle((42, 20, 54, 76), radius=3, fill=FG)
    d.rounded_rectangle((20, 42, 76, 54), radius=3, fill=FG)
    save("plus.png", im)


def minus():
    im = blank()
    d = ImageDraw.Draw(im)
    d.rounded_rectangle((20, 42, 76, 54), radius=3, fill=FG)
    save("minus.png", im)


def next_icon():
    im = blank()
    d = ImageDraw.Draw(im)
    d.polygon([(22, 24), (22, 72), (52, 48)], fill=FG)
    d.polygon([(54, 24), (54, 72), (76, 48)], fill=FG)
    save("next.png", im)


def prev_icon():
    im = blank()
    d = ImageDraw.Draw(im)
    d.polygon([(74, 24), (74, 72), (44, 48)], fill=FG)
    d.polygon([(42, 24), (42, 72), (20, 48)], fill=FG)
    save("prev.png", im)


def stop():
    im = blank()
    d = ImageDraw.Draw(im)
    d.rounded_rectangle((28, 28, 68, 68), radius=6, fill=FG)
    save("stop.png", im)


def check():
    im = blank()
    d = ImageDraw.Draw(im)
    d.line([(24, 50), (40, 66)], fill=FG, width=8)
    d.line([(40, 66), (72, 28)], fill=FG, width=8)
    save("check.png", im)


def logo():
    im = Image.new("RGBA", (128, 128), (0, 0, 0, 0))
    d = ImageDraw.Draw(im)
    d.rounded_rectangle((8, 8, 120, 120), radius=28, fill=(255, 59, 92, 255))
    d.text((44, 36), "X", fill=(255, 255, 255, 255))
    im.save(Path(__file__).resolve().parent.parent / "src" / "common" / "logo.png")


def main():
    ai()
    bolt()
    timer()
    music()
    heart()
    play()
    pause()
    plus()
    minus()
    next_icon()
    prev_icon()
    stop()
    check()
    print(f"icons written to {OUT}")


if __name__ == "__main__":
    main()
