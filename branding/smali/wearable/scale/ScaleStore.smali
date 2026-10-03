.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleStore;
.super Ljava/lang/Object;
.source "ScaleStore.java"


# static fields
.field public static final FRESH_MS:J = 0x134fd9000L

.field static final KEEP:I = 0x78

.field static final PREFS:Ljava/lang/String; = "xems_scale"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static arr([D)Lorg/json/JSONArray;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 96
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 97
    array-length v3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    if-ge v1, v3, :cond_29

    aget-wide v4, p0, v1

    .line 98
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_16
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 97
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 98
    :cond_1d
    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_16

    .line 100
    :cond_29
    return-object v2
.end method

.method public static delete(Landroid/content/Context;JJZII)Lorg/json/JSONArray;
    .registers 15

    .prologue
    .line 216
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->list(Landroid/content/Context;J)Lorg/json/JSONArray;

    move-result-object v1

    .line 217
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 218
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_26

    .line 219
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 220
    if-eqz v3, :cond_23

    const-string v4, "t"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v4, v4, p3

    if-eqz v4, :cond_23

    .line 221
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 218
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 224
    :cond_26
    invoke-static {v2, p5, p6, p7}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->rebuild(Lorg/json/JSONArray;ZII)Lorg/json/JSONArray;

    move-result-object v1

    .line 225
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "del"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "del"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 228
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_96
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "up"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 229
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 230
    return-object v1

    .line 228
    :cond_b5
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_96
.end method

.method public static fresh(Landroid/content/Context;J)Lorg/json/JSONObject;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 91
    if-eqz p0, :cond_26

    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->latest(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 92
    :goto_7
    if-eqz v0, :cond_28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "t"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide v4, 0x134fd9000L

    cmp-long v2, v2, v4

    if-gtz v2, :cond_28

    const-string v2, "fat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    :goto_25
    return-object v0

    :cond_26
    move-object v0, v1

    .line 91
    goto :goto_7

    :cond_28
    move-object v0, v1

    .line 92
    goto :goto_25
.end method

.method public static freshChannelFat(Landroid/content/Context;J)[D
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 82
    if-eqz p0, :cond_1e

    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->latest(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v1

    .line 83
    :goto_7
    if-eqz v1, :cond_1d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "t"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide v4, 0x134fd9000L

    cmp-long v2, v2, v4

    if-lez v2, :cond_20

    .line 86
    :cond_1d
    :goto_1d
    return-object v0

    :cond_1e
    move-object v1, v0

    .line 82
    goto :goto_7

    .line 86
    :cond_20
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->channelFat(Lorg/json/JSONObject;)[D

    move-result-object v0

    goto :goto_1d
.end method

.method public static freshFatPct(Landroid/content/Context;J)D
    .registers 12

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 48
    if-eqz p0, :cond_20

    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->latest(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 49
    :goto_8
    if-eqz v0, :cond_1e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v1, "t"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide v6, 0x134fd9000L

    cmp-long v1, v4, v6

    if-lez v1, :cond_22

    :cond_1e
    move-wide v0, v2

    .line 53
    :cond_1f
    :goto_1f
    return-wide v0

    .line 48
    :cond_20
    const/4 v0, 0x0

    goto :goto_8

    .line 52
    :cond_22
    const-string v1, "fat"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 53
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_37

    const-wide v4, 0x4051800000000000L    # 70.0

    cmpg-double v4, v0, v4

    if-ltz v4, :cond_1f

    :cond_37
    move-wide v0, v2

    goto :goto_1f
.end method

.method public static freshWeight(Landroid/content/Context;J)D
    .registers 12

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 58
    if-eqz p0, :cond_20

    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->latest(Landroid/content/Context;J)Lorg/json/JSONObject;

    move-result-object v0

    .line 59
    :goto_8
    if-eqz v0, :cond_1e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v1, "t"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide v6, 0x134fd9000L

    cmp-long v1, v4, v6

    if-lez v1, :cond_22

    :cond_1e
    move-wide v0, v2

    .line 63
    :cond_1f
    :goto_1f
    return-wide v0

    .line 58
    :cond_20
    const/4 v0, 0x0

    goto :goto_8

    .line 62
    :cond_22
    const-string v1, "w"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 63
    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_37

    const-wide v4, 0x406f400000000000L    # 250.0

    cmpg-double v4, v0, v4

    if-lez v4, :cond_1f

    :cond_37
    move-wide v0, v2

    goto :goto_1f
.end method

.method public static latest(Landroid/content/Context;J)Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 36
    if-eqz p0, :cond_17

    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->list(Landroid/content/Context;J)Lorg/json/JSONArray;

    move-result-object v0

    .line 37
    :goto_6
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_1d

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    :goto_16
    return-object v0

    .line 36
    :cond_17
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_6

    .line 37
    :cond_1d
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static list(Landroid/content/Context;J)Lorg/json/JSONArray;
    .registers 8

    .prologue
    .line 28
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[]"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_22} :catch_23

    .line 30
    :goto_22
    return-object v0

    .line 29
    :catch_23
    move-exception v0

    .line 30
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_22
.end method

.method public static mac(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 234
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "mac"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 23
    const-string v0, "xems_scale"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static previous(Landroid/content/Context;J)Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->list(Landroid/content/Context;J)Lorg/json/JSONArray;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_16

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static readinessToday(Landroid/content/Context;J)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 68
    if-eqz p0, :cond_e

    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->list(Landroid/content/Context;J)Lorg/json/JSONArray;

    move-result-object v0

    .line 69
    :goto_7
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_14

    .line 77
    :cond_d
    :goto_d
    return-object v1

    .line 68
    :cond_e
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_7

    .line 72
    :cond_14
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 73
    if-eqz v2, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "t"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    sub-long v2, v4, v2

    const-wide/32 v4, 0x2932e00

    cmp-long v2, v2, v4

    if-gtz v2, :cond_d

    .line 76
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->known()Z

    move-result v2

    if-eqz v2, :cond_45

    :goto_43
    move-object v1, v0

    goto :goto_d

    :cond_45
    move-object v0, v1

    goto :goto_43
.end method

.method public static save(Landroid/content/Context;JLcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZII)Lorg/json/JSONObject;
    .registers 16

    .prologue
    .line 138
    const/4 v8, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->save(Landroid/content/Context;JLcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIII)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static save(Landroid/content/Context;JLcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIII)Lorg/json/JSONObject;
    .registers 19

    .prologue
    .line 144
    const-wide/16 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v9}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->save(Landroid/content/Context;JLcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIIIJ)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static save(Landroid/content/Context;JLcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIIIJ)Lorg/json/JSONObject;
    .registers 18

    .prologue
    .line 154
    move-object v1, p0

    move-wide v2, p1

    move v4, p4

    move v5, p5

    move v6, p6

    :try_start_5
    invoke-static/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->upgrade(Landroid/content/Context;JZII)Lorg/json/JSONArray;

    move-result-object v1

    .line 155
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 156
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_31

    .line 157
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 158
    if-eqz v2, :cond_2e

    const-wide/16 v4, 0x0

    cmp-long v3, p8, v4

    if-lez v3, :cond_2b

    const-string v3, "t"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v3, v4, p8

    if-eqz v3, :cond_2e

    .line 159
    :cond_2b
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 156
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 162
    :cond_31
    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->stateOf(Lorg/json/JSONArray;)Lcom/isaigu/gymapp/wearable/scale/ScaleModel$State;

    move-result-object v6

    .line 163
    const-wide/16 v0, 0x0

    cmp-long v0, p8, v0

    if-lez v0, :cond_72

    move-wide/from16 v4, p8

    :goto_3d
    move-object v0, p3

    move v1, p4

    move v2, p5

    move v3, p6

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->entry(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;ZIIJLcom/isaigu/gymapp/wearable/scale/ScaleModel$State;)Lorg/json/JSONObject;

    move-result-object v0

    .line 165
    invoke-static {v0, p4, p6}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->mark(Lorg/json/JSONObject;ZI)V

    .line 166
    const/4 v1, 0x1

    if-le p7, v1, :cond_50

    .line 167
    const-string v1, "n"

    invoke-virtual {v0, v1, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 169
    :cond_50
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 170
    const/4 v1, 0x0

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x78

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_62
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_77

    .line 171
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 164
    :cond_72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_3d

    .line 173
    :cond_77
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 174
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 175
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "m"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 176
    const-wide/16 v4, 0x0

    cmp-long v2, p8, v4

    if-lez v2, :cond_10e

    .line 178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "up"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v1, 0x0

    move v2, v1

    :goto_ca
    if-ge v2, v6, :cond_f4

    aget-object v7, v5, v2

    .line 180
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_ed

    invoke-static/range {p8 .. p9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ed

    .line 181
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_f1

    const-string v1, ","

    :goto_e6
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_ed
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_ca

    .line 181
    :cond_f1
    const-string v1, ""

    goto :goto_e6

    .line 184
    :cond_f4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "up"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 186
    :cond_10e
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_111
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_111} :catch_112

    .line 190
    :goto_111
    return-object v0

    .line 188
    :catch_112
    move-exception v0

    .line 189
    const-string v1, "ScaleStore.save"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    const/4 v0, 0x0

    goto :goto_111
.end method

.method public static setMac(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 238
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mac"

    if-eqz p1, :cond_14

    :goto_c
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 239
    return-void

    .line 238
    :cond_14
    const-string p1, ""

    goto :goto_c
.end method

.method public static toJson(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;Lcom/isaigu/gymapp/wearable/scale/ScaleBody;J)Lorg/json/JSONObject;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 104
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 105
    const-string v1, "t"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 106
    const-string v1, "w"

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 107
    const-string v1, "z20"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->arr([D)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v1, "z100"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->arr([D)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->scaleFatPct:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_3f

    .line 110
    const-string v1, "sfat"

    iget-wide v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->scaleFatPct:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 112
    :cond_3f
    if-eqz p1, :cond_b2

    .line 113
    const-string v1, "fat"

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatPct:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 114
    const-string v1, "fatKg"

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->fatKg:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 115
    const-string v1, "lean"

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->leanKg:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 116
    const-string v1, "water"

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->waterPct:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 117
    const-string v1, "muscle"

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->muscleKg:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 118
    const-string v1, "skel"

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->skeletalPct:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 119
    const-string v1, "bone"

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->boneKg:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 120
    const-string v1, "prot"

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->proteinPct:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 121
    const-string v1, "visc"

    iget v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->visceral:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    const-string v1, "subc"

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->subcutPct:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 123
    const-string v1, "bmr"

    iget v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->bmr:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    const-string v1, "bage"

    iget v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->bodyAge:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    const-string v1, "bmi"

    iget-wide v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->bmi:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 126
    const-string v1, "segFat"

    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->segFatKg:[D

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->arr([D)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v1, "segMus"

    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleBody;->segMuscleKg:[D

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->arr([D)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    :cond_b2
    return-object v0
.end method

.method public static upgrade(Landroid/content/Context;JZII)Lorg/json/JSONArray;
    .registers 11

    .prologue
    .line 199
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->list(Landroid/content/Context;J)Lorg/json/JSONArray;

    move-result-object v0

    .line 201
    :try_start_4
    invoke-static {v0, p3, p4, p5}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->stale(Lorg/json/JSONArray;ZII)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 202
    invoke-static {v0, p3, p4, p5}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->rebuild(Lorg/json/JSONArray;ZII)Lorg/json/JSONArray;

    move-result-object v0

    .line 203
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "up"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4b} :catch_4c

    .line 208
    :cond_4b
    :goto_4b
    return-object v0

    .line 205
    :catch_4c
    move-exception v1

    .line 206
    const-string v2, "ScaleStore.upgrade"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4b
.end method
