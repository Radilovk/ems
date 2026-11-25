.class final Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;
.super Ljava/lang/Object;
.source "VrZoneFocus.java"


# instance fields
.field private final endNs:[J


# direct methods
.method constructor <init>(I)V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;->endNs:[J

    .line 12
    return-void
.end method


# virtual methods
.method add(IJ)V
    .registers 8

    .prologue
    .line 16
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;->endNs:[J

    monitor-enter v1

    .line 17
    const/4 v0, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;->endNs:[J

    array-length v2, v2

    if-ge v0, v2, :cond_1d

    .line 18
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v2, p1

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;->endNs:[J

    aget-wide v2, v2, v0

    cmp-long v2, p2, v2

    if-lez v2, :cond_1a

    .line 19
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;->endNs:[J

    aput-wide p2, v2, v0

    .line 17
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 22
    :cond_1d
    monitor-exit v1

    .line 23
    return-void

    .line 22
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method at(J)I
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 27
    .line 28
    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;->endNs:[J

    monitor-enter v3

    move v1, v2

    move v0, v2

    .line 29
    :goto_6
    :try_start_6
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;->endNs:[J

    array-length v2, v2

    if-ge v1, v2, :cond_19

    .line 30
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;->endNs:[J

    aget-wide v4, v2, v1

    cmp-long v2, v4, p1

    if-lez v2, :cond_16

    .line 31
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    .line 29
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 34
    :cond_19
    monitor-exit v3

    .line 35
    return v0

    .line 34
    :catchall_1b
    move-exception v0

    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method clear()V
    .registers 7

    .prologue
    .line 39
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;->endNs:[J

    monitor-enter v1

    .line 40
    const/4 v0, 0x0

    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;->endNs:[J

    array-length v2, v2

    if-ge v0, v2, :cond_12

    .line 41
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneFocus;->endNs:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v0

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 43
    :cond_12
    monitor-exit v1

    .line 44
    return-void

    .line 43
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v0
.end method
