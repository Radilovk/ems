.class public final Lcom/isaigu/gymapp/wearable/scale/RestHrStore;
.super Ljava/lang/Object;
.source "RestHrStore.java"


# static fields
.field static final FRESH_DAYS:I = 0x78

.field static final KEEP:I = 0x14

.field static final PREFS:Ljava/lang/String; = "xems_heart"

.field static final RECENT:I = 0x5

.field static final SAME_MS:J = 0x1b7740L


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static add(Lorg/json/JSONArray;JI)Lorg/json/JSONArray;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 52
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 53
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 54
    if-lez v0, :cond_37

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v1

    .line 55
    :goto_12
    if-eqz v1, :cond_23

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v4

    sub-long v4, p1, v4

    const-wide/32 v6, 0x1b7740

    cmp-long v1, v4, v6

    if-gez v1, :cond_23

    add-int/lit8 v0, v0, -0x1

    .line 56
    :cond_23
    add-int/lit8 v1, v0, -0x14

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_2b
    if-ge v1, v0, :cond_39

    .line 57
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 54
    :cond_37
    const/4 v1, 0x0

    goto :goto_12

    .line 59
    :cond_39
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 60
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 61
    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 62
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 63
    return-object v2
.end method

.method public static add(Landroid/content/Context;JI)V
    .registers 9

    .prologue
    .line 24
    if-eqz p0, :cond_10

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_10

    const/16 v0, 0x23

    if-lt p3, v0, :cond_10

    const/16 v0, 0x78

    if-le p3, v0, :cond_11

    .line 35
    :cond_10
    :goto_10
    return-void

    .line 28
    :cond_11
    :try_start_11
    const-string v0, "xems_heart"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 29
    new-instance v1, Lorg/json/JSONArray;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[]"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3, p3}, Lcom/isaigu/gymapp/wearable/scale/RestHrStore;->add(Lorg/json/JSONArray;JI)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "r"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_60} :catch_61

    goto :goto_10

    .line 32
    :catch_61
    move-exception v0

    .line 33
    const-string v1, "RestHrStore.add"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public static typical(Landroid/content/Context;J)D
    .registers 10

    .prologue
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 39
    if-eqz p0, :cond_a

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_b

    .line 46
    :cond_a
    :goto_a
    return-wide v0

    .line 43
    :cond_b
    :try_start_b
    const-string v2, "xems_heart"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[]"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/isaigu/gymapp/wearable/scale/RestHrStore;->typical(Lorg/json/JSONArray;J)D
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_37} :catch_39

    move-result-wide v0

    goto :goto_a

    .line 45
    :catch_39
    move-exception v2

    goto :goto_a
.end method

.method static typical(Lorg/json/JSONArray;J)D
    .registers 16

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 68
    new-array v4, v11, [D

    .line 70
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    move v2, v1

    move v0, v3

    :goto_d
    if-ltz v2, :cond_34

    if-ge v0, v11, :cond_34

    .line 71
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    .line 72
    if-eqz v5, :cond_26

    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v6

    sub-long v6, p1, v6

    const-wide v8, 0x269fb2000L

    cmp-long v1, v6, v8

    if-lez v1, :cond_2a

    .line 70
    :cond_26
    :goto_26
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_d

    .line 75
    :cond_2a
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v5, v10}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v6

    aput-wide v6, v4, v0

    move v0, v1

    goto :goto_26

    .line 77
    :cond_34
    if-nez v0, :cond_39

    .line 78
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 81
    :goto_38
    return-wide v0

    .line 80
    :cond_39
    invoke-static {v4, v3, v0}, Ljava/util/Arrays;->sort([DII)V

    .line 81
    rem-int/lit8 v1, v0, 0x2

    if-ne v1, v10, :cond_45

    div-int/lit8 v0, v0, 0x2

    aget-wide v0, v4, v0

    goto :goto_38

    :cond_45
    div-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, -0x1

    aget-wide v2, v4, v1

    div-int/lit8 v0, v0, 0x2

    aget-wide v0, v4, v0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    goto :goto_38
.end method
