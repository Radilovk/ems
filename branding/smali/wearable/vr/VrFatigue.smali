.class public final Lcom/isaigu/gymapp/wearable/vr/VrFatigue;
.super Ljava/lang/Object;
.source "VrFatigue.java"


# static fields
.field public static final CAP_REST_NS:J = 0xee6b2800L

.field public static final CONT_GAP_NS:J = 0x3b9aca00L

.field public static final CONT_MAX_NS:J = 0x165a0bc00L

.field public static final F_MAX:D = 18.4

.field public static final F_REC:D = 6.133333333333333

.field public static final MIN_PULSE_NS:J = 0x7270e00L

.field public static final SOFT_FLOOR:F = 0.3f

.field public static final SOFT_START:D = 0.6

.field public static final TAU_S:D = 30.0


# instance fields
.field private final amp:[F

.field private final endNs:[J

.field private f:D

.field private lastNs:J

.field private lastOnNs:J

.field private lastOut:F

.field private locked:Z

.field private onSinceNs:J

.field private restUntilNs:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->endNs:[J

    .line 28
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->amp:[F

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->onSinceNs:J

    return-void
.end method

.method private static covers(II)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 142
    if-ne p0, v0, :cond_9

    .line 143
    if-nez p1, :cond_7

    .line 148
    :cond_6
    :goto_6
    return v0

    :cond_7
    move v0, v1

    .line 143
    goto :goto_6

    .line 145
    :cond_9
    const/4 v2, 0x2

    if-ne p0, v2, :cond_6

    .line 146
    if-eq p1, v0, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method private integrate(J)V
    .registers 12

    .prologue
    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    .line 120
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->lastNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_30

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->lastNs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_30

    .line 121
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->lastNs:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr v0, v2

    .line 122
    neg-double v0, v0

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    .line 123
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->f:D

    mul-double/2addr v2, v0

    iget v4, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->lastOut:F

    float-to-double v4, v4

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v6, v0

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->f:D

    .line 125
    :cond_30
    iput-wide p1, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->lastNs:J

    .line 126
    return-void
.end method


# virtual methods
.method public isCapResting(J)Z
    .registers 6

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->restUntilNs:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isLocked()Z
    .registers 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->locked:Z

    return v0
.end method

.method public level(JZ)F
    .registers 15

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->integrate(J)V

    .line 84
    const/4 v0, 0x0

    .line 85
    if-eqz p3, :cond_21

    .line 86
    const/4 v1, 0x0

    :goto_7
    const/4 v2, 0x2

    if-ge v1, v2, :cond_21

    .line 87
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->endNs:[J

    aget-wide v2, v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_1e

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->amp:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1e

    .line 88
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->amp:[F

    aget v0, v0, v1

    .line 86
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 92
    :cond_21
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->f:D

    const-wide v4, 0x4032666666666666L    # 18.4

    div-double/2addr v2, v4

    .line 93
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_87

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->locked:Z

    .line 98
    :cond_32
    :goto_32
    const/4 v1, 0x0

    .line 99
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_b2

    iget-boolean v4, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->locked:Z

    if-nez v4, :cond_b2

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->restUntilNs:J

    cmp-long v4, p1, v4

    if-ltz v4, :cond_b2

    .line 100
    const-wide v4, 0x3fe3333333333333L    # 0.6

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_9a

    const/high16 v1, 0x3f800000    # 1.0f

    .line 102
    :goto_4d
    mul-float/2addr v0, v1

    .line 104
    :goto_4e
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_84

    .line 105
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->onSinceNs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_66

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->lastOnNs:J

    sub-long v2, p1, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v1, v2, v4

    if-ltz v1, :cond_68

    .line 106
    :cond_66
    iput-wide p1, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->onSinceNs:J

    .line 108
    :cond_68
    iput-wide p1, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->lastOnNs:J

    .line 109
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->onSinceNs:J

    sub-long v2, p1, v2

    const-wide v4, 0x165a0bc00L

    cmp-long v1, v2, v4

    if-ltz v1, :cond_84

    .line 110
    const-wide v0, 0xee6b2800L

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->restUntilNs:J

    .line 111
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->onSinceNs:J

    .line 112
    const/4 v0, 0x0

    .line 115
    :cond_84
    iput v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->lastOut:F

    .line 116
    return v0

    .line 95
    :cond_87
    iget-boolean v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->locked:Z

    if-eqz v1, :cond_32

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->f:D

    const-wide v6, 0x4018888888888888L    # 6.133333333333333

    cmpg-double v1, v4, v6

    if-gtz v1, :cond_32

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->locked:Z

    goto :goto_32

    .line 101
    :cond_9a
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x3fe6666660000000L    # 0.699999988079071

    const-wide v8, 0x3fe3333333333333L    # 0.6

    sub-double/2addr v2, v8

    mul-double/2addr v2, v6

    const-wide v6, 0x3fd999999999999aL    # 0.4

    div-double/2addr v2, v6

    sub-double v2, v4, v2

    double-to-float v1, v2

    goto :goto_4d

    :cond_b2
    move v0, v1

    goto :goto_4e
.end method

.method public load()D
    .registers 5

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->f:D

    const-wide v2, 0x4032666666666666L    # 18.4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public pulse(IFJZZJ)V
    .registers 20

    .prologue
    .line 39
    if-eqz p5, :cond_38

    const-wide/32 v0, 0x7270e00

    .line 40
    :goto_5
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-ltz v2, :cond_1a

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1a

    const-wide v2, 0x165a0bc00L

    cmp-long v2, v0, v2

    if-lez v2, :cond_3c

    .line 41
    :cond_1a
    const-wide v0, 0x165a0bc00L

    move-wide v2, v0

    .line 45
    :goto_20
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_48

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 46
    :goto_2b
    const/4 v1, 0x0

    :goto_2c
    const/4 v4, 0x2

    if-ge v1, v4, :cond_89

    .line 47
    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->covers(II)Z

    move-result v4

    if-nez v4, :cond_4a

    .line 46
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 39
    :cond_38
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p3

    goto :goto_5

    .line 42
    :cond_3c
    const-wide/32 v2, 0x7270e00

    cmp-long v2, v0, v2

    if-gez v2, :cond_8a

    .line 43
    const-wide/32 v0, 0x7270e00

    move-wide v2, v0

    goto :goto_20

    .line 45
    :cond_48
    const/4 v0, 0x0

    goto :goto_2b

    .line 50
    :cond_4a
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-nez v4, :cond_5b

    .line 51
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->endNs:[J

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v1

    .line 52
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->amp:[F

    const/4 v5, 0x0

    aput v5, v4, v1

    goto :goto_35

    .line 53
    :cond_5b
    if-eqz p6, :cond_7e

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->endNs:[J

    aget-wide v4, v4, v1

    cmp-long v4, v4, p7

    if-lez v4, :cond_7e

    .line 54
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->endNs:[J

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->endNs:[J

    aget-wide v6, v5, v1

    add-long/2addr v6, v2

    const-wide v8, 0x165a0bc00L

    add-long v8, v8, p7

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    aput-wide v6, v4, v1

    .line 55
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->amp:[F

    aput v0, v4, v1

    goto :goto_35

    .line 57
    :cond_7e
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->endNs:[J

    add-long v6, p7, v2

    aput-wide v6, v4, v1

    .line 58
    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->amp:[F

    aput v0, v4, v1

    goto :goto_35

    .line 61
    :cond_89
    return-void

    :cond_8a
    move-wide v2, v0

    goto :goto_20
.end method

.method public stop(I)V
    .registers 6

    .prologue
    .line 64
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_18

    .line 65
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->covers(II)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 66
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->endNs:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 67
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->amp:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 64
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :cond_18
    return-void
.end method

.method public stopAll()V
    .registers 3

    .prologue
    .line 74
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->stop(I)V

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrFatigue;->onSinceNs:J

    .line 76
    return-void
.end method
