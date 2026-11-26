.class public final Lcom/isaigu/gymapp/wearable/vr/VrHitParams;
.super Ljava/lang/Object;
.source "VrHitParams.java"


# static fields
.field static volatile hz:I

.field static volatile untilNs:J

.field static volatile width:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hzNow()I
    .registers 4

    .prologue
    .line 16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/wearable/vr/VrHitParams;->untilNs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrHitParams;->hz:I

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static widthNow()I
    .registers 4

    .prologue
    .line 21
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/wearable/vr/VrHitParams;->untilNs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    sget v0, Lcom/isaigu/gymapp/wearable/vr/VrHitParams;->width:I

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method
