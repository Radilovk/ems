.class public final Lcom/isaigu/gymapp/wearable/face/FaceView;
.super Landroid/view/View;
.source "FaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/face/FaceView$Source;
    }
.end annotation


# static fields
.field static final ASSET:Ljava/lang/String; = "xems/face/face.webp"

.field private static picture:Landroid/graphics/Bitmap;


# instance fields
.field private accent:I

.field private attached:Z

.field private final born:J

.field private danger:I

.field private final dash:Landroid/graphics/DashPathEffect;

.field private final dst:Landroid/graphics/RectF;

.field private final focus:Landroid/graphics/RectF;

.field private ox:F

.field private oy:F

.field private final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private radius:F

.field private rose:I

.field private scale:F

.field private final scene:Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;

.field private source:Lcom/isaigu/gymapp/wearable/face/FaceView$Source;

.field private final text:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scene:Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->text:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->path:Landroid/graphics/Path;

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->dst:Landroid/graphics/RectF;

    .line 39
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->dash:Landroid/graphics/DashPathEffect;

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->born:J

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x428c0000    # 70.0f

    const/high16 v2, 0x43160000    # 150.0f

    const v3, 0x448d2000    # 1129.0f

    const/high16 v4, 0x44a40000    # 1312.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->focus:Landroid/graphics/RectF;

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scale:F

    .line 48
    const v0, -0xa11501

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->accent:I

    .line 49
    const v0, -0x906f

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->rose:I

    .line 50
    const v0, -0xa5a6

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->danger:I

    .line 55
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->text:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 56
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->text:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 57
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/face/FaceView;->load(Landroid/content/Context;)V

    .line 58
    const/high16 v0, 0x41b00000    # 22.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->radius:F

    .line 59
    return-void

    .line 39
    :array_80
    .array-data 4
        0x41600000    # 14.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method private X(F)F
    .registers 4

    .prologue
    .line 165
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->ox:F

    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scale:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private Y(F)F
    .registers 4

    .prologue
    .line 169
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->oy:F

    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scale:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private draw(Landroid/graphics/Canvas;Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;)V
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v5, 0x437f0000    # 255.0f

    const/4 v4, -0x1

    .line 173
    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 174
    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_1b

    .line 237
    :cond_1a
    :goto_1a
    return-void

    .line 177
    :cond_1b
    iget-object v0, p2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->text:Ljava/lang/String;

    if-eqz v0, :cond_5d

    .line 178
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->text:Landroid/graphics/Paint;

    const/high16 v1, 0x42100000    # 36.0f

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scale:F

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 179
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->text:Landroid/graphics/Paint;

    const v1, -0xfbddd4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->text:Landroid/graphics/Paint;

    mul-float v1, v5, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 181
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->text:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 182
    iget-object v1, p2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->text:Ljava/lang/String;

    iget v2, p2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->x:F

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceView;->X(F)F

    move-result v2

    iget v3, p2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->y:F

    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceView;->Y(F)F

    move-result v3

    iget v4, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    sub-float v0, v3, v0

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->text:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1a

    .line 185
    :cond_5d
    iget-object v0, p2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->path:[F

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceView;->toPath([F)V

    .line 186
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    iget-boolean v0, p2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->dashed:Z

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->dash:Landroid/graphics/DashPathEffect;

    :goto_6a
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 187
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 188
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 190
    const/high16 v0, 0x40800000    # 4.0f

    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scale:F

    mul-float/2addr v0, v1

    iget v1, p2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->width:F

    mul-float/2addr v0, v1

    .line 191
    iget v1, p2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->role:I

    packed-switch v1, :pswitch_data_156

    .line 235
    :pswitch_8d
    invoke-direct {p0, p1, v4, v2, v0}, Lcom/isaigu/gymapp/wearable/face/FaceView;->stroke(Landroid/graphics/Canvas;IFF)V

    goto :goto_1a

    :cond_91
    move-object v0, v1

    .line 186
    goto :goto_6a

    .line 194
    :pswitch_93
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 195
    const/4 v0, 0x3

    :goto_9b
    const/4 v1, 0x1

    if-lt v0, v1, :cond_1a

    .line 196
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->rose:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    mul-float v3, v5, v2

    const v4, 0x3df5c28f    # 0.12f

    mul-float/2addr v3, v4

    rsub-int/lit8 v4, v0, 0x4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 198
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scale:F

    mul-int/lit8 v4, v0, 0xe

    add-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 199
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 195
    add-int/lit8 v0, v0, -0x1

    goto :goto_9b

    .line 203
    :pswitch_cc
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->rose:I

    const v1, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceView;->fill(Landroid/graphics/Canvas;IF)V

    goto/16 :goto_1a

    .line 206
    :pswitch_d7
    const/16 v0, -0x1e18

    const v1, 0x4019999a    # 2.4f

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scale:F

    mul-float/2addr v1, v3

    iget v3, p2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->width:F

    mul-float/2addr v1, v3

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/isaigu/gymapp/wearable/face/FaceView;->stroke(Landroid/graphics/Canvas;IFF)V

    goto/16 :goto_1a

    .line 209
    :pswitch_e7
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->danger:I

    const v1, 0x4059999a    # 3.4f

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scale:F

    mul-float/2addr v1, v3

    iget v3, p2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->width:F

    mul-float/2addr v1, v3

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/isaigu/gymapp/wearable/face/FaceView;->stroke(Landroid/graphics/Canvas;IFF)V

    goto/16 :goto_1a

    .line 212
    :pswitch_f7
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->accent:I

    const v1, 0x3f0ccccd    # 0.55f

    mul-float/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceView;->fill(Landroid/graphics/Canvas;IF)V

    goto/16 :goto_1a

    .line 215
    :pswitch_102
    const v0, -0x170401

    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scale:F

    mul-float/2addr v1, v6

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/isaigu/gymapp/wearable/face/FaceView;->stroke(Landroid/graphics/Canvas;IFF)V

    goto/16 :goto_1a

    .line 218
    :pswitch_10d
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->accent:I

    const/high16 v1, 0x40a00000    # 5.0f

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scale:F

    mul-float/2addr v1, v3

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/isaigu/gymapp/wearable/face/FaceView;->stroke(Landroid/graphics/Canvas;IFF)V

    goto/16 :goto_1a

    .line 221
    :pswitch_119
    invoke-direct {p0, p1, v4, v2}, Lcom/isaigu/gymapp/wearable/face/FaceView;->fill(Landroid/graphics/Canvas;IF)V

    goto/16 :goto_1a

    .line 224
    :pswitch_11e
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->accent:I

    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scale:F

    mul-float/2addr v1, v6

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/isaigu/gymapp/wearable/face/FaceView;->stroke(Landroid/graphics/Canvas;IFF)V

    goto/16 :goto_1a

    .line 227
    :pswitch_128
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 228
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 229
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    mul-float v1, v5, v2

    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 230
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41900000    # 18.0f

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scale:F

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 231
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 232
    invoke-direct {p0, p1, v4, v2}, Lcom/isaigu/gymapp/wearable/face/FaceView;->fill(Landroid/graphics/Canvas;IF)V

    goto/16 :goto_1a

    .line 191
    nop

    :pswitch_data_156
    .packed-switch 0x6
        :pswitch_cc
        :pswitch_d7
        :pswitch_93
        :pswitch_e7
        :pswitch_f7
        :pswitch_102
        :pswitch_8d
        :pswitch_10d
        :pswitch_119
        :pswitch_11e
        :pswitch_8d
        :pswitch_128
    .end packed-switch
.end method

.method private fill(Landroid/graphics/Canvas;IF)V
    .registers 8

    .prologue
    .line 240
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 241
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, p3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 243
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 244
    return-void
.end method

.method private static load(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 83
    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceView;->picture:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 102
    :cond_5
    :goto_5
    return-void

    .line 88
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "xems/face/face.webp"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 89
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 90
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 91
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/wearable/face/FaceView;->picture:Landroid/graphics/Bitmap;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_20} :catch_28
    .catchall {:try_start_6 .. :try_end_20} :catchall_34

    .line 95
    if-eqz v0, :cond_5

    .line 97
    :try_start_22
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_5

    .line 98
    :catch_26
    move-exception v0

    goto :goto_5

    .line 92
    :catch_28
    move-exception v1

    .line 93
    const/4 v1, 0x0

    :try_start_2a
    sput-object v1, Lcom/isaigu/gymapp/wearable/face/FaceView;->picture:Landroid/graphics/Bitmap;
    :try_end_2c
    .catchall {:try_start_2a .. :try_end_2c} :catchall_34

    .line 95
    if-eqz v0, :cond_5

    .line 97
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_5

    .line 98
    :catch_32
    move-exception v0

    goto :goto_5

    .line 95
    :catchall_34
    move-exception v1

    if-eqz v0, :cond_3a

    .line 97
    :try_start_37
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3a} :catch_3b

    .line 101
    :cond_3a
    :goto_3a
    throw v1

    .line 98
    :catch_3b
    move-exception v0

    goto :goto_3a
.end method

.method private stroke(Landroid/graphics/Canvas;IFF)V
    .registers 10

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 247
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 248
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    const/4 v2, 0x0

    invoke-static {v4, p3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 250
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    invoke-static {v4, p4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 251
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 252
    return-void
.end method

.method private toPath([F)V
    .registers 10

    .prologue
    .line 255
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 256
    const/4 v0, 0x0

    move v7, v0

    .line 257
    :goto_7
    array-length v0, p1

    if-ge v7, v0, :cond_8e

    .line 258
    aget v0, p1, v7

    .line 259
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2a

    .line 260
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->path:Landroid/graphics/Path;

    add-int/lit8 v1, v7, 0x1

    aget v1, p1, v1

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceView;->X(F)F

    move-result v1

    add-int/lit8 v2, v7, 0x2

    aget v2, p1, v2

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceView;->Y(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 261
    add-int/lit8 v0, v7, 0x3

    :goto_28
    move v7, v0

    .line 272
    goto :goto_7

    .line 262
    :cond_2a
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_48

    .line 263
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->path:Landroid/graphics/Path;

    add-int/lit8 v1, v7, 0x1

    aget v1, p1, v1

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceView;->X(F)F

    move-result v1

    add-int/lit8 v2, v7, 0x2

    aget v2, p1, v2

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceView;->Y(F)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 264
    add-int/lit8 v0, v7, 0x3

    goto :goto_28

    .line 265
    :cond_48
    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_86

    .line 266
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->path:Landroid/graphics/Path;

    add-int/lit8 v1, v7, 0x1

    aget v1, p1, v1

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceView;->X(F)F

    move-result v1

    add-int/lit8 v2, v7, 0x2

    aget v2, p1, v2

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceView;->Y(F)F

    move-result v2

    add-int/lit8 v3, v7, 0x3

    aget v3, p1, v3

    invoke-direct {p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceView;->X(F)F

    move-result v3

    add-int/lit8 v4, v7, 0x4

    aget v4, p1, v4

    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/wearable/face/FaceView;->Y(F)F

    move-result v4

    add-int/lit8 v5, v7, 0x5

    aget v5, p1, v5

    invoke-direct {p0, v5}, Lcom/isaigu/gymapp/wearable/face/FaceView;->X(F)F

    move-result v5

    add-int/lit8 v6, v7, 0x6

    aget v6, p1, v6

    invoke-direct {p0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceView;->Y(F)F

    move-result v6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 267
    add-int/lit8 v0, v7, 0x7

    goto :goto_28

    .line 269
    :cond_86
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 270
    add-int/lit8 v0, v7, 0x1

    goto :goto_28

    .line 273
    :cond_8e
    return-void
.end method


# virtual methods
.method public focusChin(Z)V
    .registers 7

    .prologue
    const/high16 v4, 0x44a40000    # 1312.0f

    .line 74
    if-eqz p1, :cond_14

    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->focus:Landroid/graphics/RectF;

    const/high16 v1, 0x433e0000    # 190.0f

    const/high16 v2, 0x43a50000    # 330.0f

    const v3, 0x447c4000    # 1009.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 79
    :goto_10
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceView;->invalidate()V

    .line 80
    return-void

    .line 77
    :cond_14
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->focus:Landroid/graphics/RectF;

    const/high16 v1, 0x428c0000    # 70.0f

    const/high16 v2, 0x43160000    # 150.0f

    const v3, 0x448d2000    # 1129.0f

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_10
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 106
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->attached:Z

    .line 108
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceView;->postInvalidateOnAnimation()V

    .line 109
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->attached:Z

    .line 114
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 115
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 15

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceView;->getWidth()I

    move-result v9

    .line 120
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceView;->getHeight()I

    move-result v10

    .line 121
    if-lez v9, :cond_c

    if-gtz v10, :cond_d

    .line 162
    :cond_c
    :goto_c
    return-void

    .line 125
    :cond_d
    int-to-float v0, v9

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->focus:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    int-to-float v1, v10

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->focus:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scale:F

    .line 126
    int-to-float v0, v9

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->focus:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->focus:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->ox:F

    .line 127
    int-to-float v0, v10

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->focus:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->focus:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scale:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->oy:F

    .line 128
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 129
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 130
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, v9

    int-to-float v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 131
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->path:Landroid/graphics/Path;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->radius:F

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->radius:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 132
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 133
    const v0, -0xfbefe4

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 134
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceView;->picture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_b7

    .line 135
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->dst:Landroid/graphics/RectF;

    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->ox:F

    iget v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->oy:F

    iget v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->ox:F

    const v4, 0x4495e000    # 1199.0f

    iget v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->oy:F

    const/high16 v5, 0x44a40000    # 1312.0f

    iget v6, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scale:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 136
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 137
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 138
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 139
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceView;->picture:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->dst:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 141
    :cond_b7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 142
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scene:Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 143
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scene:Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 144
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scene:Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->born:J

    sub-long v4, v0, v4

    long-to-float v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    iput v3, v2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->t:F

    .line 145
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->source:Lcom/isaigu/gymapp/wearable/face/FaceView$Source;

    if-eqz v2, :cond_e2

    .line 146
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->source:Lcom/isaigu/gymapp/wearable/face/FaceView$Source;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scene:Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;

    invoke-interface {v2, v3, v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceView$Source;->fill(Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;J)V

    .line 148
    :cond_e2
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scene:Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->placing:Z

    if-nez v0, :cond_104

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scene:Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_104

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scene:Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_104

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->source:Lcom/isaigu/gymapp/wearable/face/FaceView$Source;

    if-eqz v0, :cond_120

    :cond_104
    const/4 v0, 0x1

    move v8, v0

    .line 149
    :goto_106
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->scene:Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->compose(Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;)Ljava/util/List;

    move-result-object v0

    .line 150
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_110
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_123

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    .line 151
    invoke-direct {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/face/FaceView;->draw(Landroid/graphics/Canvas;Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;)V

    goto :goto_110

    .line 148
    :cond_120
    const/4 v0, 0x0

    move v8, v0

    goto :goto_106

    .line 154
    :cond_123
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 155
    iget-object v12, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    int-to-float v2, v10

    const v3, 0x3f51eb85    # 0.82f

    mul-float/2addr v2, v3

    const/4 v3, 0x0

    int-to-float v4, v10

    const/4 v5, 0x0

    const/high16 v6, -0x67000000

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 156
    const/4 v1, 0x0

    int-to-float v0, v10

    const v2, 0x3f51eb85    # 0.82f

    mul-float/2addr v2, v0

    int-to-float v3, v9

    int-to-float v4, v10

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 157
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 158
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 159
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->attached:Z

    if-eqz v0, :cond_c

    if-eqz v8, :cond_c

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    .line 160
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceView;->postInvalidateOnAnimation()V

    goto/16 :goto_c
.end method

.method public setColors(III)V
    .registers 4

    .prologue
    .line 67
    iput p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->accent:I

    .line 68
    iput p2, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->rose:I

    .line 69
    iput p3, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->danger:I

    .line 70
    return-void
.end method

.method public setSource(Lcom/isaigu/gymapp/wearable/face/FaceView$Source;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/face/FaceView;->source:Lcom/isaigu/gymapp/wearable/face/FaceView$Source;

    .line 63
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/face/FaceView;->invalidate()V

    .line 64
    return-void
.end method
