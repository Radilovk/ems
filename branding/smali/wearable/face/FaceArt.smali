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

.field public static final CHIN:I = 0x9

.field public static final CM:F = 46.0f

.field public static final CORNER:I = 0x11

.field public static final EYE:[F

.field public static final EYE_RX:F = 172.0f

.field public static final EYE_RY:F = 116.0f

.field public static final FIBRE:I = 0x7

.field public static final FLOW:I = 0x12

.field public static final FORAMINA:[[F

.field public static final FOREHEAD:I = 0x8

.field public static final GLOW:I = 0x8

.field public static final H:I = 0x520

.field public static final INFRAORBITAL:[F

.field public static final JAW_L:I = 0x6

.field public static final JAW_R:I = 0x7

.field public static final L:F = 1.0f

.field public static final LABEL:I = 0xc

.field public static final LC_I:[F

.field public static final LC_L:I = 0x4

.field public static final LC_O:[F

.field public static final LC_R:I = 0x5

.field public static final M:F = 0.0f

.field public static final MASS_LOW:[F

.field public static final MASS_TOP:[F

.field public static final MENTAL:[F

.field public static final MOUTH:[F

.field public static final MUSCLE:I = 0x6

.field public static final NECK:[F

.field public static final NL_I:[F

.field public static final NL_L:I = 0x2

.field public static final NL_O:[F

.field public static final NL_R:I = 0x3

.field public static final NODE_EAR:[F

.field public static final NODE_JAW:[F

.field public static final NOGO:I = 0x9

.field public static final PAD:I = 0xa

.field public static final PAD_LINE:I = 0xb

.field public static final RIPPLE:I = 0xf

.field public static final SHORTEN:F = 0.11f

.field public static final SITES:I = 0xa

.field public static final SPARK:I = 0xe

.field public static final SUPRAORBITAL:[F

.field public static final TRUNK:[F

.field public static final W:I = 0x4af

.field public static final Z:F = 3.0f

.field public static final ZM_I:[F

.field public static final ZM_L:I = 0x0

.field public static final ZM_O:[F

.field public static final ZM_R:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x2

    .line 118
    new-array v0, v3, [F

    fill-array-data v0, :array_94

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_O:[F

    .line 119
    new-array v0, v3, [F

    fill-array-data v0, :array_9c

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_I:[F

    .line 121
    new-array v0, v3, [F

    fill-array-data v0, :array_a4

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NL_O:[F

    .line 122
    new-array v0, v3, [F

    fill-array-data v0, :array_ac

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NL_I:[F

    .line 124
    new-array v0, v3, [F

    fill-array-data v0, :array_b4

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->LC_O:[F

    .line 125
    new-array v0, v3, [F

    fill-array-data v0, :array_bc

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->LC_I:[F

    .line 127
    new-array v0, v3, [F

    fill-array-data v0, :array_c4

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->MOUTH:[F

    .line 129
    new-array v0, v3, [F

    fill-array-data v0, :array_cc

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->CANTHUS:[F

    .line 131
    new-array v0, v3, [F

    fill-array-data v0, :array_d4

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->EYE:[F

    .line 134
    new-array v0, v3, [F

    fill-array-data v0, :array_dc

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->TRUNK:[F

    .line 135
    new-array v0, v3, [F

    fill-array-data v0, :array_e4

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NECK:[F

    .line 140
    new-array v0, v3, [F

    fill-array-data v0, :array_ec

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->SUPRAORBITAL:[F

    new-array v0, v3, [F

    fill-array-data v0, :array_f4

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->INFRAORBITAL:[F

    new-array v0, v3, [F

    fill-array-data v0, :array_fc

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->MENTAL:[F

    .line 141
    const/4 v0, 0x3

    new-array v0, v0, [[F

    const/4 v1, 0x0

    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceArt;->SUPRAORBITAL:[F

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceArt;->INFRAORBITAL:[F

    aput-object v2, v0, v1

    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceArt;->MENTAL:[F

    aput-object v1, v0, v3

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->FORAMINA:[[F

    .line 144
    new-array v0, v3, [F

    fill-array-data v0, :array_104

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->MASS_TOP:[F

    new-array v0, v3, [F

    fill-array-data v0, :array_10c

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->MASS_LOW:[F

    .line 146
    new-array v0, v3, [F

    fill-array-data v0, :array_114

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NODE_EAR:[F

    new-array v0, v3, [F

    fill-array-data v0, :array_11c

    sput-object v0, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NODE_JAW:[F

    return-void

    .line 118
    nop

    :array_94
    .array-data 4
        0x444bc000    # 815.0f
        0x442c8000    # 690.0f
    .end array-data

    .line 119
    :array_9c
    .array-data 4
        0x44348000    # 722.0f
        0x44568000    # 858.0f
    .end array-data

    .line 121
    :array_a4
    .array-data 4
        0x442f0000    # 700.0f
        0x442c8000    # 690.0f
    .end array-data

    .line 122
    :array_ac
    .array-data 4
        0x44298000    # 678.0f
        0x44528000    # 842.0f
    .end array-data

    .line 124
    :array_b4
    .array-data 4
        0x44510000    # 836.0f
        0x445e0000    # 888.0f
    .end array-data

    .line 125
    :array_bc
    .array-data 4
        0x44330000    # 716.0f
        0x44610000    # 900.0f
    .end array-data

    .line 127
    :array_c4
    .array-data 4
        0x44318000    # 710.0f
        0x445a0000    # 872.0f
    .end array-data

    .line 129
    :array_cc
    .array-data 4
        0x44520000    # 840.0f
        0x44098000    # 550.0f
    .end array-data

    .line 131
    :array_d4
    .array-data 4
        0x443e0000    # 760.0f
        0x440d8000    # 566.0f
    .end array-data

    .line 134
    :array_dc
    .array-data 4
        0x445d0000    # 884.0f
        0x44320000    # 712.0f
    .end array-data

    .line 135
    :array_e4
    .array-data 4
        0x443b0000    # 748.0f
        0x44920000    # 1168.0f
    .end array-data

    .line 140
    :array_ec
    .array-data 4
        0x443d4000    # 757.0f
        0x43ef0000    # 478.0f
    .end array-data

    :array_f4
    .array-data 4
        0x443b0000    # 748.0f
        0x44228000    # 650.0f
    .end array-data

    :array_fc
    .array-data 4
        0x442c8000    # 690.0f
        0x44764000    # 985.0f
    .end array-data

    .line 144
    :array_104
    .array-data 4
        0x44548000    # 850.0f
        0x4437c000    # 735.0f
    .end array-data

    :array_10c
    .array-data 4
        0x44498000    # 806.0f
        0x4464c000    # 915.0f
    .end array-data

    .line 146
    :array_114
    .array-data 4
        0x445a0000    # 872.0f
        0x442c8000    # 690.0f
    .end array-data

    :array_11c
    .array-data 4
        0x44458000    # 790.0f
        0x44714000    # 965.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static at([FI)[F
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->sideOf(I)I

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x2

    new-array v0, v0, [F

    aget v1, p0, v2

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v1

    aput v1, v0, v2

    aget v1, p0, v3

    aput v1, v0, v3

    :goto_17
    return-object v0

    :cond_18
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    goto :goto_17
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
    const/4 v1, 0x0

    const/4 v10, 0x6

    const/high16 v9, 0x40000000    # 2.0f

    const/16 v8, 0x9

    const/4 v7, 0x1

    .line 403
    iget-boolean v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->sensory:Z

    if-eqz v0, :cond_13e

    move v0, v1

    .line 404
    :goto_c
    const/high16 v2, 0x41380000    # 11.5f

    mul-float v4, v2, v0

    .line 405
    const/16 v2, 0x15

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/high16 v3, 0x440f0000    # 572.0f

    aput v3, v2, v7

    const/4 v3, 0x2

    const v5, 0x44834000    # 1050.0f

    aput v5, v2, v3

    const/4 v3, 0x3

    aput v9, v2, v3

    const/4 v3, 0x4

    const v5, 0x44138000    # 590.0f

    aput v5, v2, v3

    const/4 v3, 0x5

    const/high16 v5, 0x44840000    # 1056.0f

    aput v5, v2, v3

    const v3, 0x44188000    # 610.0f

    aput v3, v2, v10

    const/4 v3, 0x7

    const/high16 v5, 0x44840000    # 1056.0f

    aput v5, v2, v3

    const/16 v3, 0x8

    const/high16 v5, 0x441d0000    # 628.0f

    aput v5, v2, v3

    const v3, 0x44834000    # 1050.0f

    aput v3, v2, v8

    const/16 v3, 0xa

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v3

    const/16 v3, 0xb

    const/high16 v5, 0x44270000    # 668.0f

    aput v5, v2, v3

    const/16 v3, 0xc

    const v5, 0x448b8000    # 1116.0f

    sub-float/2addr v5, v4

    aput v5, v2, v3

    const/16 v3, 0xd

    aput v9, v2, v3

    const/16 v3, 0xe

    const/high16 v5, 0x44200000    # 640.0f

    aput v5, v2, v3

    const/16 v3, 0xf

    const/high16 v5, 0x448d0000    # 1128.0f

    sub-float/2addr v5, v4

    aput v5, v2, v3

    const/16 v3, 0x10

    const/high16 v5, 0x440c0000    # 560.0f

    aput v5, v2, v3

    const/16 v3, 0x11

    const/high16 v5, 0x448d0000    # 1128.0f

    sub-float/2addr v5, v4

    aput v5, v2, v3

    const/16 v3, 0x12

    const/high16 v5, 0x44050000    # 532.0f

    aput v5, v2, v3

    const/16 v3, 0x13

    const v5, 0x448b8000    # 1116.0f

    sub-float/2addr v5, v4

    aput v5, v2, v3

    const/16 v3, 0x14

    const/high16 v5, 0x40400000    # 3.0f

    aput v5, v2, v3

    .line 407
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    invoke-direct {v3, v10, v2, v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 408
    const v2, 0x3e6147ae    # 0.22f

    const v5, 0x3eb33333    # 0.35f

    mul-float/2addr v5, v0

    add-float/2addr v2, v5

    iput v2, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 409
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    const/4 v2, 0x0

    move v3, v2

    :goto_9e
    const/4 v2, 0x2

    if-ge v3, v2, :cond_144

    .line 411
    const/16 v2, 0x12

    new-array v2, v2, [F

    const/4 v5, 0x0

    aput v1, v2, v5

    const/high16 v5, 0x44130000    # 588.0f

    aput v5, v2, v7

    const/4 v5, 0x2

    const v6, 0x44834000    # 1050.0f

    aput v6, v2, v5

    const/4 v5, 0x3

    aput v9, v2, v5

    const/4 v5, 0x4

    const/high16 v6, 0x440f0000    # 572.0f

    aput v6, v2, v5

    const/4 v5, 0x5

    const/high16 v6, 0x44850000    # 1064.0f

    aput v6, v2, v5

    const/high16 v5, 0x440b0000    # 556.0f

    aput v5, v2, v10

    const/4 v5, 0x7

    const/high16 v6, 0x44880000    # 1088.0f

    aput v6, v2, v5

    const/16 v5, 0x8

    const/high16 v6, 0x44090000    # 548.0f

    aput v6, v2, v5

    const v5, 0x448b8000    # 1116.0f

    sub-float/2addr v5, v4

    aput v5, v2, v8

    const/16 v5, 0xa

    aput v9, v2, v5

    const/16 v5, 0xb

    const/high16 v6, 0x440c0000    # 560.0f

    aput v6, v2, v5

    const/16 v5, 0xc

    const v6, 0x448c4000    # 1122.0f

    sub-float/2addr v6, v4

    aput v6, v2, v5

    const/16 v5, 0xd

    const v6, 0x440f8000    # 574.0f

    aput v6, v2, v5

    const/16 v5, 0xe

    const v6, 0x448ac000    # 1110.0f

    sub-float/2addr v6, v4

    aput v6, v2, v5

    const/16 v5, 0xf

    const/high16 v6, 0x44150000    # 596.0f

    aput v6, v2, v5

    const/16 v5, 0x10

    const/high16 v6, 0x44840000    # 1056.0f

    aput v6, v2, v5

    const/16 v5, 0x11

    const/high16 v6, 0x40400000    # 3.0f

    aput v6, v2, v5

    .line 412
    if-ne v3, v7, :cond_10d

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mirror([F)[F

    move-result-object v2

    .line 413
    :cond_10d
    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v5, v5, v8

    const v6, 0x3ca3d70a    # 0.02f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_128

    .line 414
    new-instance v5, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v6, 0x8

    invoke-direct {v5, v6, v2, v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 415
    iget-object v6, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v6, v6, v8

    iput v6, v5, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 416
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_128
    new-instance v5, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    invoke-direct {v5, v10, v2, v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 419
    const v2, 0x3ee66666    # 0.45f

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v0

    add-float/2addr v2, v6

    iput v2, v5, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 420
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_9e

    .line 403
    :cond_13e
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v0, v0, v8

    goto/16 :goto_c

    .line 422
    :cond_144
    return-void
.end method

.method static circle(FFF)[F
    .registers 4

    .prologue
    .line 504
    invoke-static {p0, p1, p2, p2}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ellipse(FFFF)[F

    move-result-object v0

    return-object v0
.end method

.method public static compose(Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;)Ljava/util/List;
    .registers 13
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
    const/16 v11, 0xa

    const/4 v9, 0x2

    const v10, 0x3de147ae    # 0.11f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->nogo:Z

    if-eqz v1, :cond_14

    .line 217
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->nogo(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;)V

    .line 219
    :cond_14
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->muscle:Z

    if-eqz v1, :cond_97

    move v2, v7

    .line 220
    :goto_19
    if-ge v2, v11, :cond_65

    .line 221
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->on:[Z

    aget-boolean v1, v1, v2

    if-nez v1, :cond_24

    .line 220
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 224
    :cond_24
    packed-switch v2, :pswitch_data_aa

    .line 233
    sget-object v3, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_O:[F

    sget-object v4, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_I:[F

    const v5, 0x419a8f5c    # 19.32f

    move-object v1, p0

    move v6, v10

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->spindle(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;I[F[FFF)V

    goto :goto_21

    .line 225
    :pswitch_34
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->forehead(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;)V

    goto :goto_21

    .line 226
    :pswitch_38
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->chin(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;)V

    goto :goto_21

    .line 228
    :pswitch_3c
    sget-object v3, Lcom/isaigu/gymapp/wearable/face/FaceArt;->MASS_TOP:[F

    sget-object v4, Lcom/isaigu/gymapp/wearable/face/FaceArt;->MASS_LOW:[F

    const v5, 0x41dccccd    # 27.6f

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->spindle(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;I[F[FFF)V

    goto :goto_21

    .line 230
    :pswitch_49
    sget-object v3, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NL_O:[F

    sget-object v4, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NL_I:[F

    const v5, 0x416b851e    # 14.719999f

    move-object v1, p0

    move v6, v10

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->spindle(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;I[F[FFF)V

    goto :goto_21

    .line 232
    :pswitch_56
    sget-object v3, Lcom/isaigu/gymapp/wearable/face/FaceArt;->LC_O:[F

    sget-object v4, Lcom/isaigu/gymapp/wearable/face/FaceArt;->LC_I:[F

    const v5, 0x415ccccd    # 13.8f

    const v6, 0x3d872b02    # 0.066f

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->spindle(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;I[F[FFF)V

    goto :goto_21

    :cond_65
    move v3, v7

    .line 236
    :goto_66
    if-ge v3, v9, :cond_97

    .line 237
    if-ne v3, v8, :cond_85

    move v1, v7

    .line 238
    :goto_6b
    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->drain:Z

    if-eqz v2, :cond_89

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->on:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_7e

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->on:[Z

    if-ne v3, v8, :cond_87

    move v2, v9

    :goto_7a
    aget-boolean v2, v4, v2

    if-eqz v2, :cond_89

    .line 239
    :cond_7e
    invoke-static {v0, p0, v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->flow(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;I)V

    .line 236
    :cond_81
    :goto_81
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_66

    :cond_85
    move v1, v8

    .line 237
    goto :goto_6b

    .line 238
    :cond_87
    const/4 v2, 0x3

    goto :goto_7a

    .line 240
    :cond_89
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->on:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_81

    iget-boolean v2, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->sensory:Z

    if-nez v2, :cond_81

    .line 241
    invoke-static {v0, p0, v3, v1}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lift(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;II)V

    goto :goto_81

    .line 245
    :cond_97
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->pads:Z

    if-eqz v1, :cond_a9

    .line 246
    :goto_9b
    if-ge v7, v11, :cond_a9

    .line 247
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->on:[Z

    aget-boolean v1, v1, v7

    if-eqz v1, :cond_a6

    .line 248
    invoke-static {v0, p0, v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->pad2(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;I)V

    .line 246
    :cond_a6
    add-int/lit8 v7, v7, 0x1

    goto :goto_9b

    .line 252
    :cond_a9
    return-object v0

    .line 224
    :pswitch_data_aa
    .packed-switch 0x2
        :pswitch_49
        :pswitch_49
        :pswitch_56
        :pswitch_56
        :pswitch_3c
        :pswitch_3c
        :pswitch_34
        :pswitch_38
    .end packed-switch
.end method

.method static ellipse(FFFF)[F
    .registers 9

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 508
    const v0, 0x3f0d6388    # 0.5523f

    .line 509
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
    .registers 19
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
    .line 337
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_123

    const/4 v2, 0x0

    move v4, v2

    .line 338
    :goto_7
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_127

    const/4 v2, 0x2

    move v3, v2

    .line 339
    :goto_e
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_12b

    const/4 v2, 0x4

    .line 340
    :goto_14
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v4, v5, v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v3, v5, v3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v2, v5, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 341
    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_O:[F

    sget-object v3, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_I:[F

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lerp([F[FF)[F

    move-result-object v7

    .line 342
    const/4 v2, 0x2

    new-array v8, v2, [[F

    const/4 v2, 0x0

    sget-object v3, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NODE_EAR:[F

    aput-object v3, v8, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NODE_JAW:[F

    aput-object v3, v8, v2

    .line 343
    const/4 v2, 0x0

    move v5, v2

    :goto_47
    const/4 v2, 0x2

    if-ge v5, v2, :cond_133

    .line 344
    invoke-virtual {v7}, [F->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 345
    aget-object v3, v8, v5

    invoke-virtual {v3}, [F->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    .line 346
    if-nez p2, :cond_6e

    .line 347
    const/4 v4, 0x0

    const/4 v9, 0x0

    aget v9, v2, v9

    invoke-static {v9}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v9

    aput v9, v2, v4

    .line 348
    const/4 v4, 0x0

    const/4 v9, 0x0

    aget v9, v3, v9

    invoke-static {v9}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v9

    aput v9, v3, v4

    .line 350
    :cond_6e
    new-instance v4, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v9, 0xd

    const/4 v10, 0x6

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aget v12, v2, v12

    aput v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x1

    aget v12, v2, v12

    aput v12, v10, v11

    const/4 v11, 0x3

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v10, v11

    const/4 v11, 0x4

    const/4 v12, 0x0

    aget v12, v3, v12

    aput v12, v10, v11

    const/4 v11, 0x5

    const/4 v12, 0x1

    aget v12, v3, v12

    aput v12, v10, v11

    const/4 v11, 0x0

    invoke-direct {v4, v9, v10, v11}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 351
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->dashed:Z

    .line 352
    const v9, 0x3eb33333    # 0.35f

    const v10, 0x3ecccccd    # 0.4f

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    iput v9, v4, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 353
    const v9, 0x3f19999a    # 0.6f

    iput v9, v4, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->width:F

    .line 354
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v4, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v9, 0x12

    const/4 v10, 0x0

    aget v10, v3, v10

    const/4 v11, 0x1

    aget v11, v3, v11

    const v12, 0x4121eb85    # 10.12f

    invoke-static {v10, v11, v12}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->circle(FFF)[F

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v4, v9, v10, v11}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 356
    const/high16 v9, 0x3f000000    # 0.5f

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    iput v9, v4, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 357
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    const/4 v4, 0x0

    :goto_d4
    const/4 v9, 0x3

    if-ge v4, v9, :cond_12e

    .line 359
    move-object/from16 v0, p1

    iget v9, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->t:F

    const v10, 0x3ee66666    # 0.45f

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float/2addr v11, v6

    add-float/2addr v10, v11

    mul-float/2addr v9, v10

    int-to-float v10, v4

    const/high16 v11, 0x40400000    # 3.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    invoke-static {v9}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->frac(F)F

    move-result v9

    .line 360
    invoke-static {v2, v3, v9}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lerp([F[FF)[F

    move-result-object v10

    .line 361
    new-instance v11, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v12, 0xe

    const/4 v13, 0x0

    aget v13, v10, v13

    const/4 v14, 0x1

    aget v10, v10, v14

    const/high16 v14, 0x40900000    # 4.5f

    invoke-static {v13, v10, v14}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->circle(FFF)[F

    move-result-object v10

    const/4 v13, 0x1

    invoke-direct {v11, v12, v10, v13}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 362
    const v10, 0x3eb33333    # 0.35f

    const v12, 0x3f266666    # 0.65f

    mul-float/2addr v12, v6

    add-float/2addr v10, v12

    float-to-double v12, v9

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v9, v12

    mul-float/2addr v9, v10

    iput v9, v11, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 363
    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    add-int/lit8 v4, v4, 0x1

    goto :goto_d4

    .line 337
    :cond_123
    const/4 v2, 0x1

    move v4, v2

    goto/16 :goto_7

    .line 338
    :cond_127
    const/4 v2, 0x3

    move v3, v2

    goto/16 :goto_e

    .line 339
    :cond_12b
    const/4 v2, 0x5

    goto/16 :goto_14

    .line 343
    :cond_12e
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_47

    .line 366
    :cond_133
    return-void
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
    const/4 v8, 0x3

    const v11, 0x3d4ccccd    # 0.05f

    const/16 v7, 0x8

    const/4 v0, 0x0

    const/4 v10, 0x1

    .line 370
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v2, v1, v7

    .line 371
    const/16 v1, 0x23

    new-array v1, v1, [F

    fill-array-data v1, :array_104

    .line 373
    const v3, 0x3ca3d70a    # 0.02f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_28

    .line 374
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    invoke-direct {v3, v7, v1, v10}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 375
    const v4, 0x3eb33333    # 0.35f

    mul-float/2addr v4, v2

    iput v4, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 376
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_28
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v1, v10}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 379
    const v1, 0x3e3851ec    # 0.18f

    const v4, 0x3df5c28f    # 0.12f

    mul-float/2addr v4, v2

    add-float/2addr v1, v4

    iput v1, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 380
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    const/4 v1, -0x3

    :goto_3c
    if-gt v1, v8, :cond_a2

    .line 382
    mul-int/lit8 v3, v1, 0x34

    add-int/lit16 v3, v3, 0x258

    int-to-float v3, v3

    .line 383
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

    aput v5, v4, v8

    const/4 v5, 0x4

    mul-int/lit8 v6, v1, 0x4

    int-to-float v6, v6

    add-float/2addr v6, v3

    aput v6, v4, v5

    const/4 v5, 0x5

    const/high16 v6, 0x43a50000    # 330.0f

    aput v6, v4, v5

    const/4 v5, 0x6

    mul-int/lit8 v6, v1, 0x6

    int-to-float v6, v6

    add-float/2addr v6, v3

    aput v6, v4, v5

    const/4 v5, 0x7

    const/high16 v6, 0x43be0000    # 380.0f

    aput v6, v4, v5

    mul-int/lit8 v5, v1, 0x8

    int-to-float v5, v5

    add-float/2addr v3, v5

    aput v3, v4, v7

    const/16 v3, 0x9

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    rsub-int v5, v5, 0x1a2

    int-to-float v5, v5

    aput v5, v4, v3

    .line 384
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/4 v5, 0x7

    invoke-direct {v3, v5, v4, v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 385
    const v4, 0x3e99999a    # 0.3f

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 386
    const v4, 0x3f333333    # 0.7f

    iput v4, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->width:F

    .line 387
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    .line 389
    :cond_a2
    cmpl-float v1, v2, v11

    if-lez v1, :cond_102

    .line 390
    :goto_a6
    const/16 v1, 0xa

    if-ge v0, v1, :cond_102

    .line 391
    iget v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->t:F

    const v3, 0x3fd9999a    # 1.7f

    mul-float/2addr v1, v3

    int-to-float v3, v0

    const v4, 0x3e0c49ba    # 0.137f

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->frac(F)F

    move-result v1

    .line 392
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

    .line 393
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

    .line 394
    new-instance v5, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v6, 0xe

    const/high16 v7, 0x40600000    # 3.5f

    invoke-static {v3, v4, v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->circle(FFF)[F

    move-result-object v3

    invoke-direct {v5, v6, v3, v10}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 395
    float-to-double v6, v1

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v1, v6

    mul-float/2addr v1, v2

    iput v1, v5, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 396
    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    add-int/lit8 v0, v0, 0x1

    goto :goto_a6

    .line 399
    :cond_102
    return-void

    .line 371
    nop

    :array_104
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
    .line 557
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

    .line 172
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

.method private static lift(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;II)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;",
            ">;",
            "Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;",
            "II)V"
        }
    .end annotation

    .prologue
    const/16 v8, 0xd

    const v5, 0x3de147ae    # 0.11f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 315
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v2, v0, p3

    .line 316
    const v0, 0x3dcccccd    # 0.1f

    cmpg-float v0, v2, v0

    if-ltz v0, :cond_18

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->dim:[Z

    aget-boolean v0, v0, p3

    if-eqz v0, :cond_19

    .line 333
    :cond_18
    :goto_18
    return-void

    .line 319
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

    .line 320
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

    .line 321
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

    .line 322
    iput v2, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 323
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_84

    .line 325
    const/16 v1, 0x9

    new-array v1, v1, [F

    fill-array-data v1, :array_9c

    .line 326
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    if-nez p2, :cond_67

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mirror([F)[F

    move-result-object v0

    :cond_67
    invoke-direct {v3, v8, v0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 327
    iput v2, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 328
    iput-boolean v7, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->dashed:Z

    .line 329
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    if-nez p2, :cond_82

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mirror([F)[F

    move-result-object v0

    :goto_79
    invoke-direct {v3, v8, v0, v6}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 331
    iput v2, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 332
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_82
    move-object v0, v1

    .line 330
    goto :goto_79

    .line 324
    :array_84
    .array-data 4
        0x0
        0x44598000    # 870.0f
        0x44570000    # 860.0f
        0x40000000    # 2.0f
        0x445e8000    # 890.0f
        0x444f8000    # 830.0f
        0x44600000    # 896.0f
        0x44458000    # 790.0f
        0x445d0000    # 884.0f
        0x44398000    # 742.0f
    .end array-data

    .line 325
    :array_9c
    .array-data 4
        0x0
        0x445a0000    # 872.0f
        0x443e0000    # 760.0f
        0x3f800000    # 1.0f
        0x445d0000    # 884.0f
        0x44390000    # 740.0f
        0x3f800000    # 1.0f
        0x44604000    # 897.0f
        0x443e0000    # 760.0f
    .end array-data
.end method

.method static mirror([F)[F
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 543
    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    move v1, v2

    .line 545
    :goto_8
    array-length v3, v0

    if-ge v1, v3, :cond_41

    .line 546
    aget v3, v0, v1

    .line 547
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

    .line 548
    :goto_1a
    if-ge v4, v3, :cond_3b

    .line 549
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

    .line 548
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 547
    :cond_31
    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_39

    const/4 v3, 0x3

    goto :goto_19

    :cond_39
    move v3, v2

    goto :goto_19

    .line 551
    :cond_3b
    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    .line 552
    goto :goto_8

    .line 553
    :cond_41
    return-object v0
.end method

.method static mx(F)F
    .registers 2

    .prologue
    .line 160
    const/high16 v0, 0x44960000    # 1200.0f

    sub-float/2addr v0, p0

    return v0
.end method

.method private static nogo(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;)V
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
    .line 458
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->on:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-nez v0, :cond_24

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->on:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_24

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->on:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-nez v0, :cond_24

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->on:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-nez v0, :cond_24

    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->on:[Z

    const/16 v1, 0x8

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_ea

    :cond_24
    const/4 v0, 0x1

    .line 459
    :goto_25
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->on:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-nez v1, :cond_4f

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->on:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-nez v1, :cond_4f

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->on:[Z

    const/4 v2, 0x6

    aget-boolean v1, v1, v2

    if-nez v1, :cond_4f

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->on:[Z

    const/4 v2, 0x7

    aget-boolean v1, v1, v2

    if-nez v1, :cond_4f

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->on:[Z

    const/4 v2, 0x4

    aget-boolean v1, v1, v2

    if-nez v1, :cond_4f

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->on:[Z

    const/4 v2, 0x5

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_ed

    :cond_4f
    const/4 v1, 0x1

    .line 460
    :goto_50
    const/4 v2, 0x0

    move v4, v2

    :goto_52
    const/4 v2, 0x2

    if-ge v4, v2, :cond_10c

    .line 461
    if-eqz v0, :cond_82

    .line 462
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v5, 0x9

    if-nez v4, :cond_f0

    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceArt;->EYE:[F

    const/4 v6, 0x0

    aget v2, v2, v6

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v2

    :goto_66
    sget-object v6, Lcom/isaigu/gymapp/wearable/face/FaceArt;->EYE:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    const/high16 v7, 0x432c0000    # 172.0f

    const/high16 v8, 0x42e80000    # 116.0f

    invoke-static {v2, v6, v7, v8}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ellipse(FFFF)[F

    move-result-object v2

    const/4 v6, 0x0

    invoke-direct {v3, v5, v2, v6}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 463
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->dashed:Z

    .line 464
    const v2, 0x3f4ccccd    # 0.8f

    iput v2, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 465
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_82
    if-eqz v1, :cond_9b

    .line 468
    if-nez v4, :cond_f7

    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceArt;->TRUNK:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v2

    :goto_8f
    sget-object v3, Lcom/isaigu/gymapp/wearable/face/FaceArt;->TRUNK:[F

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->nogoMark(FF)Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    :cond_9b
    if-nez v4, :cond_fd

    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NECK:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v2

    :goto_a6
    sget-object v3, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NECK:[F

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->nogoMark(FF)Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    sget-object v5, Lcom/isaigu/gymapp/wearable/face/FaceArt;->FORAMINA:[[F

    array-length v6, v5

    const/4 v2, 0x0

    move v3, v2

    :goto_b7
    if-ge v3, v6, :cond_107

    aget-object v7, v5, v3

    .line 473
    new-instance v8, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v9, 0x9

    if-nez v4, :cond_103

    const/4 v2, 0x0

    aget v2, v7, v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->mx(F)F

    move-result v2

    :goto_c8
    const/4 v10, 0x1

    aget v7, v7, v10

    const v10, 0x415ccccd    # 13.8f

    invoke-static {v2, v7, v10}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->circle(FFF)[F

    move-result-object v2

    const/4 v7, 0x0

    invoke-direct {v8, v9, v2, v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 474
    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->dashed:Z

    .line 475
    const v2, 0x3f19999a    # 0.6f

    iput v2, v8, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 476
    const v2, 0x3f4ccccd    # 0.8f

    iput v2, v8, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->width:F

    .line 477
    invoke-interface {p0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_b7

    .line 458
    :cond_ea
    const/4 v0, 0x0

    goto/16 :goto_25

    .line 459
    :cond_ed
    const/4 v1, 0x0

    goto/16 :goto_50

    .line 462
    :cond_f0
    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceArt;->EYE:[F

    const/4 v6, 0x0

    aget v2, v2, v6

    goto/16 :goto_66

    .line 468
    :cond_f7
    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceArt;->TRUNK:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    goto :goto_8f

    .line 470
    :cond_fd
    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NECK:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    goto :goto_a6

    .line 473
    :cond_103
    const/4 v2, 0x0

    aget v2, v7, v2

    goto :goto_c8

    .line 460
    :cond_107
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto/16 :goto_52

    .line 480
    :cond_10c
    return-void
.end method

.method private static nogoMark(FF)Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 484
    const v0, 0x419a8f5c    # 19.32f

    .line 485
    const v1, 0x3f350481    # 0.7071f

    mul-float/2addr v1, v0

    .line 486
    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->circle(FFF)[F

    move-result-object v0

    .line 487
    array-length v2, v0

    add-int/lit8 v2, v2, 0x6

    new-array v2, v2, [F

    .line 488
    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    array-length v0, v0

    .line 490
    const/4 v3, 0x0

    aput v3, v2, v0

    .line 491
    add-int/lit8 v3, v0, 0x1

    sub-float v4, p0, v1

    aput v4, v2, v3

    .line 492
    add-int/lit8 v3, v0, 0x2

    add-float v4, p1, v1

    aput v4, v2, v3

    .line 493
    add-int/lit8 v3, v0, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    .line 494
    add-int/lit8 v3, v0, 0x4

    add-float v4, p0, v1

    aput v4, v2, v3

    .line 495
    add-int/lit8 v0, v0, 0x5

    sub-float v1, p1, v1

    aput v1, v2, v0

    .line 496
    new-instance v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v1, 0x9

    invoke-direct {v0, v1, v2, v5}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 497
    const v1, 0x3fb33333    # 1.4f

    iput v1, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->width:F

    .line 498
    return-object v0
.end method

.method private static pad2(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;I)V
    .registers 19
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
    .line 428
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->placing:Z

    if-eqz v2, :cond_f8

    const v2, 0x3f0ccccd    # 0.55f

    const v3, 0x3ee66666    # 0.45f

    move-object/from16 v0, p1

    iget v4, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->t:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v4, v5

    move/from16 v0, p2

    int-to-float v5, v0

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move v8, v2

    .line 429
    :goto_20
    invoke-static/range {p2 .. p2}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->pads(I)[[F

    move-result-object v10

    .line 430
    invoke-static/range {p2 .. p2}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->padAngle(I)F

    move-result v7

    .line 431
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v11, v2, p2

    .line 432
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->dim:[Z

    aget-boolean v12, v2, p2

    .line 433
    const/4 v2, 0x0

    move v9, v2

    :goto_36
    const/4 v2, 0x2

    if-ge v9, v2, :cond_11b

    .line 434
    aget-object v13, v10, v9

    .line 435
    const v2, 0x3d4ccccd    # 0.05f

    cmpl-float v2, v11, v2

    if-lez v2, :cond_80

    if-nez v12, :cond_80

    .line 436
    move-object/from16 v0, p1

    iget v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->t:F

    const v3, 0x3fcccccd    # 1.6f

    mul-float/2addr v2, v3

    int-to-float v3, v9

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->frac(F)F

    move-result v2

    .line 437
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v4, 0xf

    const/4 v5, 0x0

    aget v5, v13, v5

    const/4 v6, 0x1

    aget v6, v13, v6

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->small:Z

    invoke-static {v14}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->padHh(Z)F

    move-result v14

    const v15, 0x41dccccd    # 27.6f

    mul-float/2addr v15, v2

    add-float/2addr v14, v15

    invoke-static {v5, v6, v14}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->circle(FFF)[F

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 438
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v4, v2

    mul-float/2addr v2, v11

    iput v2, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 439
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    :cond_80
    const/4 v2, 0x0

    aget v2, v13, v2

    const/4 v3, 0x1

    aget v3, v13, v3

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->small:Z

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->padHw(Z)F

    move-result v4

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->small:Z

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->padHh(Z)F

    move-result v5

    const/high16 v6, 0x41380000    # 11.5f

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->roundRect(FFFFFF)[F

    move-result-object v3

    .line 442
    new-instance v4, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v2, 0xa

    const/4 v5, 0x1

    invoke-direct {v4, v2, v3, v5}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 443
    if-eqz v12, :cond_fd

    const v2, 0x3e4ccccd    # 0.2f

    :goto_a9
    mul-float/2addr v2, v8

    iput v2, v4, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 444
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    new-instance v4, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v2, 0xb

    const/4 v5, 0x0

    invoke-direct {v4, v2, v3, v5}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 446
    if-eqz v12, :cond_10b

    const v2, 0x3e99999a    # 0.3f

    :goto_be
    mul-float/2addr v2, v8

    iput v2, v4, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 447
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->outline:Z

    iput-boolean v2, v4, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->dashed:Z

    .line 448
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->label:[Ljava/lang/String;

    aget-object v2, v2, p2

    if-eqz v2, :cond_f3

    .line 450
    new-instance v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v2, 0xc

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->label:[Ljava/lang/String;

    aget-object v4, v4, p2

    const/4 v5, 0x0

    aget v5, v13, v5

    const/4 v6, 0x1

    aget v6, v13, v6

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(ILjava/lang/String;FF)V

    .line 451
    if-eqz v12, :cond_118

    const v2, 0x3ecccccd    # 0.4f

    :goto_ec
    iput v2, v3, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 452
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_f3
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_36

    .line 428
    :cond_f8
    const/high16 v2, 0x3f800000    # 1.0f

    move v8, v2

    goto/16 :goto_20

    .line 443
    :cond_fd
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->outline:Z

    if-eqz v2, :cond_107

    const v2, 0x3df5c28f    # 0.12f

    goto :goto_a9

    :cond_107
    const v2, 0x3f0ccccd    # 0.55f

    goto :goto_a9

    .line 446
    :cond_10b
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->outline:Z

    if-eqz v2, :cond_115

    const v2, 0x3f333333    # 0.7f

    goto :goto_be

    :cond_115
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_be

    .line 451
    :cond_118
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_ec

    .line 455
    :cond_11b
    return-void
.end method

.method public static padAngle(I)F
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 205
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->pads(I)[[F

    move-result-object v0

    .line 206
    const/16 v1, 0x8

    if-eq p0, v1, :cond_e

    const/16 v1, 0x9

    if-ne p0, v1, :cond_10

    .line 207
    :cond_e
    const/4 v0, 0x0

    .line 209
    :goto_f
    return v0

    :cond_10
    aget-object v1, v0, v5

    aget v1, v1, v5

    aget-object v2, v0, v4

    aget v2, v2, v5

    sub-float/2addr v1, v2

    float-to-double v2, v1

    aget-object v1, v0, v5

    aget v1, v1, v4

    aget-object v0, v0, v4

    aget v0, v0, v4

    sub-float v0, v1, v0

    float-to-double v0, v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_f
.end method

.method public static padHh(Z)F
    .registers 3

    .prologue
    const v1, 0x3f4ccccd    # 0.8f

    .line 156
    if-eqz p0, :cond_5

    :cond_5
    const/high16 v0, 0x42380000    # 46.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public static padHw(Z)F
    .registers 3

    .prologue
    .line 152
    if-eqz p0, :cond_9

    const v0, 0x3f19999a    # 0.6f

    :goto_5
    const/high16 v1, 0x42380000    # 46.0f

    mul-float/2addr v0, v1

    return v0

    :cond_9
    const v0, 0x3f733333    # 0.95f

    goto :goto_5
.end method

.method public static pads(I)[[F
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x2

    .line 181
    packed-switch p0, :pswitch_data_a4

    .line 199
    new-array v0, v2, [[F

    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_O:[F

    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_I:[F

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lerp([F[FF)[F

    move-result-object v1

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->at([FI)[F

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_O:[F

    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceArt;->ZM_I:[F

    const v3, 0x3f19999a    # 0.6f

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lerp([F[FF)[F

    move-result-object v1

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->at([FI)[F

    move-result-object v1

    aput-object v1, v0, v5

    :goto_2a
    return-object v0

    .line 184
    :pswitch_2b
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_b8

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_c0

    aput-object v1, v0, v5

    goto :goto_2a

    .line 186
    :pswitch_3c
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_c8

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_d0

    aput-object v1, v0, v5

    goto :goto_2a

    .line 189
    :pswitch_4d
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_d8

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->at([FI)[F

    move-result-object v1

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_e0

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->at([FI)[F

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_2a

    .line 193
    :pswitch_66
    new-array v0, v2, [[F

    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NL_O:[F

    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NL_I:[F

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lerp([F[FF)[F

    move-result-object v1

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->at([FI)[F

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NL_O:[F

    sget-object v2, Lcom/isaigu/gymapp/wearable/face/FaceArt;->NL_I:[F

    const v3, 0x3f59999a    # 0.85f

    invoke-static {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lerp([F[FF)[F

    move-result-object v1

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->at([FI)[F

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_2a

    .line 196
    :pswitch_8a
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_e8

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->at([FI)[F

    move-result-object v1

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_f0

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->at([FI)[F

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_2a

    .line 181
    nop

    :pswitch_data_a4
    .packed-switch 0x2
        :pswitch_66
        :pswitch_66
        :pswitch_8a
        :pswitch_8a
        :pswitch_4d
        :pswitch_4d
        :pswitch_2b
        :pswitch_3c
    .end packed-switch

    .line 184
    :array_b8
    .array-data 4
        0x44094000    # 549.0f
        0x43ab0000    # 342.0f
    .end array-data

    :array_c0
    .array-data 4
        0x4422c000    # 651.0f
        0x43ab0000    # 342.0f
    .end array-data

    .line 186
    :array_c8
    .array-data 4
        0x440a0000    # 552.0f
        0x44874000    # 1082.0f
    .end array-data

    :array_d0
    .array-data 4
        0x44220000    # 648.0f
        0x44874000    # 1082.0f
    .end array-data

    .line 189
    :array_d8
    .array-data 4
        0x44510000    # 836.0f
        0x44410000    # 772.0f
    .end array-data

    :array_e0
    .array-data 4
        0x444b4000    # 813.0f
        0x445a0000    # 872.0f
    .end array-data

    .line 196
    :array_e8
    .array-data 4
        0x444b8000    # 814.0f
        0x445f8000    # 894.0f
    .end array-data

    :array_f0
    .array-data 4
        0x44378000    # 734.0f
        0x44640000    # 912.0f
    .end array-data
.end method

.method static roundRect(FFFFFF)[F
    .registers 17

    .prologue
    .line 518
    const v0, 0x3f0d6388    # 0.5523f

    mul-float/2addr v0, p4

    .line 519
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

    .line 523
    const/high16 v0, 0x42b40000    # 90.0f

    sub-float v0, p5, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 524
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 525
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v5, v0

    .line 526
    const/4 v0, 0x0

    .line 527
    :goto_10b
    array-length v1, v3

    if-ge v0, v1, :cond_158

    .line 528
    aget v1, v3, v0

    .line 529
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_11b

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_148

    :cond_11b
    const/4 v1, 0x1

    .line 530
    :goto_11c
    const/4 v2, 0x0

    :goto_11d
    if-ge v2, v1, :cond_152

    .line 531
    add-int/lit8 v6, v0, 0x1

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    aget v6, v3, v6

    .line 532
    add-int/lit8 v7, v0, 0x2

    mul-int/lit8 v8, v2, 0x2

    add-int/2addr v7, v8

    aget v7, v3, v7

    .line 533
    add-int/lit8 v8, v0, 0x1

    mul-int/lit8 v9, v2, 0x2

    add-int/2addr v8, v9

    mul-float v9, v6, v4

    add-float/2addr v9, p0

    mul-float v10, v7, v5

    sub-float/2addr v9, v10

    aput v9, v3, v8

    .line 534
    add-int/lit8 v8, v0, 0x2

    mul-int/lit8 v9, v2, 0x2

    add-int/2addr v8, v9

    mul-float/2addr v6, v5

    add-float/2addr v6, p1

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    aput v6, v3, v8

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_11d

    .line 529
    :cond_148
    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_150

    const/4 v1, 0x3

    goto :goto_11c

    :cond_150
    const/4 v1, 0x0

    goto :goto_11c

    .line 536
    :cond_152
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 537
    goto :goto_10b

    .line 538
    :cond_158
    return-object v3
.end method

.method static sideOf(I)I
    .registers 2

    .prologue
    .line 165
    const/16 v0, 0x8

    if-eq p0, v0, :cond_8

    const/16 v0, 0x9

    if-ne p0, v0, :cond_a

    .line 166
    :cond_8
    const/4 v0, -0x1

    .line 168
    :goto_9
    return v0

    :cond_a
    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_9

    :cond_10
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static spindle(Ljava/util/List;Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;I[F[FFF)V
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;",
            ">;",
            "Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;",
            "I[F[FFF)V"
        }
    .end annotation

    .prologue
    .line 259
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->sensory:Z

    if-eqz v4, :cond_37e

    const/4 v4, 0x0

    .line 260
    :goto_7
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v6, v5, p2

    .line 261
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->dim:[Z

    aget-boolean v8, v5, p2

    .line 262
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->at([FI)[F

    move-result-object v9

    .line 263
    mul-float v5, p6, v4

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v0, v1, v5}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lerp([F[FF)[F

    move-result-object v5

    move/from16 v0, p2

    invoke-static {v5, v0}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->at([FI)[F

    move-result-object v10

    .line 264
    const/4 v5, 0x0

    aget v5, v10, v5

    const/4 v7, 0x0

    aget v7, v9, v7

    sub-float v11, v5, v7

    .line 265
    const/4 v5, 0x1

    aget v5, v10, v5

    const/4 v7, 0x1

    aget v7, v9, v7

    sub-float v12, v5, v7

    .line 266
    mul-float v5, v11, v11

    mul-float v7, v12, v12

    add-float/2addr v5, v7

    float-to-double v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v5, v14

    .line 267
    neg-float v7, v12

    div-float v13, v7, v5

    .line 268
    div-float v14, v11, v5

    .line 269
    const/high16 v5, 0x3f800000    # 1.0f

    const v7, 0x3e99999a    # 0.3f

    mul-float/2addr v7, v4

    add-float/2addr v5, v7

    mul-float v15, p5, v5

    .line 270
    const v5, 0x3ee66666    # 0.45f

    invoke-static {v9, v10, v5}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lerp([F[FF)[F

    move-result-object v16

    .line 271
    const/16 v5, 0x20

    new-array v0, v5, [F

    move-object/from16 v17, v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    aput v7, v17, v5

    const/4 v5, 0x1

    const/4 v7, 0x0

    aget v7, v9, v7

    mul-float v18, v13, v15

    const v19, 0x3f333333    # 0.7f

    mul-float v18, v18, v19

    add-float v7, v7, v18

    aput v7, v17, v5

    const/4 v5, 0x2

    const/4 v7, 0x1

    aget v7, v9, v7

    mul-float v18, v14, v15

    const v19, 0x3f333333    # 0.7f

    mul-float v18, v18, v19

    add-float v7, v7, v18

    aput v7, v17, v5

    const/4 v5, 0x3

    const/high16 v7, 0x40000000    # 2.0f

    aput v7, v17, v5

    const/4 v5, 0x4

    const/4 v7, 0x0

    aget v7, v16, v7

    mul-float v18, v13, v15

    const v19, 0x3f99999a    # 1.2f

    mul-float v18, v18, v19

    add-float v7, v7, v18

    const v18, 0x3e4ccccd    # 0.2f

    mul-float v18, v18, v11

    sub-float v7, v7, v18

    aput v7, v17, v5

    const/4 v5, 0x5

    const/4 v7, 0x1

    aget v7, v16, v7

    mul-float v18, v14, v15

    const v19, 0x3f99999a    # 1.2f

    mul-float v18, v18, v19

    add-float v7, v7, v18

    const v18, 0x3e4ccccd    # 0.2f

    mul-float v18, v18, v12

    sub-float v7, v7, v18

    aput v7, v17, v5

    const/4 v5, 0x6

    const/4 v7, 0x0

    aget v7, v16, v7

    mul-float v18, v13, v15

    add-float v7, v7, v18

    const/high16 v18, 0x3e800000    # 0.25f

    mul-float v18, v18, v11

    add-float v7, v7, v18

    aput v7, v17, v5

    const/4 v5, 0x7

    const/4 v7, 0x1

    aget v7, v16, v7

    mul-float v18, v14, v15

    add-float v7, v7, v18

    const/high16 v18, 0x3e800000    # 0.25f

    mul-float v18, v18, v12

    add-float v7, v7, v18

    aput v7, v17, v5

    const/16 v5, 0x8

    const/4 v7, 0x0

    aget v7, v10, v7

    mul-float v18, v13, v15

    const v19, 0x3ecccccd    # 0.4f

    mul-float v18, v18, v19

    add-float v7, v7, v18

    aput v7, v17, v5

    const/16 v5, 0x9

    const/4 v7, 0x1

    aget v7, v10, v7

    mul-float v18, v14, v15

    const v19, 0x3ecccccd    # 0.4f

    mul-float v18, v18, v19

    add-float v7, v7, v18

    aput v7, v17, v5

    const/16 v5, 0xa

    const/high16 v7, 0x40000000    # 2.0f

    aput v7, v17, v5

    const/16 v5, 0xb

    const/4 v7, 0x0

    aget v7, v10, v7

    const v18, 0x3d4ccccd    # 0.05f

    mul-float v18, v18, v11

    add-float v7, v7, v18

    aput v7, v17, v5

    const/16 v5, 0xc

    const/4 v7, 0x1

    aget v7, v10, v7

    const v18, 0x3d4ccccd    # 0.05f

    mul-float v18, v18, v12

    add-float v7, v7, v18

    aput v7, v17, v5

    const/16 v5, 0xd

    const/4 v7, 0x0

    aget v7, v10, v7

    const v18, 0x3d4ccccd    # 0.05f

    mul-float v18, v18, v11

    add-float v7, v7, v18

    aput v7, v17, v5

    const/16 v5, 0xe

    const/4 v7, 0x1

    aget v7, v10, v7

    const v18, 0x3d4ccccd    # 0.05f

    mul-float v18, v18, v12

    add-float v7, v7, v18

    aput v7, v17, v5

    const/16 v5, 0xf

    const/4 v7, 0x0

    aget v7, v10, v7

    mul-float v18, v13, v15

    const v19, 0x3ecccccd    # 0.4f

    mul-float v18, v18, v19

    sub-float v7, v7, v18

    aput v7, v17, v5

    const/16 v5, 0x10

    const/4 v7, 0x1

    aget v7, v10, v7

    mul-float v18, v14, v15

    const v19, 0x3ecccccd    # 0.4f

    mul-float v18, v18, v19

    sub-float v7, v7, v18

    aput v7, v17, v5

    const/16 v5, 0x11

    const/high16 v7, 0x40000000    # 2.0f

    aput v7, v17, v5

    const/16 v5, 0x12

    const/4 v7, 0x0

    aget v7, v16, v7

    mul-float v18, v13, v15

    sub-float v7, v7, v18

    const/high16 v18, 0x3e800000    # 0.25f

    mul-float v18, v18, v11

    add-float v7, v7, v18

    aput v7, v17, v5

    const/16 v5, 0x13

    const/4 v7, 0x1

    aget v7, v16, v7

    mul-float v18, v14, v15

    sub-float v7, v7, v18

    const/high16 v18, 0x3e800000    # 0.25f

    mul-float v18, v18, v12

    add-float v7, v7, v18

    aput v7, v17, v5

    const/16 v5, 0x14

    const/4 v7, 0x0

    aget v7, v16, v7

    mul-float v18, v13, v15

    const v19, 0x3f99999a    # 1.2f

    mul-float v18, v18, v19

    sub-float v7, v7, v18

    const v18, 0x3e4ccccd    # 0.2f

    mul-float v18, v18, v11

    sub-float v7, v7, v18

    aput v7, v17, v5

    const/16 v5, 0x15

    const/4 v7, 0x1

    aget v7, v16, v7

    mul-float v18, v14, v15

    const v19, 0x3f99999a    # 1.2f

    mul-float v18, v18, v19

    sub-float v7, v7, v18

    const v18, 0x3e4ccccd    # 0.2f

    mul-float v18, v18, v12

    sub-float v7, v7, v18

    aput v7, v17, v5

    const/16 v5, 0x16

    const/4 v7, 0x0

    aget v7, v9, v7

    mul-float v18, v13, v15

    const v19, 0x3f333333    # 0.7f

    mul-float v18, v18, v19

    sub-float v7, v7, v18

    aput v7, v17, v5

    const/16 v5, 0x17

    const/4 v7, 0x1

    aget v7, v9, v7

    mul-float v18, v14, v15

    const v19, 0x3f333333    # 0.7f

    mul-float v18, v18, v19

    sub-float v7, v7, v18

    aput v7, v17, v5

    const/16 v5, 0x18

    const/high16 v7, 0x40000000    # 2.0f

    aput v7, v17, v5

    const/16 v5, 0x19

    const/4 v7, 0x0

    aget v7, v9, v7

    const v18, 0x3d8f5c29    # 0.07f

    mul-float v18, v18, v11

    sub-float v7, v7, v18

    aput v7, v17, v5

    const/16 v5, 0x1a

    const/4 v7, 0x1

    aget v7, v9, v7

    const v18, 0x3d8f5c29    # 0.07f

    mul-float v18, v18, v12

    sub-float v7, v7, v18

    aput v7, v17, v5

    const/16 v5, 0x1b

    const/4 v7, 0x0

    aget v7, v9, v7

    const v18, 0x3d8f5c29    # 0.07f

    mul-float v18, v18, v11

    sub-float v7, v7, v18

    aput v7, v17, v5

    const/16 v5, 0x1c

    const/4 v7, 0x1

    aget v7, v9, v7

    const v18, 0x3d8f5c29    # 0.07f

    mul-float v18, v18, v12

    sub-float v7, v7, v18

    aput v7, v17, v5

    const/16 v5, 0x1d

    const/4 v7, 0x0

    aget v7, v9, v7

    mul-float v18, v13, v15

    const v19, 0x3f333333    # 0.7f

    mul-float v18, v18, v19

    add-float v7, v7, v18

    aput v7, v17, v5

    const/16 v5, 0x1e

    const/4 v7, 0x1

    aget v7, v9, v7

    mul-float v18, v14, v15

    const v19, 0x3f333333    # 0.7f

    mul-float v18, v18, v19

    add-float v7, v7, v18

    aput v7, v17, v5

    const/16 v5, 0x1f

    const/high16 v7, 0x40400000    # 3.0f

    aput v7, v17, v5

    .line 279
    if-eqz v8, :cond_386

    const v5, 0x3eb33333    # 0.35f

    move v7, v5

    .line 280
    :goto_232
    const v5, 0x3ca3d70a    # 0.02f

    cmpl-float v5, v6, v5

    if-lez v5, :cond_25f

    if-nez v8, :cond_25f

    .line 281
    new-instance v18, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v5, 0x8

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v5, v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 282
    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->sensory:Z

    if-eqz v5, :cond_38b

    const v5, 0x3ee66666    # 0.45f

    mul-float/2addr v5, v6

    :goto_254
    move-object/from16 v0, v18

    iput v5, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 283
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_25f
    new-instance v5, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v18, 0x6

    const/16 v19, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v5, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 286
    const v17, 0x3eb851ec    # 0.36f

    const/high16 v18, 0x3f000000    # 0.5f

    mul-float v18, v18, v4

    add-float v17, v17, v18

    mul-float v17, v17, v7

    move/from16 v0, v17

    iput v0, v5, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 287
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    const/4 v5, -0x2

    :goto_283
    const/16 v17, 0x2

    move/from16 v0, v17

    if-gt v5, v0, :cond_38e

    .line 289
    int-to-float v0, v5

    move/from16 v17, v0

    mul-float v17, v17, v15

    const v18, 0x3ec28f5c    # 0.38f

    mul-float v17, v17, v18

    .line 290
    const/16 v18, 0xa

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput v20, v18, v19

    const/16 v19, 0x1

    const/16 v20, 0x0

    aget v20, v9, v20

    mul-float v21, v13, v17

    const v22, 0x3f19999a    # 0.6f

    mul-float v21, v21, v22

    add-float v20, v20, v21

    aput v20, v18, v19

    const/16 v19, 0x2

    const/16 v20, 0x1

    aget v20, v9, v20

    mul-float v21, v14, v17

    const v22, 0x3f19999a    # 0.6f

    mul-float v21, v21, v22

    add-float v20, v20, v21

    aput v20, v18, v19

    const/16 v19, 0x3

    const/high16 v20, 0x40000000    # 2.0f

    aput v20, v18, v19

    const/16 v19, 0x4

    const/16 v20, 0x0

    aget v20, v16, v20

    mul-float v21, v13, v17

    const v22, 0x3f866666    # 1.05f

    mul-float v21, v21, v22

    add-float v20, v20, v21

    const v21, 0x3df5c28f    # 0.12f

    mul-float v21, v21, v11

    sub-float v20, v20, v21

    aput v20, v18, v19

    const/16 v19, 0x5

    const/16 v20, 0x1

    aget v20, v16, v20

    mul-float v21, v14, v17

    const v22, 0x3f866666    # 1.05f

    mul-float v21, v21, v22

    add-float v20, v20, v21

    const v21, 0x3df5c28f    # 0.12f

    mul-float v21, v21, v12

    sub-float v20, v20, v21

    aput v20, v18, v19

    const/16 v19, 0x6

    const/16 v20, 0x0

    aget v20, v16, v20

    mul-float v21, v13, v17

    add-float v20, v20, v21

    const v21, 0x3e4ccccd    # 0.2f

    mul-float v21, v21, v11

    add-float v20, v20, v21

    aput v20, v18, v19

    const/16 v19, 0x7

    const/16 v20, 0x1

    aget v20, v16, v20

    mul-float v21, v14, v17

    add-float v20, v20, v21

    const v21, 0x3e4ccccd    # 0.2f

    mul-float v21, v21, v12

    add-float v20, v20, v21

    aput v20, v18, v19

    const/16 v19, 0x8

    const/16 v20, 0x0

    aget v20, v10, v20

    mul-float v21, v13, v17

    const v22, 0x3eb33333    # 0.35f

    mul-float v21, v21, v22

    add-float v20, v20, v21

    aput v20, v18, v19

    const/16 v19, 0x9

    const/16 v20, 0x1

    aget v20, v10, v20

    mul-float v17, v17, v14

    const v21, 0x3eb33333    # 0.35f

    mul-float v17, v17, v21

    add-float v17, v17, v20

    aput v17, v18, v19

    .line 294
    new-instance v17, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v19, 0x7

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, v18

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 295
    const v18, 0x3ee66666    # 0.45f

    const v19, 0x3f0ccccd    # 0.55f

    mul-float v19, v19, v4

    add-float v18, v18, v19

    mul-float v18, v18, v7

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 296
    const v18, 0x3f4ccccd    # 0.8f

    const/high16 v19, 0x3f000000    # 0.5f

    mul-float v19, v19, v4

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->width:F

    .line 297
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_283

    .line 259
    :cond_37e
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->level:[F

    aget v4, v4, p2

    goto/16 :goto_7

    .line 279
    :cond_386
    const/high16 v5, 0x3f800000    # 1.0f

    move v7, v5

    goto/16 :goto_232

    :cond_38b
    move v5, v6

    .line 282
    goto/16 :goto_254

    .line 299
    :cond_38e
    const v4, 0x3d4ccccd    # 0.05f

    cmpl-float v4, v6, v4

    if-lez v4, :cond_42b

    if-nez v8, :cond_42b

    .line 301
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->sensory:Z

    if-eqz v4, :cond_41d

    const/high16 v4, 0x3e800000    # 0.25f

    .line 302
    :goto_39f
    const/4 v5, 0x0

    :goto_3a0
    const/4 v7, 0x4

    if-ge v5, v7, :cond_42b

    .line 303
    move-object/from16 v0, p1

    iget v7, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->t:F

    mul-float/2addr v7, v4

    int-to-float v8, v5

    const/high16 v11, 0x3e800000    # 0.25f

    mul-float/2addr v8, v11

    add-float/2addr v7, v8

    move/from16 v0, p2

    int-to-float v8, v0

    const v11, 0x3d8f5c29    # 0.07f

    mul-float/2addr v8, v11

    add-float/2addr v7, v8

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->frac(F)F

    move-result v7

    .line 304
    invoke-static {v10, v9, v7}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->lerp([F[FF)[F

    move-result-object v8

    .line 305
    rem-int/lit8 v11, v5, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    mul-float/2addr v11, v15

    const v12, 0x3eb33333    # 0.35f

    mul-float/2addr v11, v12

    float-to-double v0, v7

    move-wide/from16 v16, v0

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v12, v0

    mul-float/2addr v11, v12

    .line 306
    new-instance v12, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;

    const/16 v16, 0xe

    const/16 v17, 0x0

    aget v17, v8, v17

    mul-float v18, v13, v11

    add-float v17, v17, v18

    const/16 v18, 0x1

    aget v8, v8, v18

    mul-float/2addr v11, v14

    add-float/2addr v8, v11

    const/high16 v11, 0x40800000    # 4.0f

    const/high16 v18, 0x40200000    # 2.5f

    mul-float v18, v18, v6

    add-float v11, v11, v18

    move/from16 v0, v17

    invoke-static {v0, v8, v11}, Lcom/isaigu/gymapp/wearable/face/FaceArt;->circle(FFF)[F

    move-result-object v8

    const/4 v11, 0x1

    move/from16 v0, v16

    invoke-direct {v12, v0, v8, v11}, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;-><init>(I[FZ)V

    .line 307
    float-to-double v0, v7

    move-wide/from16 v16, v0

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v7, v0

    mul-float/2addr v7, v6

    iput v7, v12, Lcom/isaigu/gymapp/wearable/face/FaceArt$Prim;->alpha:F

    .line 308
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a0

    .line 301
    :cond_41d
    const v4, 0x3eb33333    # 0.35f

    move-object/from16 v0, p1

    iget v5, v0, Lcom/isaigu/gymapp/wearable/face/FaceArt$Scene;->hz:I

    int-to-float v5, v5

    const/high16 v7, 0x42f00000    # 120.0f

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    goto/16 :goto_39f

    .line 311
    :cond_42b
    return-void
.end method
