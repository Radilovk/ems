.class public final Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;
.super Ljava/lang/Object;
.source "VrZoneHit.java"


# instance fields
.field public final durationMs:I

.field public final eventTimeNs:J

.field public final levels:[I

.field public final region:I

.field public final seq:I


# direct methods
.method public constructor <init>(II[IJI)V
    .registers 7

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->region:I

    .line 14
    iput p2, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->durationMs:I

    .line 15
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->levels:[I

    .line 16
    iput-wide p4, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->eventTimeNs:J

    .line 17
    iput p6, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->seq:I

    .line 18
    return-void
.end method


# virtual methods
.method public maxLevel()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 21
    move v0, v1

    move v2, v1

    .line 22
    :goto_3
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->levels:[I

    array-length v1, v1

    if-ge v0, v1, :cond_16

    .line 23
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->levels:[I

    aget v1, v1, v0

    if-le v1, v2, :cond_17

    .line 24
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrZoneHit;->levels:[I

    aget v1, v1, v0

    .line 22
    :goto_12
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_3

    .line 27
    :cond_16
    return v2

    :cond_17
    move v1, v2

    goto :goto_12
.end method
