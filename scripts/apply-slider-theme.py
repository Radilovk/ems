#!/usr/bin/env python3
"""Improve vertical slider track depth and thumb contrast via smali patches."""

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
SLIDER = ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp" / "widget" / "VerticalColorSeekBar.smali"
HOLDER = ROOT / "build" / "decompiled" / "smali_classes2" / "com" / "isaigu" / "gymapp" / "train" / "TrainViewHolder.smali"

DRAW_BACKGROUND_OLD = """.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 102
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sLeft:F

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sTop:F

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sRight:F

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getPaddingRight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sBottom:F

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 104
    .local v0, "rectBlackBg":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget-object v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 110
    return-void
.end method"""

DRAW_BACKGROUND_NEW = """.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 102
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sLeft:F

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sTop:F

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sRight:F

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getPaddingRight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sBottom:F

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getPaddingBottom()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 104
    .local v0, "rectBlackBg":Landroid/graphics/RectF;
    iget v1, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->sWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->paint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "slider_channel_bg"

    const-string v4, "color"

    invoke-virtual {v6, v7, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "slider_channel_stroke"

    const-string v7, "color"

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 110
    return-void
.end method"""

SET_COLOR_ARRAY_OLD = """    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setColorArray(III)V

    .line 339"""

SET_COLOR_ARRAY_NEW = """    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/isaigu/gymapp/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/isaigu/gymapp/train/TrainViewHolder;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/isaigu/gymapp/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "slider_thumb_fill"

    const-string v7, "color"

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const-string v7, "slider_thumb_stroke"

    const-string v8, "color"

    invoke-virtual {v5, v7, v8, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object v7, v0

    move v8, v1

    move v9, v2

    move v10, v3

    move v11, v6

    move v12, v4

    invoke-virtual/range {v7 .. v12}, Lcom/isaigu/gymapp/widget/VerticalColorSeekBar;->setColor(IIIII)V

    .line 339"""


def patch_slider_background() -> None:
    text = SLIDER.read_text(encoding="utf-8")
    if "slider_channel_bg" in text:
        print("VerticalColorSeekBar.drawBackground: already patched")
        return
    if DRAW_BACKGROUND_OLD not in text:
        raise RuntimeError("VerticalColorSeekBar.drawBackground marker not found")
    text = text.replace(DRAW_BACKGROUND_OLD, DRAW_BACKGROUND_NEW, 1)
    SLIDER.write_text(text, encoding="utf-8")
    print("VerticalColorSeekBar.drawBackground: patched track fill + stroke")


def patch_train_holder() -> None:
    text = HOLDER.read_text(encoding="utf-8")
    if "slider_thumb_fill" in text:
        print("TrainViewHolder.setBarsListener: already patched")
        return
    if SET_COLOR_ARRAY_OLD not in text:
        raise RuntimeError("TrainViewHolder setColorArray marker not found")
    if ".locals 5" in text.split("setBarsListener(I)V")[1].split(".end method")[0]:
        text = text.replace(".method private setBarsListener(I)V\n    .locals 5", ".method private setBarsListener(I)V\n    .locals 13", 1)
    text = text.replace(SET_COLOR_ARRAY_OLD, SET_COLOR_ARRAY_NEW, 1)
    HOLDER.write_text(text, encoding="utf-8")
    print("TrainViewHolder.setBarsListener: patched thumb colors")


def main() -> None:
    patch_slider_background()
    patch_train_holder()
    print("Slider theme patches applied.")


if __name__ == "__main__":
    main()
