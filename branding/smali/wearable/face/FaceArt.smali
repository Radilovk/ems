.class public final Lcom/isaigu/gymapp/wearable/face/FaceArt;
.super Ljava/lang/Object;
.source "FaceArt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;,
        Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;
    }
.end annotation


# static fields
.field public static final ARROW:I = 0xd

.field public static final AXIS:F = 600.0f

.field public static final C:F = 2.0f

.field public static final CANTHUS:[F

.field public static final CHIN_PAD_L:[F

.field public static final CHIN_PAD_R:[F

.field public static final CM:F = 46.0f

.field public static final CORNER:I = 0x11

.field public static final EYE:[F

.field public static final EYE_RX:F = 172.0f

.field public static final EYE_RY:F = 116.0f

.field public static final FIBRE:I = 0x7

.field public static final GLOW:I = 0x8

.field public static final H:I = 0x520

.field public static final L:F = 1.0f

.field public static final LABEL:I = 0xc

.field public static final M:F = 0.0f

.field public static final MOUTH:[F

.field public static final MUSCLE:I = 0x6

.field public static final NECK:[F

.field public static final NOGO:I = 0x9

.field public static final PAD:I = 0xa

.field public static final PAD_DOWN:F = 0.7f

.field public static final PAD_HH:F = 36.8f

.field public static final PAD_HW:F = 43.7f

.field public static final PAD_LINE:I = 0xb

.field public static final PAD_UP:F = 0.12f

.field public static final RIPPLE:I = 0xf

.field public static final SHORTEN:F = 0.11f

.field public static final SPARK:I = 0xe

.field public static final TRUNK:[F

.field public static final W:I = 0x4af

.field public static final Z:F = 3.0f

.field public static final ZM_I:[F

.field public static final ZM_O:[F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 93
    new-array v0, v1, [F

    fill-array-data v0, :array_42

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_O:[F

    .line 94
    new-array v0, v1, [F

    fill-array-data v0, :array_4a

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_I:[F

    .line 96
    new-array v0, v1, [F

    fill-array-data v0, :array_52

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->MOUTH:[F

    .line 98
    new-array v0, v1, [F

    fill-array-data v0, :array_5a

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->CANTHUS:[F

    .line 102
    new-array v0, v1, [F

    fill-array-data v0, :array_62

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->EYE:[F

    .line 105
    new-array v0, v1, [F

    fill-array-data v0, :array_6a

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->TRUNK:[F

    .line 107
    new-array v0, v1, [F

    fill-array-data v0, :array_72

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NECK:[F

    .line 109
    new-array v0, v1, [F

    fill-array-data v0, :array_7a

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->CHIN_PAD_L:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_82

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->CHIN_PAD_R:[F

    return-void

    .line 93
    nop

    :array_42
    .array-data 4
        0x444bc000    # 815.0f
        0x442c8000    # 690.0f
    .end array-data

    .line 94
    :array_4a
    .array-data 4
        0x44348000    # 722.0f
        0x44568000    # 858.0f
    .end array-data

    .line 96
    :array_52
    .array-data 4
        0x44318000    # 710.0f
        0x445a0000    # 872.0f
    .end array-data

    .line 98
    :array_5a
    .array-data 4
        0x44520000    # 840.0f
        0x44098000    # 550.0f
    .end array-data

    .line 102
    :array_62
    .array-data 4
        0x443e0000    # 760.0f
        0x440d8000    # 566.0f
    .end array-data

    .line 105
    :array_6a
    .array-data 4
        0x445d0000    # 884.0f
        0x44320000    # 712.0f
    .end array-data

    .line 107
    :array_72
    .array-data 4
        0x443b0000    # 748.0f
        0x44920000    # 1168.0f
    .end array-data

    .line 109
    :array_7a
    .array-data 4
        0x440a0000    # 552.0f
        0x44874000    # 1082.0f
    .end array-data

    :array_82
    .array-data 4
        0x44220000    # 648.0f
        0x44874000    # 1082.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cheekPads(I)[[F
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [[F

    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_O:[F

    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_I:[F

    const v3, 0x3df5c28f    # 0.12f

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lerp([F[FF)[F

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_O:[F

    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_I:[F

    const v3, 0x3f333333    # 0.7f

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lerp([F[FF)[F

    move-result-object v1

    aput-object v1, v0, v5

    .line 122
    if-nez p0, :cond_39

    .line 123
    aget-object v1, v0, v4

    aget-object v2, v0, v4

    aget v2, v2, v4

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v2

    aput v2, v1, v4

    .line 124
    aget-object v1, v0, v5

    aget-object v2, v0, v5

    aget v2, v2, v4

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v2

    aput v2, v1, v4

    .line 126
    :cond_39
    return-object v0
.end method

.method private static chin(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;",
            ">;",
            "Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;",
            ")V"
        }
    .end annotation

    .prologue
    const v10, 0x44834000    # 1050.0f

    const/4 v9, 0x6

    const/4 v2, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x1

    .line 240
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v0, v0, v2

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v1, v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 241
    const/high16 v0, 0x41380000    # 11.5f

    mul-float v4, v0, v3

    .line 242
    const/16 v0, 0x15

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v1, v0, v2

    const/high16 v1, 0x440f0000    # 572.0f

    aput v1, v0, v7

    const/4 v1, 0x2

    aput v10, v0, v1

    const/4 v1, 0x3

    aput v8, v0, v1

    const/4 v1, 0x4

    const v5, 0x44138000    # 590.0f

    aput v5, v0, v1

    const/4 v1, 0x5

    const/high16 v5, 0x44840000    # 1056.0f

    aput v5, v0, v1

    const v1, 0x44188000    # 610.0f

    aput v1, v0, v9

    const/4 v1, 0x7

    const/high16 v5, 0x44840000    # 1056.0f

    aput v5, v0, v1

    const/16 v1, 0x8

    const/high16 v5, 0x441d0000    # 628.0f

    aput v5, v0, v1

    const/16 v1, 0x9

    aput v10, v0, v1

    const/16 v1, 0xa

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v0, v1

    const/16 v1, 0xb

    const/high16 v5, 0x44270000    # 668.0f

    aput v5, v0, v1

    const/16 v1, 0xc

    const v5, 0x448b8000    # 1116.0f

    sub-float/2addr v5, v4

    aput v5, v0, v1

    const/16 v1, 0xd

    aput v8, v0, v1

    const/16 v1, 0xe

    const/high16 v5, 0x44200000    # 640.0f

    aput v5, v0, v1

    const/16 v1, 0xf

    const/high16 v5, 0x448d0000    # 1128.0f

    sub-float/2addr v5, v4

    aput v5, v0, v1

    const/16 v1, 0x10

    const/high16 v5, 0x440c0000    # 560.0f

    aput v5, v0, v1

    const/16 v1, 0x11

    const/high16 v5, 0x448d0000    # 1128.0f

    sub-float/2addr v5, v4

    aput v5, v0, v1

    const/16 v1, 0x12

    const/high16 v5, 0x44050000    # 532.0f

    aput v5, v0, v1

    const/16 v1, 0x13

    const v5, 0x448b8000    # 1116.0f

    sub-float/2addr v5, v4

    aput v5, v0, v1

    const/16 v1, 0x14

    const/high16 v5, 0x40400000    # 3.0f

    aput v5, v0, v1

    .line 244
    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    invoke-direct {v1, v9, v0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 245
    const v0, 0x3e6147ae    # 0.22f

    const v5, 0x3eb33333    # 0.35f

    mul-float/2addr v5, v3

    add-float/2addr v0, v5

    iput v0, v1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 246
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 247
    :goto_a1
    const/4 v0, 0x2

    if-ge v1, v0, :cond_138

    .line 248
    const/16 v0, 0x12

    new-array v0, v0, [F

    const/4 v5, 0x0

    aput v5, v0, v2

    const/high16 v5, 0x44130000    # 588.0f

    aput v5, v0, v7

    const/4 v5, 0x2

    aput v10, v0, v5

    const/4 v5, 0x3

    aput v8, v0, v5

    const/4 v5, 0x4

    const/high16 v6, 0x440f0000    # 572.0f

    aput v6, v0, v5

    const/4 v5, 0x5

    const/high16 v6, 0x44850000    # 1064.0f

    aput v6, v0, v5

    const/high16 v5, 0x440b0000    # 556.0f

    aput v5, v0, v9

    const/4 v5, 0x7

    const/high16 v6, 0x44880000    # 1088.0f

    aput v6, v0, v5

    const/16 v5, 0x8

    const/high16 v6, 0x44090000    # 548.0f

    aput v6, v0, v5

    const/16 v5, 0x9

    const v6, 0x448b8000    # 1116.0f

    sub-float/2addr v6, v4

    aput v6, v0, v5

    const/16 v5, 0xa

    aput v8, v0, v5

    const/16 v5, 0xb

    const/high16 v6, 0x440c0000    # 560.0f

    aput v6, v0, v5

    const/16 v5, 0xc

    const v6, 0x448c4000    # 1122.0f

    sub-float/2addr v6, v4

    aput v6, v0, v5

    const/16 v5, 0xd

    const v6, 0x440f8000    # 574.0f

    aput v6, v0, v5

    const/16 v5, 0xe

    const v6, 0x448ac000    # 1110.0f

    sub-float/2addr v6, v4

    aput v6, v0, v5

    const/16 v5, 0xf

    const/high16 v6, 0x44150000    # 596.0f

    aput v6, v0, v5

    const/16 v5, 0x10

    const/high16 v6, 0x44840000    # 1056.0f

    aput v6, v0, v5

    const/16 v5, 0x11

    const/high16 v6, 0x40400000    # 3.0f

    aput v6, v0, v5

    .line 249
    if-ne v1, v7, :cond_10f

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mirror([F)[F

    move-result-object v0

    .line 250
    :cond_10f
    const v5, 0x3ca3d70a    # 0.02f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_122

    .line 251
    new-instance v5, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v6, 0x8

    invoke-direct {v5, v6, v0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 252
    iput v3, v5, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 253
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_122
    new-instance v5, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    invoke-direct {v5, v9, v0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 256
    const v0, 0x3ee66666    # 0.45f

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v3

    add-float/2addr v0, v6

    iput v0, v5, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 257
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_a1

    .line 259
    :cond_138
    return-void
.end method

.method static circle(FFF)[F
    .registers 4

    .prologue
    .line 337
    invoke-static {p0, p1, p2, p2}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ellipse(FFFF)[F

    move-result-object v0

    return-object v0
.end method

.method public static compose(Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->nogo:Z

    if-eqz v0, :cond_c

    .line 138
    invoke-static {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->nogo(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;)V

    .line 140
    :cond_c
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->target:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->muscle:Z

    if-eqz v0, :cond_18

    .line 141
    invoke-static {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->chin(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;)V

    .line 143
    :cond_18
    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->target:I

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->muscle:Z

    if-eqz v0, :cond_2d

    .line 144
    const/4 v0, 0x0

    :goto_21
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2d

    .line 145
    invoke-static {v1, p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->zygomaticus(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;I)V

    .line 146
    invoke-static {v1, p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lift(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;I)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 149
    :cond_2d
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->pads:Z

    if-eqz v0, :cond_38

    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->target:I

    if-ltz v0, :cond_38

    .line 150
    invoke-static {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->pads(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;)V

    .line 152
    :cond_38
    return-object v1
.end method

.method static ellipse(FFFF)[F
    .registers 9

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 341
    const v0, 0x3f0d6388    # 0.5523f

    .line 342
    const/16 v1, 0x20

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    add-float v3, p0, p2

    aput v3, v1, v2

    const/4 v2, 0x2

    aput p1, v1, v2

    const/4 v2, 0x3

    aput v4, v1, v2

    const/4 v2, 0x4

    add-float v3, p0, p2

    aput v3, v1, v2

    const/4 v2, 0x5

    mul-float v3, p3, v0

    add-float/2addr v3, p1

    aput v3, v1, v2

    const/4 v2, 0x6

    mul-float v3, p2, v0

    add-float/2addr v3, p0

    aput v3, v1, v2

    const/4 v2, 0x7

    add-float v3, p1, p3

    aput v3, v1, v2

    const/16 v2, 0x8

    aput p0, v1, v2

    const/16 v2, 0x9

    add-float v3, p1, p3

    aput v3, v1, v2

    const/16 v2, 0xa

    aput v4, v1, v2

    const/16 v2, 0xb

    mul-float v3, p2, v0

    sub-float v3, p0, v3

    aput v3, v1, v2

    const/16 v2, 0xc

    add-float v3, p1, p3

    aput v3, v1, v2

    const/16 v2, 0xd

    sub-float v3, p0, p2

    aput v3, v1, v2

    const/16 v2, 0xe

    mul-float v3, p3, v0

    add-float/2addr v3, p1

    aput v3, v1, v2

    const/16 v2, 0xf

    sub-float v3, p0, p2

    aput v3, v1, v2

    const/16 v2, 0x10

    aput p1, v1, v2

    const/16 v2, 0x11

    aput v4, v1, v2

    const/16 v2, 0x12

    sub-float v3, p0, p2

    aput v3, v1, v2

    const/16 v2, 0x13

    mul-float v3, p3, v0

    sub-float v3, p1, v3

    aput v3, v1, v2

    const/16 v2, 0x14

    mul-float v3, p2, v0

    sub-float v3, p0, v3

    aput v3, v1, v2

    const/16 v2, 0x15

    sub-float v3, p1, p3

    aput v3, v1, v2

    const/16 v2, 0x16

    aput p0, v1, v2

    const/16 v2, 0x17

    sub-float v3, p1, p3

    aput v3, v1, v2

    const/16 v2, 0x18

    aput v4, v1, v2

    const/16 v2, 0x19

    mul-float v3, p2, v0

    add-float/2addr v3, p0

    aput v3, v1, v2

    const/16 v2, 0x1a

    sub-float v3, p1, p3

    aput v3, v1, v2

    const/16 v2, 0x1b

    add-float v3, p0, p2

    aput v3, v1, v2

    const/16 v2, 0x1c

    mul-float/2addr v0, p3

    sub-float v0, p1, v0

    aput v0, v1, v2

    const/16 v0, 0x1d

    add-float v2, p0, p2

    aput v2, v1, v0

    const/16 v0, 0x1e

    aput p1, v1, v0

    const/16 v0, 0x1f

    const/high16 v2, 0x40400000    # 3.0f

    aput v2, v1, v0

    return-object v1
.end method

.method static frac(F)F
    .registers 3

    .prologue
    .line 390
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, p0, v0

    return v0
.end method

.method static lerp([F[FF)[F
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 130
    const/4 v0, 0x2

    new-array v0, v0, [F

    aget v1, p0, v4

    aget v2, p1, v4

    aget v3, p0, v4

    sub-float/2addr v2, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    aput v1, v0, v4

    aget v1, p0, v5

    aget v2, p1, v5

    aget v3, p0, v5

    sub-float/2addr v2, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    aput v1, v0, v5

    return-object v0
.end method

.method private static lift(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;",
            ">;",
            "Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;",
            "I)V"
        }
    .end annotation

    .prologue
    const/16 v8, 0xd

    const v5, 0x3de147ae    # 0.11f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 218
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v2, v0, p2

    .line 219
    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, v2, v0

    if-ltz v0, :cond_18

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aget-boolean v0, v0, p2

    if-nez v0, :cond_19

    .line 236
    :cond_18
    :goto_18
    return-void

    .line 222
    :cond_19
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->MOUTH:[F

    aget v0, v0, v6

    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_O:[F

    aget v1, v1, v6

    sget-object v3, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_I:[F

    aget v3, v3, v6

    sub-float/2addr v1, v3

    mul-float/2addr v1, v5

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 223
    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceArt;->MOUTH:[F

    aget v1, v1, v7

    sget-object v3, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_O:[F

    aget v3, v3, v7

    sget-object v4, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_I:[F

    aget v4, v4, v7

    sub-float/2addr v3, v4

    mul-float/2addr v3, v5

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 224
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v4, 0x11

    if-nez p2, :cond_43

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v0

    :cond_43
    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v0, v1, v5}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->circle(FFF)[F

    move-result-object v0

    invoke-direct {v3, v4, v0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 225
    iput v2, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 226
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_84

    .line 228
    const/16 v1, 0x9

    new-array v1, v1, [F

    fill-array-data v1, :array_9c

    .line 229
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    if-nez p2, :cond_67

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mirror([F)[F

    move-result-object v0

    :cond_67
    invoke-direct {v3, v8, v0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 230
    iput v2, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 231
    iput-boolean v7, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->dashed:Z

    .line 232
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    if-nez p2, :cond_82

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mirror([F)[F

    move-result-object v0

    :goto_79
    invoke-direct {v3, v8, v0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 234
    iput v2, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 235
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_82
    move-object v0, v1

    .line 233
    goto :goto_79

    .line 227
    :array_84
    .array-data 4
        0x0
        0x44398000    # 742.0f
        0x44610000    # 900.0f
        0x40000000    # 2.0f
        0x44480000    # 800.0f
        0x445f0000    # 892.0f
        0x44538000    # 846.0f
        0x44510000    # 836.0f
        0x44570000    # 860.0f
        0x443e0000    # 760.0f
    .end array-data

    .line 228
    :array_9c
    .array-data 4
        0x0
        0x44534000    # 845.0f
        0x44420000    # 776.0f
        0x3f800000    # 1.0f
        0x44570000    # 860.0f
        0x443d8000    # 758.0f
        0x3f800000    # 1.0f
        0x445a0000    # 872.0f
        0x44430000    # 780.0f
    .end array-data
.end method

.method static mirror([F)[F
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 376
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    move v1, v2

    .line 378
    :goto_8
    array-length v3, v0

    if-ge v1, v3, :cond_41

    .line 379
    aget v3, v0, v1

    .line 380
    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_18

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-nez v4, :cond_31

    :cond_18
    const/4 v3, 0x1

    :goto_19
    move v4, v2

    .line 381
    :goto_1a
    if-ge v4, v3, :cond_3b

    .line 382
    add-int/lit8 v5, v1, 0x1

    mul-int/lit8 v6, v4, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v6, v1, 0x1

    mul-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    aget v6, v0, v6

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v6

    aput v6, v0, v5

    .line 381
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 380
    :cond_31
    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_39

    const/4 v3, 0x3

    goto :goto_19

    :cond_39
    move v3, v2

    goto :goto_19

    .line 384
    :cond_3b
    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 385
    goto :goto_8

    .line 386
    :cond_41
    return-object v0
.end method

.method static mx(F)F
    .registers 2

    .prologue
    .line 116
    const/high16 v0, 0x44960000    # 1200.0f

    sub-float/2addr v0, p0

    return v0
.end method

.method private static nogo(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;",
            ">;",
            "Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 300
    move v1, v2

    :goto_3
    const/4 v0, 0x2

    if-ge v1, v0, :cond_6e

    .line 301
    if-nez v1, :cond_5f

    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->EYE:[F

    aget v0, v0, v2

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v0

    .line 302
    :goto_10
    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->target:I

    if-nez v3, :cond_46

    .line 303
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v4, 0x9

    sget-object v5, Lcom/isaigu/gymapp/wearable/face/FaceArt;->EYE:[F

    aget v5, v5, v8

    const/high16 v6, 0x432c0000    # 172.0f

    const/high16 v7, 0x42e80000    # 116.0f

    invoke-static {v0, v5, v6, v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ellipse(FFFF)[F

    move-result-object v0

    invoke-direct {v3, v4, v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 304
    iput-boolean v8, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->dashed:Z

    .line 305
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 306
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    if-nez v1, :cond_64

    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->TRUNK:[F

    aget v0, v0, v2

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v0

    .line 308
    :goto_3b
    sget-object v3, Lcom/isaigu/gymapp/wearable/face/FaceArt;->TRUNK:[F

    aget v3, v3, v8

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->nogoMark(FF)Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_46
    if-nez v1, :cond_69

    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NECK:[F

    aget v0, v0, v2

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v0

    .line 311
    :goto_50
    sget-object v3, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NECK:[F

    aget v3, v3, v8

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->nogoMark(FF)Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 301
    :cond_5f
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->EYE:[F

    aget v0, v0, v2

    goto :goto_10

    .line 307
    :cond_64
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->TRUNK:[F

    aget v0, v0, v2

    goto :goto_3b

    .line 310
    :cond_69
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NECK:[F

    aget v0, v0, v2

    goto :goto_50

    .line 313
    :cond_6e
    return-void
.end method

.method private static nogoMark(FF)Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 317
    const v0, 0x419a8f5c    # 19.32f

    .line 318
    const v1, 0x3f350481    # 0.7071f

    mul-float/2addr v1, v0

    .line 319
    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->circle(FFF)[F

    move-result-object v0

    .line 320
    array-length v2, v0

    add-int/lit8 v2, v2, 0x6

    new-array v2, v2, [F

    .line 321
    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    array-length v0, v0

    .line 323
    const/4 v3, 0x0

    aput v3, v2, v0

    .line 324
    add-int/lit8 v3, v0, 0x1

    sub-float v4, p0, v1

    aput v4, v2, v3

    .line 325
    add-int/lit8 v3, v0, 0x2

    add-float v4, p1, v1

    aput v4, v2, v3

    .line 326
    add-int/lit8 v3, v0, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 327
    add-int/lit8 v3, v0, 0x4

    add-float v4, p0, v1

    aput v4, v2, v3

    .line 328
    add-int/lit8 v0, v0, 0x5

    sub-float v1, p1, v1

    aput v1, v2, v0

    .line 329
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v1, 0x9

    invoke-direct {v0, v1, v2, v5}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 330
    const v1, 0x3fb33333    # 1.4f

    iput v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->width:F

    .line 331
    return-object v0
.end method

.method private static pad(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;[FFIFZI)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;",
            ">;",
            "Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;",
            "[FFIFZI)V"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v0, v0, p7

    .line 281
    const v1, 0x3d4ccccd    # 0.05f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3b

    if-eqz p6, :cond_3b

    .line 282
    iget v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->t:F

    const v2, 0x3fcccccd    # 1.6f

    mul-float/2addr v1, v2

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->frac(F)F

    move-result v1

    .line 283
    new-instance v2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v3, 0xf

    const/4 v4, 0x0

    aget v4, p2, v4

    const/4 v5, 0x1

    aget v5, p2, v5

    const v6, 0x42133333    # 36.8f

    const v7, 0x4200cccd    # 32.2f

    mul-float/2addr v7, v1

    add-float/2addr v6, v7

    invoke-static {v4, v5, v6}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->circle(FFF)[F

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 284
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    iput v0, v2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 285
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    :cond_3b
    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p2, v1

    const v2, 0x422ecccd    # 43.7f

    const v3, 0x42133333    # 36.8f

    const v4, 0x415ccccd    # 13.8f

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->roundRect(FFFFFF)[F

    move-result-object v1

    .line 288
    new-instance v2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v0, 0xa

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 289
    if-eqz p6, :cond_8e

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_5b
    mul-float/2addr v0, p5

    iput v0, v2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 290
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    new-instance v2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v0, 0xb

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 292
    if-eqz p6, :cond_92

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_6d
    mul-float/2addr v0, p5

    iput v0, v2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 293
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v0, 0xc

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, p2, v3

    const/4 v4, 0x1

    aget v4, p2, v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(ILjava/lang/String;FF)V

    .line 295
    if-eqz p6, :cond_96

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_88
    iput v0, v1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 296
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    return-void

    .line 289
    :cond_8e
    const v0, 0x3e99999a    # 0.3f

    goto :goto_5b

    .line 292
    :cond_92
    const v0, 0x3e99999a    # 0.3f

    goto :goto_6d

    .line 295
    :cond_96
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_88
.end method

.method private static pads(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;",
            ">;",
            "Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;",
            ")V"
        }
    .end annotation

    .prologue
    .line 264
    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->placing:Z

    if-eqz v0, :cond_34

    const v0, 0x3f0ccccd    # 0.55f

    const v1, 0x3ee66666    # 0.45f

    iget v2, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->t:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    add-float v5, v0, v1

    .line 265
    :goto_18
    iget v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->target:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_37

    .line 266
    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceArt;->CHIN_PAD_L:[F

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->pad(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;[FFIFZI)V

    .line 267
    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceArt;->CHIN_PAD_R:[F

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->pad(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;[FFIFZI)V

    .line 276
    :cond_33
    return-void

    .line 264
    :cond_34
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_18

    .line 270
    :cond_37
    const/4 v7, 0x0

    :goto_38
    const/4 v0, 0x2

    if-ge v7, v0, :cond_33

    .line 271
    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->cheekPads(I)[[F

    move-result-object v8

    .line 272
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_I:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_O:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-float/2addr v0, v1

    float-to-double v2, v0

    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_I:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_O:[F

    const/4 v4, 0x0

    aget v1, v1, v4

    sub-float v1, v0, v1

    if-nez v7, :cond_83

    const/4 v0, -0x1

    :goto_5a
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v3, v0

    .line 273
    const/4 v0, 0x0

    aget-object v2, v8, v0

    const/4 v4, 0x1

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aget-boolean v6, v0, v7

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->pad(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;[FFIFZI)V

    .line 274
    const/4 v0, 0x1

    aget-object v2, v8, v0

    const/4 v4, 0x2

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aget-boolean v6, v0, v7

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->pad(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;[FFIFZI)V

    .line 270
    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    .line 272
    :cond_83
    const/4 v0, 0x1

    goto :goto_5a
.end method

.method static roundRect(FFFFFF)[F
    .registers 17

    .prologue
    .line 351
    const v0, 0x3f0d6388    # 0.5523f

    mul-float/2addr v0, p4

    .line 352
    const/16 v1, 0x2c

    new-array v3, v1, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v3, v1

    const/4 v1, 0x1

    neg-float v2, p2

    add-float/2addr v2, p4

    aput v2, v3, v1

    const/4 v1, 0x2

    neg-float v2, p3

    aput v2, v3, v1

    const/4 v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v3, v1

    const/4 v1, 0x4

    sub-float v2, p2, p4

    aput v2, v3, v1

    const/4 v1, 0x5

    neg-float v2, p3

    aput v2, v3, v1

    const/4 v1, 0x6

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v3, v1

    const/4 v1, 0x7

    sub-float v2, p2, p4

    add-float/2addr v2, v0

    aput v2, v3, v1

    const/16 v1, 0x8

    neg-float v2, p3

    aput v2, v3, v1

    const/16 v1, 0x9

    aput p2, v3, v1

    const/16 v1, 0xa

    neg-float v2, p3

    add-float/2addr v2, p4

    sub-float/2addr v2, v0

    aput v2, v3, v1

    const/16 v1, 0xb

    aput p2, v3, v1

    const/16 v1, 0xc

    neg-float v2, p3

    add-float/2addr v2, p4

    aput v2, v3, v1

    const/16 v1, 0xd

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v3, v1

    const/16 v1, 0xe

    aput p2, v3, v1

    const/16 v1, 0xf

    sub-float v2, p3, p4

    aput v2, v3, v1

    const/16 v1, 0x10

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v3, v1

    const/16 v1, 0x11

    aput p2, v3, v1

    const/16 v1, 0x12

    sub-float v2, p3, p4

    add-float/2addr v2, v0

    aput v2, v3, v1

    const/16 v1, 0x13

    sub-float v2, p2, p4

    add-float/2addr v2, v0

    aput v2, v3, v1

    const/16 v1, 0x14

    aput p3, v3, v1

    const/16 v1, 0x15

    sub-float v2, p2, p4

    aput v2, v3, v1

    const/16 v1, 0x16

    aput p3, v3, v1

    const/16 v1, 0x17

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v3, v1

    const/16 v1, 0x18

    neg-float v2, p2

    add-float/2addr v2, p4

    aput v2, v3, v1

    const/16 v1, 0x19

    aput p3, v3, v1

    const/16 v1, 0x1a

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v3, v1

    const/16 v1, 0x1b

    neg-float v2, p2

    add-float/2addr v2, p4

    sub-float/2addr v2, v0

    aput v2, v3, v1

    const/16 v1, 0x1c

    aput p3, v3, v1

    const/16 v1, 0x1d

    neg-float v2, p2

    aput v2, v3, v1

    const/16 v1, 0x1e

    sub-float v2, p3, p4

    add-float/2addr v2, v0

    aput v2, v3, v1

    const/16 v1, 0x1f

    neg-float v2, p2

    aput v2, v3, v1

    const/16 v1, 0x20

    sub-float v2, p3, p4

    aput v2, v3, v1

    const/16 v1, 0x21

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v3, v1

    const/16 v1, 0x22

    neg-float v2, p2

    aput v2, v3, v1

    const/16 v1, 0x23

    neg-float v2, p3

    add-float/2addr v2, p4

    aput v2, v3, v1

    const/16 v1, 0x24

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v3, v1

    const/16 v1, 0x25

    neg-float v2, p2

    aput v2, v3, v1

    const/16 v1, 0x26

    neg-float v2, p3

    add-float/2addr v2, p4

    sub-float/2addr v2, v0

    aput v2, v3, v1

    const/16 v1, 0x27

    neg-float v2, p2

    add-float/2addr v2, p4

    sub-float v0, v2, v0

    aput v0, v3, v1

    const/16 v0, 0x28

    neg-float v1, p3

    aput v1, v3, v0

    const/16 v0, 0x29

    neg-float v1, p2

    add-float/2addr v1, p4

    aput v1, v3, v0

    const/16 v0, 0x2a

    neg-float v1, p3

    aput v1, v3, v0

    const/16 v0, 0x2b

    const/high16 v1, 0x40400000    # 3.0f

    aput v1, v3, v0

    .line 356
    const/high16 v0, 0x42b40000    # 90.0f

    sub-float v0, p5, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 357
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 358
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v5, v0

    .line 359
    const/4 v0, 0x0

    .line 360
    :goto_10b
    array-length v1, v3

    if-ge v0, v1, :cond_158

    .line 361
    aget v1, v3, v0

    .line 362
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_11b

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_148

    :cond_11b
    const/4 v1, 0x1

    .line 363
    :goto_11c
    const/4 v2, 0x0

    :goto_11d
    if-ge v2, v1, :cond_152

    .line 364
    add-int/lit8 v6, v0, 0x1

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    aget v6, v3, v6

    .line 365
    add-int/lit8 v7, v0, 0x2

    mul-int/lit8 v8, v2, 0x2

    add-int/2addr v7, v8

    aget v7, v3, v7

    .line 366
    add-int/lit8 v8, v0, 0x1

    mul-int/lit8 v9, v2, 0x2

    add-int/2addr v8, v9

    mul-float v9, v6, v4

    add-float/2addr v9, p0

    mul-float v10, v7, v5

    sub-float/2addr v9, v10

    aput v9, v3, v8

    .line 367
    add-int/lit8 v8, v0, 0x2

    mul-int/lit8 v9, v2, 0x2

    add-int/2addr v8, v9

    mul-float/2addr v6, v5

    add-float/2addr v6, p1

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    aput v6, v3, v8

    .line 363
    add-int/lit8 v2, v2, 0x1

    goto :goto_11d

    .line 362
    :cond_148
    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_150

    const/4 v1, 0x3

    goto :goto_11c

    :cond_150
    const/4 v1, 0x0

    goto :goto_11c

    .line 369
    :cond_152
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 370
    goto :goto_10b

    .line 371
    :cond_158
    return-object v3
.end method

.method private static zygomaticus(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;I)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;",
            ">;",
            "Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 159
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v5, v2, p2

    .line 160
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aget-boolean v6, v2, p2

    .line 161
    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_O:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 162
    sget-object v3, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_I:[F

    sget-object v4, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_O:[F

    const v7, 0x3de147ae    # 0.11f

    mul-float/2addr v7, v5

    invoke-static {v3, v4, v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lerp([F[FF)[F

    move-result-object v7

    .line 163
    if-nez p2, :cond_36

    .line 164
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v4

    aput v4, v2, v3

    .line 165
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v7, v4

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v4

    aput v4, v7, v3

    .line 167
    :cond_36
    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, 0x0

    aget v4, v2, v4

    sub-float v8, v3, v4

    .line 168
    const/4 v3, 0x1

    aget v3, v7, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    sub-float v9, v3, v4

    .line 169
    mul-float v3, v8, v8

    mul-float v4, v9, v9

    add-float/2addr v3, v4

    float-to-double v10, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v3, v10

    .line 170
    neg-float v4, v9

    div-float v10, v4, v3

    .line 171
    div-float v11, v8, v3

    .line 172
    const v3, 0x419a8f5c    # 19.32f

    const/high16 v4, 0x3f800000    # 1.0f

    const v12, 0x3e99999a    # 0.3f

    mul-float/2addr v12, v5

    add-float/2addr v4, v12

    mul-float v12, v3, v4

    .line 173
    const v3, 0x3ee66666    # 0.45f

    invoke-static {v2, v7, v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lerp([F[FF)[F

    move-result-object v13

    .line 174
    const/16 v3, 0x20

    new-array v14, v3, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v14, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aget v4, v2, v4

    mul-float v15, v10, v12

    const v16, 0x3f333333    # 0.7f

    mul-float v15, v15, v16

    add-float/2addr v4, v15

    aput v4, v14, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    aget v4, v2, v4

    mul-float v15, v11, v12

    const v16, 0x3f333333    # 0.7f

    mul-float v15, v15, v16

    add-float/2addr v4, v15

    aput v4, v14, v3

    const/4 v3, 0x3

    const/high16 v4, 0x40000000    # 2.0f

    aput v4, v14, v3

    const/4 v3, 0x4

    const/4 v4, 0x0

    aget v4, v13, v4

    mul-float v15, v10, v12

    const v16, 0x3f99999a    # 1.2f

    mul-float v15, v15, v16

    add-float/2addr v4, v15

    const v15, 0x3e4ccccd    # 0.2f

    mul-float/2addr v15, v8

    sub-float/2addr v4, v15

    aput v4, v14, v3

    const/4 v3, 0x5

    const/4 v4, 0x1

    aget v4, v13, v4

    mul-float v15, v11, v12

    const v16, 0x3f99999a    # 1.2f

    mul-float v15, v15, v16

    add-float/2addr v4, v15

    const v15, 0x3e4ccccd    # 0.2f

    mul-float/2addr v15, v9

    sub-float/2addr v4, v15

    aput v4, v14, v3

    const/4 v3, 0x6

    const/4 v4, 0x0

    aget v4, v13, v4

    mul-float v15, v10, v12

    add-float/2addr v4, v15

    const/high16 v15, 0x3e800000    # 0.25f

    mul-float/2addr v15, v8

    add-float/2addr v4, v15

    aput v4, v14, v3

    const/4 v3, 0x7

    const/4 v4, 0x1

    aget v4, v13, v4

    mul-float v15, v11, v12

    add-float/2addr v4, v15

    const/high16 v15, 0x3e800000    # 0.25f

    mul-float/2addr v15, v9

    add-float/2addr v4, v15

    aput v4, v14, v3

    const/16 v3, 0x8

    const/4 v4, 0x0

    aget v4, v7, v4

    mul-float v15, v10, v12

    const v16, 0x3ecccccd    # 0.4f

    mul-float v15, v15, v16

    add-float/2addr v4, v15

    aput v4, v14, v3

    const/16 v3, 0x9

    const/4 v4, 0x1

    aget v4, v7, v4

    mul-float v15, v11, v12

    const v16, 0x3ecccccd    # 0.4f

    mul-float v15, v15, v16

    add-float/2addr v4, v15

    aput v4, v14, v3

    const/16 v3, 0xa

    const/high16 v4, 0x40000000    # 2.0f

    aput v4, v14, v3

    const/16 v3, 0xb

    const/4 v4, 0x0

    aget v4, v7, v4

    const v15, 0x3d4ccccd    # 0.05f

    mul-float/2addr v15, v8

    add-float/2addr v4, v15

    aput v4, v14, v3

    const/16 v3, 0xc

    const/4 v4, 0x1

    aget v4, v7, v4

    const v15, 0x3d4ccccd    # 0.05f

    mul-float/2addr v15, v9

    add-float/2addr v4, v15

    aput v4, v14, v3

    const/16 v3, 0xd

    const/4 v4, 0x0

    aget v4, v7, v4

    const v15, 0x3d4ccccd    # 0.05f

    mul-float/2addr v15, v8

    add-float/2addr v4, v15

    aput v4, v14, v3

    const/16 v3, 0xe

    const/4 v4, 0x1

    aget v4, v7, v4

    const v15, 0x3d4ccccd    # 0.05f

    mul-float/2addr v15, v9

    add-float/2addr v4, v15

    aput v4, v14, v3

    const/16 v3, 0xf

    const/4 v4, 0x0

    aget v4, v7, v4

    mul-float v15, v10, v12

    const v16, 0x3ecccccd    # 0.4f

    mul-float v15, v15, v16

    sub-float/2addr v4, v15

    aput v4, v14, v3

    const/16 v3, 0x10

    const/4 v4, 0x1

    aget v4, v7, v4

    mul-float v15, v11, v12

    const v16, 0x3ecccccd    # 0.4f

    mul-float v15, v15, v16

    sub-float/2addr v4, v15

    aput v4, v14, v3

    const/16 v3, 0x11

    const/high16 v4, 0x40000000    # 2.0f

    aput v4, v14, v3

    const/16 v3, 0x12

    const/4 v4, 0x0

    aget v4, v13, v4

    mul-float v15, v10, v12

    sub-float/2addr v4, v15

    const/high16 v15, 0x3e800000    # 0.25f

    mul-float/2addr v15, v8

    add-float/2addr v4, v15

    aput v4, v14, v3

    const/16 v3, 0x13

    const/4 v4, 0x1

    aget v4, v13, v4

    mul-float v15, v11, v12

    sub-float/2addr v4, v15

    const/high16 v15, 0x3e800000    # 0.25f

    mul-float/2addr v15, v9

    add-float/2addr v4, v15

    aput v4, v14, v3

    const/16 v3, 0x14

    const/4 v4, 0x0

    aget v4, v13, v4

    mul-float v15, v10, v12

    const v16, 0x3f99999a    # 1.2f

    mul-float v15, v15, v16

    sub-float/2addr v4, v15

    const v15, 0x3e4ccccd    # 0.2f

    mul-float/2addr v15, v8

    sub-float/2addr v4, v15

    aput v4, v14, v3

    const/16 v3, 0x15

    const/4 v4, 0x1

    aget v4, v13, v4

    mul-float v15, v11, v12

    const v16, 0x3f99999a    # 1.2f

    mul-float v15, v15, v16

    sub-float/2addr v4, v15

    const v15, 0x3e4ccccd    # 0.2f

    mul-float/2addr v15, v9

    sub-float/2addr v4, v15

    aput v4, v14, v3

    const/16 v3, 0x16

    const/4 v4, 0x0

    aget v4, v2, v4

    mul-float v15, v10, v12

    const v16, 0x3f333333    # 0.7f

    mul-float v15, v15, v16

    sub-float/2addr v4, v15

    aput v4, v14, v3

    const/16 v3, 0x17

    const/4 v4, 0x1

    aget v4, v2, v4

    mul-float v15, v11, v12

    const v16, 0x3f333333    # 0.7f

    mul-float v15, v15, v16

    sub-float/2addr v4, v15

    aput v4, v14, v3

    const/16 v3, 0x18

    const/high16 v4, 0x40000000    # 2.0f

    aput v4, v14, v3

    const/16 v3, 0x19

    const/4 v4, 0x0

    aget v4, v2, v4

    const v15, 0x3d8f5c29    # 0.07f

    mul-float/2addr v15, v8

    sub-float/2addr v4, v15

    aput v4, v14, v3

    const/16 v3, 0x1a

    const/4 v4, 0x1

    aget v4, v2, v4

    const v15, 0x3d8f5c29    # 0.07f

    mul-float/2addr v15, v9

    sub-float/2addr v4, v15

    aput v4, v14, v3

    const/16 v3, 0x1b

    const/4 v4, 0x0

    aget v4, v2, v4

    const v15, 0x3d8f5c29    # 0.07f

    mul-float/2addr v15, v8

    sub-float/2addr v4, v15

    aput v4, v14, v3

    const/16 v3, 0x1c

    const/4 v4, 0x1

    aget v4, v2, v4

    const v15, 0x3d8f5c29    # 0.07f

    mul-float/2addr v15, v9

    sub-float/2addr v4, v15

    aput v4, v14, v3

    const/16 v3, 0x1d

    const/4 v4, 0x0

    aget v4, v2, v4

    mul-float v15, v10, v12

    const v16, 0x3f333333    # 0.7f

    mul-float v15, v15, v16

    add-float/2addr v4, v15

    aput v4, v14, v3

    const/16 v3, 0x1e

    const/4 v4, 0x1

    aget v4, v2, v4

    mul-float v15, v11, v12

    const v16, 0x3f333333    # 0.7f

    mul-float v15, v15, v16

    add-float/2addr v4, v15

    aput v4, v14, v3

    const/16 v3, 0x1f

    const/high16 v4, 0x40400000    # 3.0f

    aput v4, v14, v3

    .line 182
    if-eqz v6, :cond_320

    const/high16 v3, 0x3f800000    # 1.0f

    move v4, v3

    .line 183
    :goto_20b
    const v3, 0x3ca3d70a    # 0.02f

    cmpl-float v3, v5, v3

    if-lez v3, :cond_226

    if-eqz v6, :cond_226

    .line 184
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v15, 0x8

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v3, v15, v14, v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 185
    iput v5, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 186
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_226
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/4 v15, 0x6

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v3, v15, v14, v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 189
    const v14, 0x3ec28f5c    # 0.38f

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v15, v5

    add-float/2addr v14, v15

    mul-float/2addr v14, v4

    iput v14, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 190
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    const/4 v3, -0x2

    :goto_240
    const/4 v14, 0x2

    if-gt v3, v14, :cond_326

    .line 192
    int-to-float v14, v3

    mul-float/2addr v14, v12

    const v15, 0x3ec28f5c    # 0.38f

    mul-float/2addr v14, v15

    .line 193
    const/16 v15, 0xa

    new-array v15, v15, [F

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x0

    aget v17, v2, v17

    mul-float v18, v10, v14

    const v19, 0x3f19999a    # 0.6f

    mul-float v18, v18, v19

    add-float v17, v17, v18

    aput v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x1

    aget v17, v2, v17

    mul-float v18, v11, v14

    const v19, 0x3f19999a    # 0.6f

    mul-float v18, v18, v19

    add-float v17, v17, v18

    aput v17, v15, v16

    const/16 v16, 0x3

    const/high16 v17, 0x40000000    # 2.0f

    aput v17, v15, v16

    const/16 v16, 0x4

    const/16 v17, 0x0

    aget v17, v13, v17

    mul-float v18, v10, v14

    const v19, 0x3f866666    # 1.05f

    mul-float v18, v18, v19

    add-float v17, v17, v18

    const v18, 0x3df5c28f    # 0.12f

    mul-float v18, v18, v8

    sub-float v17, v17, v18

    aput v17, v15, v16

    const/16 v16, 0x5

    const/16 v17, 0x1

    aget v17, v13, v17

    mul-float v18, v11, v14

    const v19, 0x3f866666    # 1.05f

    mul-float v18, v18, v19

    add-float v17, v17, v18

    const v18, 0x3df5c28f    # 0.12f

    mul-float v18, v18, v9

    sub-float v17, v17, v18

    aput v17, v15, v16

    const/16 v16, 0x6

    const/16 v17, 0x0

    aget v17, v13, v17

    mul-float v18, v10, v14

    add-float v17, v17, v18

    const v18, 0x3e4ccccd    # 0.2f

    mul-float v18, v18, v8

    add-float v17, v17, v18

    aput v17, v15, v16

    const/16 v16, 0x7

    const/16 v17, 0x1

    aget v17, v13, v17

    mul-float v18, v11, v14

    add-float v17, v17, v18

    const v18, 0x3e4ccccd    # 0.2f

    mul-float v18, v18, v9

    add-float v17, v17, v18

    aput v17, v15, v16

    const/16 v16, 0x8

    const/16 v17, 0x0

    aget v17, v7, v17

    mul-float v18, v10, v14

    const v19, 0x3eb33333    # 0.35f

    mul-float v18, v18, v19

    add-float v17, v17, v18

    aput v17, v15, v16

    const/16 v16, 0x9

    const/16 v17, 0x1

    aget v17, v7, v17

    mul-float/2addr v14, v11

    const v18, 0x3eb33333    # 0.35f

    mul-float v14, v14, v18

    add-float v14, v14, v17

    aput v14, v15, v16

    .line 197
    new-instance v14, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v16, 0x7

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v0, v15, v1}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 198
    const v15, 0x3ee66666    # 0.45f

    const v16, 0x3f0ccccd    # 0.55f

    mul-float v16, v16, v5

    add-float v15, v15, v16

    mul-float/2addr v15, v4

    iput v15, v14, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 199
    const v15, 0x3f4ccccd    # 0.8f

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v16, v16, v5

    add-float v15, v15, v16

    iput v15, v14, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->width:F

    .line 200
    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_240

    .line 182
    :cond_320
    const v3, 0x3eb33333    # 0.35f

    move v4, v3

    goto/16 :goto_20b

    .line 203
    :cond_326
    const v3, 0x3d4ccccd    # 0.05f

    cmpl-float v3, v5, v3

    if-lez v3, :cond_3a3

    if-eqz v6, :cond_3a3

    .line 204
    const v3, 0x3eb33333    # 0.35f

    move-object/from16 v0, p1

    iget v4, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->hz:I

    int-to-float v4, v4

    const/high16 v6, 0x42f00000    # 120.0f

    div-float/2addr v4, v6

    add-float/2addr v4, v3

    .line 205
    const/4 v3, 0x0

    :goto_33c
    const/4 v6, 0x4

    if-ge v3, v6, :cond_3a3

    .line 206
    move-object/from16 v0, p1

    iget v6, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->t:F

    mul-float/2addr v6, v4

    int-to-float v8, v3

    const/high16 v9, 0x3e800000    # 0.25f

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->frac(F)F

    move-result v6

    .line 207
    invoke-static {v7, v2, v6}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lerp([F[FF)[F

    move-result-object v8

    .line 208
    rem-int/lit8 v9, v3, 0x2

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, -0x1

    int-to-float v9, v9

    mul-float/2addr v9, v12

    const v13, 0x3eb33333    # 0.35f

    mul-float/2addr v9, v13

    float-to-double v14, v6

    const-wide v16, 0x400921fb54442d18L    # Math.PI

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v13, v14

    mul-float/2addr v9, v13

    .line 209
    new-instance v13, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v14, 0xe

    const/4 v15, 0x0

    aget v15, v8, v15

    mul-float v16, v10, v9

    add-float v15, v15, v16

    const/16 v16, 0x1

    aget v8, v8, v16

    mul-float/2addr v9, v11

    add-float/2addr v8, v9

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v16, 0x40200000    # 2.5f

    mul-float v16, v16, v5

    add-float v9, v9, v16

    invoke-static {v15, v8, v9}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->circle(FFF)[F

    move-result-object v8

    const/4 v9, 0x1

    invoke-direct {v13, v14, v8, v9}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 210
    float-to-double v8, v6

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v6, v8

    mul-float/2addr v6, v5

    iput v6, v13, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 211
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v3, v3, 0x1

    goto :goto_33c

    .line 214
    :cond_3a3
    return-void
.end method
