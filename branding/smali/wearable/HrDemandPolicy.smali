.class public final Lcom/isaigu/gymapp/wearable/HrDemandPolicy;
.super Ljava/lang/Object;
.source "HrDemandPolicy.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static wantsHeartRate(Landroid/content/Context;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->isAutoReduceEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/HrDemandPolicy;->wantsHeartRate(ZLjava/util/Set;)Z

    move-result v0

    goto :goto_0
.end method

.method public static wantsHeartRate(ZLjava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 21
    if-eqz p0, :cond_1

    move v0, v1

    .line 29
    :cond_0
    :goto_0
    return v0

    .line 24
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 29
    const-string v2, "ai"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "settings"

    .line 30
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
