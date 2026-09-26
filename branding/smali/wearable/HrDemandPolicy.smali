.class public final Lcom/isaigu/gymapp/wearable/HrDemandPolicy;
.super Ljava/lang/Object;
.source "HrDemandPolicy.java"


# static fields
.field public static final BAND_APP_IDLE_GRACE_MS:J = 0x15f90L


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static isBandAppRecentlyActive(JJ)Z
    .registers 8

    .line 45
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-gtz v3, :cond_8

    .line 46
    return v0

    .line 48
    :cond_8
    sub-long/2addr p2, p0

    const-wide/32 p0, 0x15f90

    cmp-long v1, p2, p0

    if-gez v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public static wantsHeartRate(Landroid/content/Context;Ljava/util/Set;ZJJ)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZJJ)Z"
        }
    .end annotation

    .line 58
    if-nez p0, :cond_4

    .line 59
    const/4 p0, 0x0

    return p0

    .line 61
    :cond_4
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result v0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/HrDemandPolicy;->wantsHeartRate(ZLjava/util/Set;ZJJ)Z

    move-result p0

    return p0
.end method

.method public static wantsHeartRate(ZLjava/util/Set;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/HrDemandPolicy;->wantsHeartRate(ZLjava/util/Set;ZJJ)Z

    move-result p0

    return p0
.end method

.method public static wantsHeartRate(ZLjava/util/Set;ZJJ)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZJJ)Z"
        }
    .end annotation

    .line 28
    const/4 v0, 0x1

    if-eqz p1, :cond_1c

    .line 29
    const-string v1, "ai"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 30
    const-string v1, "dial"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 31
    const-string v1, "settings"

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 32
    :cond_1b
    return v0

    .line 35
    :cond_1c
    if-eqz p2, :cond_1f

    .line 36
    return v0

    .line 38
    :cond_1f
    if-eqz p0, :cond_28

    invoke-static {p3, p4, p5, p6}, Lcom/isaigu/gymapp/wearable/HrDemandPolicy;->isBandAppRecentlyActive(JJ)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 39
    return v0

    .line 41
    :cond_28
    const/4 p0, 0x0

    return p0
.end method
