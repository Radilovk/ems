.class final Lcom/isaigu/gymapp/wearable/vr/VrClockSync;
.super Ljava/lang/Object;
.source "VrClockSync.java"


# static fields
.field static final WINDOW:I = 0x10


# instance fields
.field private bestOffset:J

.field private bestRtt:J

.field private count:I

.field private next:I

.field private final offset:[J

.field private final rtt:[J


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x10

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->offset:[J

    .line 11
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->rtt:[J

    .line 15
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->bestRtt:J

    return-void
.end method


# virtual methods
.method add(JJJJ)Z
    .registers 18

    .prologue
    .line 25
    sub-long v0, p7, p1

    sub-long v2, p5, p3

    sub-long/2addr v0, v2

    .line 26
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_f

    cmp-long v2, p7, p1

    if-gez v2, :cond_11

    :cond_f
    const/4 v0, 0x0

    .line 41
    :goto_10
    return v0

    .line 27
    :cond_11
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->offset:[J

    iget v3, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->next:I

    sub-long v4, p3, p1

    sub-long v6, p5, p7

    add-long/2addr v4, v6

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    aput-wide v4, v2, v3

    .line 28
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->rtt:[J

    iget v3, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->next:I

    aput-wide v0, v2, v3

    .line 29
    iget v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->next:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->next:I

    .line 30
    iget v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->count:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_39

    iget v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->count:I

    .line 31
    :cond_39
    const-wide v4, 0x7fffffffffffffffL

    .line 32
    const-wide/16 v2, 0x0

    .line 33
    const/4 v0, 0x0

    :goto_41
    iget v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->count:I

    if-ge v0, v1, :cond_58

    .line 34
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->rtt:[J

    aget-wide v6, v1, v0

    cmp-long v1, v6, v4

    if-gez v1, :cond_55

    .line 35
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->rtt:[J

    aget-wide v4, v1, v0

    .line 36
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->offset:[J

    aget-wide v2, v1, v0

    .line 33
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 39
    :cond_58
    iput-wide v4, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->bestRtt:J

    .line 40
    iput-wide v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->bestOffset:J

    .line 41
    const/4 v0, 0x1

    goto :goto_10
.end method

.method offsetNs()J
    .registers 3

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->bestOffset:J

    return-wide v0
.end method

.method reset()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->count:I

    .line 19
    iput v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->next:I

    .line 20
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->bestRtt:J

    .line 21
    return-void
.end method

.method rttNs()J
    .registers 3

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->bestRtt:J

    return-wide v0
.end method

.method synced()Z
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->count:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method toTablet(J)J
    .registers 6

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrClockSync;->bestOffset:J

    sub-long v0, p1, v0

    return-wide v0
.end method
