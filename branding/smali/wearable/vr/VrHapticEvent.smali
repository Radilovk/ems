.class public final Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;
.super Ljava/lang/Object;
.source "VrHapticEvent.java"


# instance fields
.field public final amplitude:F

.field public final app:Ljava/lang/String;

.field public final durationUs:J

.field public final eventTimeNs:J

.field public final flags:I

.field public final frequencyHz:F

.field public final hand:I

.field public final latencyNs:J

.field public final seq:I


# direct methods
.method constructor <init>(IFJFIIJJLjava/lang/String;)V
    .registers 13

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->hand:I

    .line 26
    iput p2, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->amplitude:F

    .line 27
    iput-wide p3, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->durationUs:J

    .line 28
    iput p5, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->frequencyHz:F

    .line 29
    iput p6, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->flags:I

    .line 30
    iput p7, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->seq:I

    .line 31
    iput-wide p8, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->eventTimeNs:J

    .line 32
    iput-wide p10, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->latencyNs:J

    .line 33
    iput-object p12, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->app:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public endTimeNs(J)J
    .registers 8

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->isMinDuration()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 47
    :goto_6
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->eventTimeNs:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    add-long/2addr v0, v2

    return-wide v0

    .line 46
    :cond_d
    iget-wide p1, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->durationUs:J

    goto :goto_6
.end method

.method public isAppend()Z
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isMinDuration()Z
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VrHaptic{hand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->hand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " amp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->amplitude:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->durationUs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "us f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->frequencyHz:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->flags:I

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->seq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->latencyNs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ns}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    return-object v0
.end method
