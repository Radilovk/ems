.class public final Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;
.super Ljava/lang/Object;
.source "VrZoneHit.java"


# instance fields
.field public final durationMs:I

.field public final eventTimeNs:J

.field public final latencyNs:J

.field public final levels:[I

.field public final region:I

.field public final seq:I


# direct methods
.method public constructor <init>(II[IJI)V
    .registers 17

    .prologue
    .line 15
    const-wide/16 v7, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;-><init>(II[IJIJ)V

    .line 16
    return-void
.end method

.method public constructor <init>(II[IJIJ)V
    .registers 9

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p7, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->latencyNs:J

    .line 20
    iput p1, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->region:I

    .line 21
    iput p2, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->durationMs:I

    .line 22
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->levels:[I

    .line 23
    iput-wide p4, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->eventTimeNs:J

    .line 24
    iput p6, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->seq:I

    .line 25
    return-void
.end method


# virtual methods
.method public maxLevel()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 28
    move v0, v1

    move v2, v1

    .line 29
    :goto_3
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->levels:[I

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 30
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->levels:[I

    aget v1, v1, v0

    if-le v1, v2, :cond_17

    .line 31
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->levels:[I

    aget v1, v1, v0

    .line 29
    :goto_12
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_3

    .line 34
    :cond_16
    return v2

    :cond_17
    move v1, v2

    goto :goto_12
.end method
