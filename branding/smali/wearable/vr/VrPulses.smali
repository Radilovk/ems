.class public final Lcom/isaigu/gymapp/wearable/vr/VrPulses;
.super Ljava/lang/Object;
.source "VrPulses.java"


# static fields
.field public static final MIN_PULSE_NS:J = 0x7270e00L


# instance fields
.field private final amp:[F

.field private final endNs:[J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->endNs:[J

    .line 14
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->amp:[F

    return-void
.end method

.method private static covers(II)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 64
    if-ne p0, v0, :cond_9

    .line 65
    if-nez p1, :cond_7

    .line 70
    :cond_6
    :goto_6
    return v0

    :cond_7
    move v0, v1

    .line 65
    goto :goto_6

    .line 67
    :cond_9
    const/4 v2, 0x2

    if-ne p0, v2, :cond_6

    .line 68
    if-eq p1, v0, :cond_6

    move v0, v1

    goto :goto_6
.end method


# virtual methods
.method public declared-synchronized level(J)F
    .registers 8

    .prologue
    .line 54
    monitor-enter p0

    const/4 v0, 0x0

    .line 55
    const/4 v1, 0x0

    :goto_3
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1d

    .line 56
    :try_start_6
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->endNs:[J

    aget-wide v2, v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_1a

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->amp:[F

    aget v2, v2, v1

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1a

    .line 57
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->amp:[F

    aget v0, v0, v1
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1f

    .line 55
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 60
    :cond_1d
    monitor-exit p0

    return v0

    .line 54
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pulse(IFJZZJ)V
    .registers 18

    .prologue
    .line 20
    monitor-enter p0

    if-eqz p5, :cond_1f

    .line 21
    const-wide/32 v0, 0x7270e00

    move-wide v4, v0

    .line 27
    :goto_7
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3b

    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_e
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 28
    :goto_12
    const/4 v1, 0x0

    :goto_13
    const/4 v2, 0x2

    if-ge v1, v2, :cond_6c

    .line 29
    invoke-static {p1, v1}, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->covers(II)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 28
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 22
    :cond_1f
    const-wide v0, 0xffffffffL

    cmp-long v0, p3, v0

    if-ltz v0, :cond_2f

    .line 23
    const-wide v0, 0x1fffffffffffffffL

    move-wide v4, v0

    goto :goto_7

    .line 25
    :cond_2f
    const-wide/32 v0, 0x7270e00

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p3

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v4, v0

    goto :goto_7

    .line 27
    :cond_3b
    const/4 v0, 0x0

    goto :goto_12

    .line 32
    :cond_3d
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_51

    .line 33
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->endNs:[J

    const-wide/16 v6, 0x0

    aput-wide v6, v2, v1

    .line 34
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->amp:[F

    const/4 v3, 0x0

    aput v3, v2, v1
    :try_end_4d
    .catchall {:try_start_e .. :try_end_4d} :catchall_4e

    goto :goto_1c

    .line 20
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 36
    :cond_51
    if-eqz p6, :cond_69

    :try_start_53
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->endNs:[J

    aget-wide v2, v2, v1

    cmp-long v2, v2, p7

    if-lez v2, :cond_69

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->endNs:[J

    aget-wide v2, v2, v1

    .line 37
    :goto_5f
    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->endNs:[J

    add-long/2addr v2, v4

    aput-wide v2, v6, v1

    .line 38
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->amp:[F

    aput v0, v2, v1
    :try_end_68
    .catchall {:try_start_53 .. :try_end_68} :catchall_4e

    goto :goto_1c

    :cond_69
    move-wide/from16 v2, p7

    .line 36
    goto :goto_5f

    .line 41
    :cond_6c
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stop(I)V
    .registers 6

    .prologue
    .line 44
    monitor-enter p0

    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x2

    if-ge v0, v1, :cond_19

    .line 45
    :try_start_5
    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->covers(II)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 46
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->endNs:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 47
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrPulses;->amp:[F

    const/4 v2, 0x0

    aput v2, v1, v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1b

    .line 44
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 50
    :cond_19
    monitor-exit p0

    return-void

    .line 44
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
