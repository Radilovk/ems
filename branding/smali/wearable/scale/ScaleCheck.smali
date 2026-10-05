.class final Lcom/isaigu/gymapp/wearable/scale/ScaleCheck;
.super Ljava/lang/Object;
.source "ScaleCheck.java"


# static fields
.field static final ASK:I = 0x1

.field static final CLOTHES:Ljava/lang/String; = "clothes"

.field static final CYCLE:Ljava/lang/String; = "cycle"

.field static final CYC_BEFORE:I = 0x1

.field static final CYC_DURING:I = 0x2

.field static final CYC_NO:I = 0x0

.field static final C_CLOTHES:I = 0x4

.field static final C_FOOD:I = 0x1

.field static final C_TOILET:I = 0x2

.field static final FOOD:Ljava/lang/String; = "food"

.field static final GLYCOGEN:Ljava/lang/String; = "glycogen"

.field static final IMPOSSIBLE:I = 0x2

.field static final OK:I = 0x0

.field static final REAL:Ljava/lang/String; = "real"

.field static final TOILET:Ljava/lang/String; = "toilet"

.field static final WATER:Ljava/lang/String; = "water"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cause(DDDDZDII)Ljava/lang/String;
    .registers 19

    .prologue
    .line 76
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {p4, p5, p6, p7}, Lcom/isaigu/gymapp/wearable/scale/ScaleCheck;->soft(DD)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_17

    const/4 v2, 0x1

    .line 77
    :goto_d
    if-nez v2, :cond_19

    invoke-static {p2, p3, p4, p5}, Lcom/isaigu/gymapp/wearable/scale/ScaleCheck;->fatOff(DD)Z

    move-result v2

    if-nez v2, :cond_19

    .line 78
    const/4 v2, 0x0

    .line 106
    :goto_16
    return-object v2

    .line 76
    :cond_17
    const/4 v2, 0x0

    goto :goto_d

    .line 81
    :cond_19
    and-int/lit8 v2, p11, 0x1

    if-eqz v2, :cond_26

    const-wide/16 v2, 0x0

    cmpl-double v2, p0, v2

    if-lez v2, :cond_26

    .line 82
    const-string v2, "food"

    goto :goto_16

    .line 84
    :cond_26
    and-int/lit8 v2, p11, 0x2

    if-eqz v2, :cond_33

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gez v2, :cond_33

    .line 85
    const-string v2, "toilet"

    goto :goto_16

    .line 87
    :cond_33
    and-int/lit8 v2, p11, 0x4

    if-eqz v2, :cond_3a

    .line 88
    const-string v2, "clothes"

    goto :goto_16

    .line 90
    :cond_3a
    and-int/lit8 v2, p11, 0x1

    if-eqz v2, :cond_41

    .line 91
    const-string v2, "food"

    goto :goto_16

    .line 93
    :cond_41
    and-int/lit8 v2, p11, 0x2

    if-eqz v2, :cond_48

    .line 94
    const-string v2, "toilet"

    goto :goto_16

    .line 97
    :cond_48
    const/4 v2, 0x1

    move/from16 v0, p12

    if-eq v0, v2, :cond_52

    const/4 v2, 0x2

    move/from16 v0, p12

    if-ne v0, v2, :cond_55

    .line 98
    :cond_52
    const-string v2, "cycle"

    goto :goto_16

    .line 101
    :cond_55
    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    div-double v2, p4, v2

    .line 102
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_75

    .line 103
    invoke-static/range {p8 .. p10}, Lcom/isaigu/gymapp/wearable/scale/ScaleCheck;->muscular(ZD)Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_72

    const-string v2, "glycogen"

    goto :goto_16

    :cond_72
    const-string v2, "water"

    goto :goto_16

    .line 106
    :cond_75
    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_7e

    const-string v2, "real"

    goto :goto_16

    :cond_7e
    const-string v2, "water"

    goto :goto_16
.end method

.method static cycleAsked(ZI)Z
    .registers 3

    .prologue
    .line 61
    if-nez p0, :cond_c

    const/16 v0, 0xc

    if-lt p1, v0, :cond_c

    const/16 v0, 0x34

    if-gt p1, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static fatLimit(D)D
    .registers 10

    .prologue
    .line 43
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    const-wide v2, 0x3fc3333333333333L    # 0.15

    const-wide/16 v4, 0x0

    invoke-static {p0, p1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4038000000000000L    # 24.0

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method static fatOff(DD)Z
    .registers 8

    .prologue
    .line 56
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    invoke-static {p2, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleCheck;->fatLimit(D)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method static hard(DD)D
    .registers 10

    .prologue
    .line 37
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    div-double/2addr v0, v2

    .line 38
    const-wide v2, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v2, p2

    const-wide v4, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method static muscular(ZD)Z
    .registers 6

    .prologue
    .line 66
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_14

    if-eqz p0, :cond_11

    const/16 v0, 0xf

    :goto_a
    int-to-double v0, v0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_14

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/16 v0, 0x18

    goto :goto_a

    :cond_14
    const/4 v0, 0x0

    goto :goto_10
.end method

.method static skeptic(Ljava/lang/String;I)Z
    .registers 3

    .prologue
    .line 111
    if-nez p1, :cond_c

    if-eqz p0, :cond_e

    const-string v0, "real"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static soft(DD)D
    .registers 10

    .prologue
    .line 31
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4038000000000000L    # 24.0

    div-double/2addr v0, v2

    const-wide v2, 0x4056800000000000L    # 90.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 32
    const-wide v2, 0x3f889374bc6a7efaL    # 0.012

    mul-double/2addr v2, p2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    const-wide v4, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method static weight(DDD)I
    .registers 10

    .prologue
    .line 48
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    .line 49
    invoke-static {p2, p3, p4, p5}, Lcom/isaigu/gymapp/wearable/scale/ScaleCheck;->hard(DD)D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-lez v2, :cond_e

    .line 50
    const/4 v0, 0x2

    .line 52
    :goto_d
    return v0

    :cond_e
    invoke-static {p2, p3, p4, p5}, Lcom/isaigu/gymapp/wearable/scale/ScaleCheck;->soft(DD)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_d

    :cond_18
    const/4 v0, 0x0

    goto :goto_d
.end method
