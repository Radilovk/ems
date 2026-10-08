.class public final Lcom/isaigu/gymapp/wearable/vr/VrNoiseGate;
.super Ljava/lang/Object;
.source "VrNoiseGate.java"


# static fields
.field public static final HIT_AMPLITUDE:F = 0.7f

.field public static final MIN_AMPLITUDE:F = 0.4f

.field public static final MIN_DURATION_US:J = 0x88b8L


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static passes(FJZZ)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 21
    const v2, 0x3ecccccd    # 0.4f

    cmpl-float v2, p0, v2

    if-gez v2, :cond_a

    .line 28
    :cond_9
    :goto_9
    return v0

    .line 24
    :cond_a
    if-eqz p4, :cond_e

    move v0, v1

    .line 25
    goto :goto_9

    .line 27
    :cond_e
    if-eqz p3, :cond_12

    const-wide/16 p1, 0x0

    .line 28
    :cond_12
    const-wide/32 v2, 0x88b8

    cmp-long v2, p1, v2

    if-gez v2, :cond_20

    const v2, 0x3f333333    # 0.7f

    cmpl-float v2, p0, v2

    if-ltz v2, :cond_9

    :cond_20
    move v0, v1

    goto :goto_9
.end method

.method public static passes(Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;)Z
    .registers 6

    .prologue
    .line 32
    iget v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->amplitude:F

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->durationUs:J

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->isMinDuration()Z

    move-result v1

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/vr/VrHapticEvent;->isAppend()Z

    move-result v4

    invoke-static {v0, v2, v3, v1, v4}, Lcom/isaigu/gymapp/wearable/vr/VrNoiseGate;->passes(FJZZ)Z

    move-result v0

    return v0
.end method
