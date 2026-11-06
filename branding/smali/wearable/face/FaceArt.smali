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

.field public static final FLOW:I = 0x12

.field public static final FOREHEAD_PAD:[F

.field public static final FOREHEAD_PAIR:[F

.field public static final GLOW:I = 0x8

.field public static final H:I = 0x520

.field public static final JAW_PAD_LOW:[F

.field public static final JAW_PAD_UP:[F

.field public static final L:F = 1.0f

.field public static final LABEL:I = 0xc

.field public static final M:F = 0.0f

.field public static final MASS_LOW:[F

.field public static final MASS_TOP:[F

.field public static final MOUTH:[F

.field public static final MUSCLE:I = 0x6

.field public static final NECK:[F

.field public static final NODE_EAR:[F

.field public static final NODE_JAW:[F

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

    .line 103
    new-array v0, v1, [F

    fill-array-data v0, :array_7a

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_O:[F

    .line 104
    new-array v0, v1, [F

    fill-array-data v0, :array_82

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_I:[F

    .line 106
    new-array v0, v1, [F

    fill-array-data v0, :array_8a

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->MOUTH:[F

    .line 108
    new-array v0, v1, [F

    fill-array-data v0, :array_92

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->CANTHUS:[F

    .line 112
    new-array v0, v1, [F

    fill-array-data v0, :array_9a

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->EYE:[F

    .line 115
    new-array v0, v1, [F

    fill-array-data v0, :array_a2

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->TRUNK:[F

    .line 117
    new-array v0, v1, [F

    fill-array-data v0, :array_aa

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NECK:[F

    .line 119
    new-array v0, v1, [F

    fill-array-data v0, :array_b2

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->CHIN_PAD_L:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_ba

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->CHIN_PAD_R:[F

    .line 121
    new-array v0, v1, [F

    fill-array-data v0, :array_c2

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->FOREHEAD_PAD:[F

    .line 122
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_ca

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->FOREHEAD_PAIR:[F

    .line 124
    new-array v0, v1, [F

    fill-array-data v0, :array_d6

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->MASS_TOP:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_de

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->MASS_LOW:[F

    .line 125
    new-array v0, v1, [F

    fill-array-data v0, :array_e6

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->JAW_PAD_UP:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_ee

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->JAW_PAD_LOW:[F

    .line 127
    new-array v0, v1, [F

    fill-array-data v0, :array_f6

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NODE_EAR:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_fe

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NODE_JAW:[F

    return-void

    .line 103
    :array_7a
    .array-data 4
        0x444bc000    # 815.0f
        0x442c8000    # 690.0f
    .end array-data

    .line 104
    :array_82
    .array-data 4
        0x44348000    # 722.0f
        0x44568000    # 858.0f
    .end array-data

    .line 106
    :array_8a
    .array-data 4
        0x44318000    # 710.0f
        0x445a0000    # 872.0f
    .end array-data

    .line 108
    :array_92
    .array-data 4
        0x44520000    # 840.0f
        0x44098000    # 550.0f
    .end array-data

    .line 112
    :array_9a
    .array-data 4
        0x443e0000    # 760.0f
        0x440d8000    # 566.0f
    .end array-data

    .line 115
    :array_a2
    .array-data 4
        0x445d0000    # 884.0f
        0x44320000    # 712.0f
    .end array-data

    .line 117
    :array_aa
    .array-data 4
        0x443b0000    # 748.0f
        0x44920000    # 1168.0f
    .end array-data

    .line 119
    :array_b2
    .array-data 4
        0x440a0000    # 552.0f
        0x44874000    # 1082.0f
    .end array-data

    :array_ba
    .array-data 4
        0x44220000    # 648.0f
        0x44874000    # 1082.0f
    .end array-data

    .line 121
    :array_c2
    .array-data 4
        0x4428c000    # 675.0f
        0x43ab0000    # 342.0f
    .end array-data

    .line 122
    :array_ca
    .array-data 4
        0x4428c000    # 675.0f
        0x43ab0000    # 342.0f
        0x44410000    # 772.0f
        0x43ab0000    # 342.0f
    .end array-data

    .line 124
    :array_d6
    .array-data 4
        0x44548000    # 850.0f
        0x4437c000    # 735.0f
    .end array-data

    :array_de
    .array-data 4
        0x44498000    # 806.0f
        0x4464c000    # 915.0f
    .end array-data

    .line 125
    :array_e6
    .array-data 4
        0x44510000    # 836.0f
        0x44410000    # 772.0f
    .end array-data

    :array_ee
    .array-data 4
        0x444b4000    # 813.0f
        0x445a0000    # 872.0f
    .end array-data

    .line 127
    :array_f6
    .array-data 4
        0x445a0000    # 872.0f
        0x442c8000    # 690.0f
    .end array-data

    :array_fe
    .array-data 4
        0x44458000    # 790.0f
        0x44714000    # 965.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cheekPads(I)[[F
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 139
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

    .line 140
    if-nez p0, :cond_39

    .line 141
    aget-object v1, v0, v4

    aget-object v2, v0, v4

    aget v2, v2, v4

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v2

    aput v2, v1, v4

    .line 142
    aget-object v1, v0, v5

    aget-object v2, v0, v5

    aget v2, v2, v4

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v2

    aput v2, v1, v4

    .line 144
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

    .line 270
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v0, v0, v2

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v1, v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 271
    const/high16 v0, 0x41380000    # 11.5f

    mul-float v4, v0, v3

    .line 272
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

    .line 274
    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    invoke-direct {v1, v9, v0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 275
    const v0, 0x3e6147ae    # 0.22f

    const v5, 0x3eb33333    # 0.35f

    mul-float/2addr v5, v3

    add-float/2addr v0, v5

    iput v0, v1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 276
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .line 277
    :goto_a1
    const/4 v0, 0x2

    if-ge v1, v0, :cond_138

    .line 278
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

    .line 279
    if-ne v1, v7, :cond_10f

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mirror([F)[F

    move-result-object v0

    .line 280
    :cond_10f
    const v5, 0x3ca3d70a    # 0.02f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_122

    .line 281
    new-instance v5, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v6, 0x8

    invoke-direct {v5, v6, v0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 282
    iput v3, v5, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 283
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_122
    new-instance v5, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    invoke-direct {v5, v9, v0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 286
    const v0, 0x3ee66666    # 0.45f

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v3

    add-float/2addr v0, v6

    iput v0, v5, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 287
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_a1

    .line 289
    :cond_138
    return-void
.end method

.method static circle(FFF)[F
    .registers 4

    .prologue
    .line 518
    invoke-static {p0, p1, p2, p2}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ellipse(FFFF)[F

    move-result-object v0

    return-object v0
.end method

.method public static compose(Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;)Ljava/util/List;
    .registers 6
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
    const/4 v0, 0x0

    const/4 v4, 0x2

    .line 154
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 155
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->nogo:Z

    if-eqz v1, :cond_e

    .line 156
    invoke-static {v2, p0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->nogo(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;)V

    .line 158
    :cond_e
    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->target:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1a

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->muscle:Z

    if-eqz v1, :cond_1a

    .line 159
    invoke-static {v2, p0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->chin(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;)V

    .line 161
    :cond_1a
    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->target:I

    if-nez v1, :cond_36

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->muscle:Z

    if-eqz v1, :cond_36

    move v1, v0

    .line 162
    :goto_23
    if-ge v1, v4, :cond_36

    .line 163
    invoke-static {v2, p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->zygomaticus(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;I)V

    .line 164
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->drain:Z

    if-eqz v3, :cond_32

    .line 165
    invoke-static {v2, p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->flow(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;I)V

    .line 162
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 167
    :cond_32
    invoke-static {v2, p0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lift(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;I)V

    goto :goto_2f

    .line 171
    :cond_36
    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->target:I

    if-ne v1, v4, :cond_41

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->muscle:Z

    if-eqz v1, :cond_41

    .line 172
    invoke-static {v2, p0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->forehead(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;)V

    .line 174
    :cond_41
    iget v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->target:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_52

    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->muscle:Z

    if-eqz v1, :cond_52

    .line 175
    :goto_4a
    if-ge v0, v4, :cond_52

    .line 176
    invoke-static {v2, p0, v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->masseter(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;I)V

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 179
    :cond_52
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->pads:Z

    if-eqz v0, :cond_5d

    iget v0, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->target:I

    if-ltz v0, :cond_5d

    .line 180
    invoke-static {v2, p0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->pads(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;)V

    .line 182
    :cond_5d
    return-object v2
.end method

.method static ellipse(FFFF)[F
    .registers 9

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 522
    const v0, 0x3f0d6388    # 0.5523f

    .line 523
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

.method private static flow(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;I)V
    .registers 17
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
    .line 293
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v4, v0, p2

    .line 294
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aget-boolean v0, v0, p2

    if-nez v0, :cond_b

    .line 323
    :cond_a
    return-void

    .line 297
    :cond_b
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_O:[F

    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_I:[F

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lerp([F[FF)[F

    move-result-object v5

    .line 298
    const/4 v0, 0x2

    new-array v6, v0, [[F

    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NODE_EAR:[F

    aput-object v1, v6, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NODE_JAW:[F

    aput-object v1, v6, v0

    .line 299
    const/4 v0, 0x0

    move v3, v0

    :goto_24
    const/4 v0, 0x2

    if-ge v3, v0, :cond_a

    .line 300
    invoke-virtual {v5}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 301
    aget-object v1, v6, v3

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 302
    if-nez p2, :cond_4b

    .line 303
    const/4 v2, 0x0

    const/4 v7, 0x0

    aget v7, v0, v7

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v7

    aput v7, v0, v2

    .line 304
    const/4 v2, 0x0

    const/4 v7, 0x0

    aget v7, v1, v7

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v7

    aput v7, v1, v2

    .line 306
    :cond_4b
    const/4 v2, 0x6

    new-array v2, v2, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v2, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget v8, v0, v8

    aput v8, v2, v7

    const/4 v7, 0x2

    const/4 v8, 0x1

    aget v8, v0, v8

    aput v8, v2, v7

    const/4 v7, 0x3

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v2, v7

    const/4 v7, 0x4

    const/4 v8, 0x0

    aget v8, v1, v8

    aput v8, v2, v7

    const/4 v7, 0x5

    const/4 v8, 0x1

    aget v8, v1, v8

    aput v8, v2, v7

    .line 307
    new-instance v7, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-direct {v7, v8, v2, v9}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 308
    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->dashed:Z

    .line 309
    const v2, 0x3eb33333    # 0.35f

    const v8, 0x3ecccccd    # 0.4f

    mul-float/2addr v8, v4

    add-float/2addr v2, v8

    iput v2, v7, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 310
    const v2, 0x3f19999a    # 0.6f

    iput v2, v7, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->width:F

    .line 311
    invoke-interface {p0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    new-instance v2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v7, 0x12

    const/4 v8, 0x0

    aget v8, v1, v8

    const/4 v9, 0x1

    aget v9, v1, v9

    const v10, 0x4121eb85    # 10.12f

    invoke-static {v8, v9, v10}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->circle(FFF)[F

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v2, v7, v8, v9}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 313
    const/high16 v7, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    iput v7, v2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 314
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    const/4 v2, 0x0

    :goto_ad
    const/4 v7, 0x3

    if-ge v2, v7, :cond_f8

    .line 316
    iget v7, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->t:F

    const v8, 0x3ee66666    # 0.45f

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    mul-float/2addr v7, v8

    int-to-float v8, v2

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->frac(F)F

    move-result v7

    .line 317
    invoke-static {v0, v1, v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lerp([F[FF)[F

    move-result-object v8

    .line 318
    new-instance v9, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v10, 0xe

    const/4 v11, 0x0

    aget v11, v8, v11

    const/4 v12, 0x1

    aget v8, v8, v12

    const/high16 v12, 0x40900000    # 4.5f

    invoke-static {v11, v8, v12}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->circle(FFF)[F

    move-result-object v8

    const/4 v11, 0x1

    invoke-direct {v9, v10, v8, v11}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 319
    const v8, 0x3eb33333    # 0.35f

    const v10, 0x3f266666    # 0.65f

    mul-float/2addr v10, v4

    add-float/2addr v8, v10

    float-to-double v10, v7

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v7, v10

    mul-float/2addr v7, v8

    iput v7, v9, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 320
    invoke-interface {p0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    add-int/lit8 v2, v2, 0x1

    goto :goto_ad

    .line 299
    :cond_f8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_24
.end method

.method private static forehead(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;)V
    .registers 14
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
    const/4 v8, 0x6

    const/4 v7, 0x3

    const v11, 0x3d4ccccd    # 0.05f

    const/4 v0, 0x0

    const/4 v10, 0x1

    .line 327
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v1, v1, v0

    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v2, v2, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 328
    const/16 v1, 0x23

    new-array v1, v1, [F

    fill-array-data v1, :array_10c

    .line 330
    const v3, 0x3ca3d70a    # 0.02f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_31

    .line 331
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v1, v10}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 332
    const v4, 0x3eb33333    # 0.35f

    mul-float/2addr v4, v2

    iput v4, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 333
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_31
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    invoke-direct {v3, v8, v1, v10}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 336
    const v1, 0x3e3851ec    # 0.18f

    const v4, 0x3df5c28f    # 0.12f

    mul-float/2addr v4, v2

    add-float/2addr v1, v4

    iput v1, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 337
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    const/4 v1, -0x3

    :goto_44
    if-gt v1, v7, :cond_ab

    .line 339
    mul-int/lit8 v3, v1, 0x34

    add-int/lit16 v3, v3, 0x258

    int-to-float v3, v3

    .line 340
    const/16 v4, 0xa

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v0

    aput v3, v4, v10

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0xa

    add-int/lit16 v6, v6, 0x118

    int-to-float v6, v6

    aput v6, v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    aput v5, v4, v7

    const/4 v5, 0x4

    mul-int/lit8 v6, v1, 0x4

    int-to-float v6, v6

    add-float/2addr v6, v3

    aput v6, v4, v5

    const/4 v5, 0x5

    const/high16 v6, 0x43a50000    # 330.0f

    aput v6, v4, v5

    mul-int/lit8 v5, v1, 0x6

    int-to-float v5, v5

    add-float/2addr v5, v3

    aput v5, v4, v8

    const/4 v5, 0x7

    const/high16 v6, 0x43be0000    # 380.0f

    aput v6, v4, v5

    const/16 v5, 0x8

    mul-int/lit8 v6, v1, 0x8

    int-to-float v6, v6

    add-float/2addr v3, v6

    aput v3, v4, v5

    const/16 v3, 0x9

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    rsub-int v5, v5, 0x1a2

    int-to-float v5, v5

    aput v5, v4, v3

    .line 341
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/4 v5, 0x7

    invoke-direct {v3, v5, v4, v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 342
    const v4, 0x3e99999a    # 0.3f

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 343
    const v4, 0x3f333333    # 0.7f

    iput v4, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->width:F

    .line 344
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 346
    :cond_ab
    cmpl-float v1, v2, v11

    if-lez v1, :cond_10b

    .line 348
    :goto_af
    const/16 v1, 0xa

    if-ge v0, v1, :cond_10b

    .line 349
    iget v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->t:F

    const v3, 0x3fd9999a    # 1.7f

    mul-float/2addr v1, v3

    int-to-float v3, v0

    const v4, 0x3e0c49ba    # 0.137f

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->frac(F)F

    move-result v1

    .line 350
    const/high16 v3, 0x43d70000    # 430.0f

    int-to-float v4, v0

    const v5, 0x3f1e353f    # 0.618f

    mul-float/2addr v4, v5

    const v5, 0x3de147ae    # 0.11f

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->frac(F)F

    move-result v4

    const/high16 v5, 0x43aa0000    # 340.0f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 351
    const/high16 v4, 0x43960000    # 300.0f

    int-to-float v5, v0

    const v6, 0x3ec39581    # 0.382f

    mul-float/2addr v5, v6

    iget v6, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->t:F

    mul-float/2addr v6, v11

    add-float/2addr v5, v6

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->frac(F)F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 352
    new-instance v5, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v6, 0xe

    const/high16 v7, 0x40600000    # 3.5f

    invoke-static {v3, v4, v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->circle(FFF)[F

    move-result-object v3

    invoke-direct {v5, v6, v3, v10}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 353
    float-to-double v6, v1

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v1, v6

    mul-float/2addr v1, v2

    iput v1, v5, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 354
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_af

    .line 357
    :cond_10b
    return-void

    .line 328
    :array_10c
    .array-data 4
        0x0
        0x44160000    # 600.0f
        0x43830000    # 262.0f
        0x40000000    # 2.0f
        0x442f0000    # 700.0f
        0x43830000    # 262.0f
        0x44480000    # 800.0f
        0x43960000    # 300.0f
        0x444d0000    # 820.0f
        0x43be0000    # 380.0f
        0x40000000    # 2.0f
        0x443e0000    # 760.0f
        0x43cd0000    # 410.0f
        0x442a0000    # 680.0f
        0x43d20000    # 420.0f
        0x441b0000    # 620.0f
        0x43d48000    # 425.0f
        0x3f800000    # 1.0f
        0x44110000    # 580.0f
        0x43d48000    # 425.0f
        0x40000000    # 2.0f
        0x44020000    # 520.0f
        0x43d20000    # 420.0f
        0x43dc0000    # 440.0f
        0x43cd0000    # 410.0f
        0x43be0000    # 380.0f
        0x43be0000    # 380.0f
        0x40000000    # 2.0f
        0x43c80000    # 400.0f
        0x43960000    # 300.0f
        0x43fa0000    # 500.0f
        0x43830000    # 262.0f
        0x44160000    # 600.0f
        0x43830000    # 262.0f
        0x40400000    # 3.0f
    .end array-data
.end method

.method static frac(F)F
    .registers 3

    .prologue
    .line 571
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

    .line 148
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

    .line 248
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v2, v0, p2

    .line 249
    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, v2, v0

    if-ltz v0, :cond_18

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aget-boolean v0, v0, p2

    if-nez v0, :cond_19

    .line 266
    :cond_18
    :goto_18
    return-void

    .line 252
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

    .line 253
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

    .line 254
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

    .line 255
    iput v2, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 256
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_84

    .line 258
    const/16 v1, 0x9

    new-array v1, v1, [F

    fill-array-data v1, :array_9c

    .line 259
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    if-nez p2, :cond_67

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mirror([F)[F

    move-result-object v0

    :cond_67
    invoke-direct {v3, v8, v0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 260
    iput v2, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 261
    iput-boolean v7, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->dashed:Z

    .line 262
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    if-nez p2, :cond_82

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mirror([F)[F

    move-result-object v0

    :goto_79
    invoke-direct {v3, v8, v0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 264
    iput v2, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 265
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_82
    move-object v0, v1

    .line 263
    goto :goto_79

    .line 257
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

    .line 258
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

.method private static masseter(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;I)V
    .registers 17
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
    .line 361
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v4, v0, p2

    .line 362
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aget-boolean v5, v0, p2

    .line 363
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->MASS_TOP:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 364
    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceArt;->MASS_LOW:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    .line 365
    if-nez p2, :cond_2e

    .line 366
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v3

    aput v3, v0, v2

    .line 367
    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v3

    aput v3, v1, v2

    .line 369
    :cond_2e
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x0

    aget v3, v0, v3

    sub-float/2addr v2, v3

    .line 370
    const/4 v3, 0x1

    aget v3, v1, v3

    const/4 v6, 0x1

    aget v6, v0, v6

    sub-float/2addr v3, v6

    .line 371
    mul-float v6, v2, v2

    mul-float v7, v3, v3

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 372
    neg-float v3, v3

    div-float v7, v3, v6

    .line 373
    div-float v6, v2, v6

    .line 374
    const v8, 0x41dccccd    # 27.6f

    .line 375
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lerp([F[FF)[F

    move-result-object v2

    .line 376
    const/16 v3, 0x15

    new-array v9, v3, [F

    const/4 v3, 0x0

    const/4 v10, 0x0

    aput v10, v9, v3

    const/4 v3, 0x1

    const/4 v10, 0x0

    aget v10, v0, v10

    mul-float v11, v7, v8

    const v12, 0x3f19999a    # 0.6f

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    aput v10, v9, v3

    const/4 v3, 0x2

    const/4 v10, 0x1

    aget v10, v0, v10

    mul-float v11, v6, v8

    const v12, 0x3f19999a    # 0.6f

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    aput v10, v9, v3

    const/4 v3, 0x3

    const/high16 v10, 0x40000000    # 2.0f

    aput v10, v9, v3

    const/4 v3, 0x4

    const/4 v10, 0x0

    aget v10, v2, v10

    mul-float v11, v7, v8

    const v12, 0x3f99999a    # 1.2f

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    aput v10, v9, v3

    const/4 v3, 0x5

    const/4 v10, 0x1

    aget v10, v2, v10

    mul-float v11, v6, v8

    const v12, 0x3f99999a    # 1.2f

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    aput v10, v9, v3

    const/4 v3, 0x6

    const/4 v10, 0x0

    aget v10, v2, v10

    mul-float v11, v7, v8

    const v12, 0x3f8ccccd    # 1.1f

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    aput v10, v9, v3

    const/4 v3, 0x7

    const/4 v10, 0x1

    aget v10, v2, v10

    mul-float v11, v6, v8

    const v12, 0x3f8ccccd    # 1.1f

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    aput v10, v9, v3

    const/16 v3, 0x8

    const/4 v10, 0x0

    aget v10, v1, v10

    mul-float v11, v7, v8

    const v12, 0x3f333333    # 0.7f

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    aput v10, v9, v3

    const/16 v3, 0x9

    const/4 v10, 0x1

    aget v10, v1, v10

    mul-float v11, v6, v8

    const v12, 0x3f333333    # 0.7f

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    aput v10, v9, v3

    const/16 v3, 0xa

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v9, v3

    const/16 v3, 0xb

    const/4 v10, 0x0

    aget v10, v1, v10

    mul-float v11, v7, v8

    const v12, 0x3f333333    # 0.7f

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    aput v10, v9, v3

    const/16 v3, 0xc

    const/4 v10, 0x1

    aget v10, v1, v10

    mul-float v11, v6, v8

    const v12, 0x3f333333    # 0.7f

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    aput v10, v9, v3

    const/16 v3, 0xd

    const/high16 v10, 0x40000000    # 2.0f

    aput v10, v9, v3

    const/16 v3, 0xe

    const/4 v10, 0x0

    aget v10, v2, v10

    mul-float v11, v7, v8

    const v12, 0x3f8ccccd    # 1.1f

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    aput v10, v9, v3

    const/16 v3, 0xf

    const/4 v10, 0x1

    aget v10, v2, v10

    mul-float v11, v6, v8

    const v12, 0x3f8ccccd    # 1.1f

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    aput v10, v9, v3

    const/16 v3, 0x10

    const/4 v10, 0x0

    aget v10, v2, v10

    mul-float v11, v7, v8

    const v12, 0x3f99999a    # 1.2f

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    aput v10, v9, v3

    const/16 v3, 0x11

    const/4 v10, 0x1

    aget v2, v2, v10

    mul-float v10, v6, v8

    const v11, 0x3f99999a    # 1.2f

    mul-float/2addr v10, v11

    sub-float/2addr v2, v10

    aput v2, v9, v3

    const/16 v2, 0x12

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float v10, v7, v8

    const v11, 0x3f19999a    # 0.6f

    mul-float/2addr v10, v11

    sub-float/2addr v3, v10

    aput v3, v9, v2

    const/16 v2, 0x13

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float v10, v6, v8

    const v11, 0x3f19999a    # 0.6f

    mul-float/2addr v10, v11

    sub-float/2addr v3, v10

    aput v3, v9, v2

    const/16 v2, 0x14

    const/high16 v3, 0x40400000    # 3.0f

    aput v3, v9, v2

    .line 380
    if-eqz v5, :cond_1e7

    const/high16 v2, 0x3f800000    # 1.0f

    move v3, v2

    .line 381
    :goto_153
    const v2, 0x3ca3d70a    # 0.02f

    cmpl-float v2, v4, v2

    if-lez v2, :cond_16d

    if-eqz v5, :cond_16d

    .line 382
    new-instance v2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v5, 0x8

    const/4 v10, 0x1

    invoke-direct {v2, v5, v9, v10}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 383
    const v5, 0x3f19999a    # 0.6f

    mul-float/2addr v5, v4

    iput v5, v2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 384
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_16d
    new-instance v2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/4 v5, 0x6

    const/4 v10, 0x1

    invoke-direct {v2, v5, v9, v10}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 387
    const v5, 0x3e99999a    # 0.3f

    const v9, 0x3eb33333    # 0.35f

    mul-float/2addr v9, v4

    add-float/2addr v5, v9

    mul-float/2addr v5, v3

    iput v5, v2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 388
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    const/4 v2, -0x2

    :goto_183
    const/4 v5, 0x2

    if-gt v2, v5, :cond_1ed

    .line 390
    int-to-float v5, v2

    mul-float/2addr v5, v8

    const v9, 0x3ecccccd    # 0.4f

    mul-float/2addr v5, v9

    .line 391
    const/4 v9, 0x6

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    aget v11, v0, v11

    mul-float v12, v7, v5

    const v13, 0x3f19999a    # 0.6f

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    aput v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x1

    aget v11, v0, v11

    mul-float v12, v6, v5

    const v13, 0x3f19999a    # 0.6f

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    aput v11, v9, v10

    const/4 v10, 0x3

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x0

    aget v11, v1, v11

    mul-float v12, v7, v5

    const v13, 0x3f4ccccd    # 0.8f

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    aput v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x1

    aget v11, v1, v11

    mul-float/2addr v5, v6

    const v12, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v12

    add-float/2addr v5, v11

    aput v5, v9, v10

    .line 392
    new-instance v5, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/4 v10, 0x7

    const/4 v11, 0x0

    invoke-direct {v5, v10, v9, v11}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 393
    const v9, 0x3eb33333    # 0.35f

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v4

    add-float/2addr v9, v10

    mul-float/2addr v9, v3

    iput v9, v5, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 394
    const v9, 0x3f333333    # 0.7f

    iput v9, v5, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->width:F

    .line 395
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    add-int/lit8 v2, v2, 0x1

    goto :goto_183

    .line 380
    :cond_1e7
    const v2, 0x3eb33333    # 0.35f

    move v3, v2

    goto/16 :goto_153

    .line 397
    :cond_1ed
    return-void
.end method

.method static mirror([F)[F
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 557
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    move v1, v2

    .line 559
    :goto_8
    array-length v3, v0

    if-ge v1, v3, :cond_41

    .line 560
    aget v3, v0, v1

    .line 561
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

    .line 562
    :goto_1a
    if-ge v4, v3, :cond_3b

    .line 563
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

    .line 562
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 561
    :cond_31
    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_39

    const/4 v3, 0x3

    goto :goto_19

    :cond_39
    move v3, v2

    goto :goto_19

    .line 565
    :cond_3b
    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 566
    goto :goto_8

    .line 567
    :cond_41
    return-object v0
.end method

.method static mx(F)F
    .registers 2

    .prologue
    .line 134
    const/high16 v0, 0x44960000    # 1200.0f

    sub-float/2addr v0, p0

    return v0
.end method

.method private static nogo(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;)V
    .registers 12
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
    const/high16 v9, 0x432c0000    # 172.0f

    const/high16 v8, 0x42e80000    # 116.0f

    const v7, 0x3f4ccccd    # 0.8f

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 467
    move v1, v2

    :goto_a
    const/4 v0, 0x2

    if-ge v1, v0, :cond_c5

    .line 468
    if-nez v1, :cond_36

    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->EYE:[F

    aget v0, v0, v2

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v0

    .line 469
    :goto_17
    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->target:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3b

    .line 470
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v4, 0x9

    sget-object v5, Lcom/isaigu/gymapp/wearable/face/FaceArt;->EYE:[F

    aget v5, v5, v6

    invoke-static {v0, v5, v9, v8}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ellipse(FFFF)[F

    move-result-object v0

    invoke-direct {v3, v4, v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 471
    iput-boolean v6, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->dashed:Z

    .line 472
    iput v7, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 473
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    :goto_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 468
    :cond_36
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->EYE:[F

    aget v0, v0, v2

    goto :goto_17

    .line 476
    :cond_3b
    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->target:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_75

    .line 477
    if-nez v1, :cond_6b

    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->TRUNK:[F

    aget v0, v0, v2

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v0

    .line 478
    :goto_4a
    sget-object v3, Lcom/isaigu/gymapp/wearable/face/FaceArt;->TRUNK:[F

    aget v3, v3, v6

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->nogoMark(FF)Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    if-nez v1, :cond_70

    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NECK:[F

    aget v0, v0, v2

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v0

    .line 480
    :goto_5f
    sget-object v3, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NECK:[F

    aget v3, v3, v6

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->nogoMark(FF)Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 477
    :cond_6b
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->TRUNK:[F

    aget v0, v0, v2

    goto :goto_4a

    .line 479
    :cond_70
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NECK:[F

    aget v0, v0, v2

    goto :goto_5f

    .line 483
    :cond_75
    iget v3, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->target:I

    if-nez v3, :cond_a4

    .line 484
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v4, 0x9

    sget-object v5, Lcom/isaigu/gymapp/wearable/face/FaceArt;->EYE:[F

    aget v5, v5, v6

    invoke-static {v0, v5, v9, v8}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ellipse(FFFF)[F

    move-result-object v0

    invoke-direct {v3, v4, v0, v2}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 485
    iput-boolean v6, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->dashed:Z

    .line 486
    iput v7, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 487
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    if-nez v1, :cond_bb

    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->TRUNK:[F

    aget v0, v0, v2

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v0

    .line 489
    :goto_99
    sget-object v3, Lcom/isaigu/gymapp/wearable/face/FaceArt;->TRUNK:[F

    aget v3, v3, v6

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->nogoMark(FF)Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_a4
    if-nez v1, :cond_c0

    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NECK:[F

    aget v0, v0, v2

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v0

    .line 492
    :goto_ae
    sget-object v3, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NECK:[F

    aget v3, v3, v6

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->nogoMark(FF)Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_32

    .line 488
    :cond_bb
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->TRUNK:[F

    aget v0, v0, v2

    goto :goto_99

    .line 491
    :cond_c0
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NECK:[F

    aget v0, v0, v2

    goto :goto_ae

    .line 494
    :cond_c5
    return-void
.end method

.method private static nogoMark(FF)Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 498
    const v0, 0x419a8f5c    # 19.32f

    .line 499
    const v1, 0x3f350481    # 0.7071f

    mul-float/2addr v1, v0

    .line 500
    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->circle(FFF)[F

    move-result-object v0

    .line 501
    array-length v2, v0

    add-int/lit8 v2, v2, 0x6

    new-array v2, v2, [F

    .line 502
    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    array-length v0, v0

    .line 504
    const/4 v3, 0x0

    aput v3, v2, v0

    .line 505
    add-int/lit8 v3, v0, 0x1

    sub-float v4, p0, v1

    aput v4, v2, v3

    .line 506
    add-int/lit8 v3, v0, 0x2

    add-float v4, p1, v1

    aput v4, v2, v3

    .line 507
    add-int/lit8 v3, v0, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 508
    add-int/lit8 v3, v0, 0x4

    add-float v4, p0, v1

    aput v4, v2, v3

    .line 509
    add-int/lit8 v0, v0, 0x5

    sub-float v1, p1, v1

    aput v1, v2, v0

    .line 510
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v1, 0x9

    invoke-direct {v0, v1, v2, v5}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 511
    const v1, 0x3fb33333    # 1.4f

    iput v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->width:F

    .line 512
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
    .line 446
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v0, v0, p7

    .line 447
    const v1, 0x3d4ccccd    # 0.05f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3b

    if-eqz p6, :cond_3b

    .line 448
    iget v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->t:F

    const v2, 0x3fcccccd    # 1.6f

    mul-float/2addr v1, v2

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->frac(F)F

    move-result v1

    .line 449
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

    .line 450
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, v1

    mul-float/2addr v0, v1

    iput v0, v2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 451
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
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

    .line 454
    new-instance v2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v0, 0xa

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 455
    if-eqz p6, :cond_a0

    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->outline:Z

    if-eqz v0, :cond_9c

    const v0, 0x3df5c28f    # 0.12f

    :goto_60
    mul-float/2addr v0, p5

    iput v0, v2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 456
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    new-instance v2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v0, 0xb

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 458
    if-eqz p6, :cond_a7

    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->outline:Z

    if-eqz v0, :cond_a4

    const v0, 0x3f333333    # 0.7f

    :goto_77
    mul-float/2addr v0, p5

    iput v0, v2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 459
    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->outline:Z

    iput-boolean v0, v2, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->dashed:Z

    .line 460
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    new-instance v1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v0, 0xc

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, p2, v3

    const/4 v4, 0x1

    aget v4, p2, v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(ILjava/lang/String;FF)V

    .line 462
    if-eqz p6, :cond_ab

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_96
    iput v0, v1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 463
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    return-void

    .line 455
    :cond_9c
    const v0, 0x3f0ccccd    # 0.55f

    goto :goto_60

    :cond_a0
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_60

    .line 458
    :cond_a4
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_77

    :cond_a7
    const v0, 0x3e99999a    # 0.3f

    goto :goto_77

    .line 462
    :cond_ab
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_96
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
    .line 402
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

    .line 403
    :goto_18
    iget v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->target:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_37

    .line 404
    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceArt;->CHIN_PAD_L:[F

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->pad(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;[FFIFZI)V

    .line 405
    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceArt;->CHIN_PAD_R:[F

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->pad(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;[FFIFZI)V

    .line 442
    :cond_33
    :goto_33
    return-void

    .line 402
    :cond_34
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_18

    .line 408
    :cond_37
    iget v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->target:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_cc

    .line 409
    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->pairs2:Z

    if-eqz v0, :cond_9f

    .line 410
    const/4 v7, 0x0

    :goto_41
    const/4 v0, 0x2

    if-ge v7, v0, :cond_33

    .line 411
    if-nez v7, :cond_91

    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->FOREHEAD_PAIR:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v0

    move v1, v0

    .line 412
    :goto_50
    if-nez v7, :cond_98

    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->FOREHEAD_PAIR:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v0

    move v8, v0

    .line 413
    :goto_5c
    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v0, 0x0

    aput v1, v2, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceArt;->FOREHEAD_PAIR:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aget-boolean v6, v0, v7

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->pad(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;[FFIFZI)V

    .line 414
    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v0, 0x0

    aput v8, v2, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceArt;->FOREHEAD_PAIR:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aget-boolean v6, v0, v7

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->pad(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;[FFIFZI)V

    .line 410
    add-int/lit8 v7, v7, 0x1

    goto :goto_41

    .line 411
    :cond_91
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->FOREHEAD_PAIR:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    move v1, v0

    goto :goto_50

    .line 412
    :cond_98
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->FOREHEAD_PAIR:[F

    const/4 v2, 0x2

    aget v0, v0, v2

    move v8, v0

    goto :goto_5c

    .line 417
    :cond_9f
    const/4 v0, 0x2

    new-array v2, v0, [F

    const/4 v0, 0x0

    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceArt;->FOREHEAD_PAD:[F

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v1

    aput v1, v2, v0

    const/4 v0, 0x1

    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceArt;->FOREHEAD_PAD:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    aput v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->pad(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;[FFIFZI)V

    .line 418
    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceArt;->FOREHEAD_PAD:[F

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->pad(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;[FFIFZI)V

    goto/16 :goto_33

    .line 422
    :cond_cc
    iget v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->target:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13d

    .line 423
    const/4 v7, 0x0

    :goto_d2
    const/4 v0, 0x2

    if-ge v7, v0, :cond_33

    .line 424
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->MASS_LOW:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceArt;->MASS_TOP:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-float/2addr v0, v1

    float-to-double v2, v0

    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->MASS_LOW:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceArt;->MASS_TOP:[F

    const/4 v4, 0x0

    aget v1, v1, v4

    sub-float v1, v0, v1

    if-nez v7, :cond_13b

    const/4 v0, -0x1

    :goto_f0
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v3, v0

    .line 425
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->JAW_PAD_UP:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 426
    sget-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->JAW_PAD_LOW:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [F

    .line 427
    if-nez v7, :cond_123

    .line 428
    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, v2, v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v1

    aput v1, v2, v0

    .line 429
    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, v8, v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v1

    aput v1, v8, v0

    .line 431
    :cond_123
    const/4 v4, 0x1

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aget-boolean v6, v0, v7

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->pad(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;[FFIFZI)V

    .line 432
    const/4 v4, 0x2

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aget-boolean v6, v0, v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v8

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->pad(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;[FFIFZI)V

    .line 423
    add-int/lit8 v7, v7, 0x1

    goto :goto_d2

    .line 424
    :cond_13b
    const/4 v0, 0x1

    goto :goto_f0

    .line 436
    :cond_13d
    const/4 v7, 0x0

    :goto_13e
    const/4 v0, 0x2

    if-ge v7, v0, :cond_33

    .line 437
    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->cheekPads(I)[[F

    move-result-object v8

    .line 438
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

    if-nez v7, :cond_189

    const/4 v0, -0x1

    :goto_160
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v3, v0

    .line 439
    const/4 v0, 0x0

    aget-object v2, v8, v0

    const/4 v4, 0x1

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aget-boolean v6, v0, v7

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->pad(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;[FFIFZI)V

    .line 440
    const/4 v0, 0x1

    aget-object v2, v8, v0

    const/4 v4, 0x2

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aget-boolean v6, v0, v7

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->pad(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;[FFIFZI)V

    .line 436
    add-int/lit8 v7, v7, 0x1

    goto :goto_13e

    .line 438
    :cond_189
    const/4 v0, 0x1

    goto :goto_160
.end method

.method static roundRect(FFFFFF)[F
    .registers 17

    .prologue
    .line 532
    const v0, 0x3f0d6388    # 0.5523f

    mul-float/2addr v0, p4

    .line 533
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

    .line 537
    const/high16 v0, 0x42b40000    # 90.0f

    sub-float v0, p5, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 538
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 539
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v5, v0

    .line 540
    const/4 v0, 0x0

    .line 541
    :goto_10b
    array-length v1, v3

    if-ge v0, v1, :cond_158

    .line 542
    aget v1, v3, v0

    .line 543
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_11b

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_148

    :cond_11b
    const/4 v1, 0x1

    .line 544
    :goto_11c
    const/4 v2, 0x0

    :goto_11d
    if-ge v2, v1, :cond_152

    .line 545
    add-int/lit8 v6, v0, 0x1

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    aget v6, v3, v6

    .line 546
    add-int/lit8 v7, v0, 0x2

    mul-int/lit8 v8, v2, 0x2

    add-int/2addr v7, v8

    aget v7, v3, v7

    .line 547
    add-int/lit8 v8, v0, 0x1

    mul-int/lit8 v9, v2, 0x2

    add-int/2addr v8, v9

    mul-float v9, v6, v4

    add-float/2addr v9, p0

    mul-float v10, v7, v5

    sub-float/2addr v9, v10

    aput v9, v3, v8

    .line 548
    add-int/lit8 v8, v0, 0x2

    mul-int/lit8 v9, v2, 0x2

    add-int/2addr v8, v9

    mul-float/2addr v6, v5

    add-float/2addr v6, p1

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    aput v6, v3, v8

    .line 544
    add-int/lit8 v2, v2, 0x1

    goto :goto_11d

    .line 543
    :cond_148
    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_150

    const/4 v1, 0x3

    goto :goto_11c

    :cond_150
    const/4 v1, 0x0

    goto :goto_11c

    .line 550
    :cond_152
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 551
    goto :goto_10b

    .line 552
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
    .line 189
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v5, v2, p2

    .line 190
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->side:[Z

    aget-boolean v6, v2, p2

    .line 191
    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_O:[F

    invoke-virtual {v2}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 192
    sget-object v3, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_I:[F

    sget-object v4, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_O:[F

    const v7, 0x3de147ae    # 0.11f

    mul-float/2addr v7, v5

    invoke-static {v3, v4, v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lerp([F[FF)[F

    move-result-object v7

    .line 193
    if-nez p2, :cond_36

    .line 194
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v4

    aput v4, v2, v3

    .line 195
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, v7, v4

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v4

    aput v4, v7, v3

    .line 197
    :cond_36
    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, 0x0

    aget v4, v2, v4

    sub-float v8, v3, v4

    .line 198
    const/4 v3, 0x1

    aget v3, v7, v3

    const/4 v4, 0x1

    aget v4, v2, v4

    sub-float v9, v3, v4

    .line 199
    mul-float v3, v8, v8

    mul-float v4, v9, v9

    add-float/2addr v3, v4

    float-to-double v10, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v3, v10

    .line 200
    neg-float v4, v9

    div-float v10, v4, v3

    .line 201
    div-float v11, v8, v3

    .line 202
    const v3, 0x419a8f5c    # 19.32f

    const/high16 v4, 0x3f800000    # 1.0f

    const v12, 0x3e99999a    # 0.3f

    mul-float/2addr v12, v5

    add-float/2addr v4, v12

    mul-float v12, v3, v4

    .line 203
    const v3, 0x3ee66666    # 0.45f

    invoke-static {v2, v7, v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lerp([F[FF)[F

    move-result-object v13

    .line 204
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

    .line 212
    if-eqz v6, :cond_320

    const/high16 v3, 0x3f800000    # 1.0f

    move v4, v3

    .line 213
    :goto_20b
    const v3, 0x3ca3d70a    # 0.02f

    cmpl-float v3, v5, v3

    if-lez v3, :cond_226

    if-eqz v6, :cond_226

    .line 214
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v15, 0x8

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v3, v15, v14, v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 215
    iput v5, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 216
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_226
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/4 v15, 0x6

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v3, v15, v14, v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 219
    const v14, 0x3ec28f5c    # 0.38f

    const/high16 v15, 0x3f000000    # 0.5f

    mul-float/2addr v15, v5

    add-float/2addr v14, v15

    mul-float/2addr v14, v4

    iput v14, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 220
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const/4 v3, -0x2

    :goto_240
    const/4 v14, 0x2

    if-gt v3, v14, :cond_326

    .line 222
    int-to-float v14, v3

    mul-float/2addr v14, v12

    const v15, 0x3ec28f5c    # 0.38f

    mul-float/2addr v14, v15

    .line 223
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

    .line 227
    new-instance v14, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v16, 0x7

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v0, v15, v1}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 228
    const v15, 0x3ee66666    # 0.45f

    const v16, 0x3f0ccccd    # 0.55f

    mul-float v16, v16, v5

    add-float v15, v15, v16

    mul-float/2addr v15, v4

    iput v15, v14, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 229
    const v15, 0x3f4ccccd    # 0.8f

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v16, v16, v5

    add-float v15, v15, v16

    iput v15, v14, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->width:F

    .line 230
    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_240

    .line 212
    :cond_320
    const v3, 0x3eb33333    # 0.35f

    move v4, v3

    goto/16 :goto_20b

    .line 233
    :cond_326
    const v3, 0x3d4ccccd    # 0.05f

    cmpl-float v3, v5, v3

    if-lez v3, :cond_3a3

    if-eqz v6, :cond_3a3

    .line 234
    const v3, 0x3eb33333    # 0.35f

    move-object/from16 v0, p1

    iget v4, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->hz:I

    int-to-float v4, v4

    const/high16 v6, 0x42f00000    # 120.0f

    div-float/2addr v4, v6

    add-float/2addr v4, v3

    .line 235
    const/4 v3, 0x0

    :goto_33c
    const/4 v6, 0x4

    if-ge v3, v6, :cond_3a3

    .line 236
    move-object/from16 v0, p1

    iget v6, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->t:F

    mul-float/2addr v6, v4

    int-to-float v8, v3

    const/high16 v9, 0x3e800000    # 0.25f

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->frac(F)F

    move-result v6

    .line 237
    invoke-static {v7, v2, v6}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lerp([F[FF)[F

    move-result-object v8

    .line 238
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

    .line 239
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

    .line 240
    float-to-double v8, v6

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v6, v8

    mul-float/2addr v6, v5

    iput v6, v13, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 241
    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v3, v3, 0x1

    goto :goto_33c

    .line 244
    :cond_3a3
    return-void
.end method
