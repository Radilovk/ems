.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;
.super Ljava/lang/Object;
.source "ScaleUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleUploader$Work;
    }
.end annotation


# static fields
.field static final BATCH:I = 0x1e

.field static final RUNNING:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static final SENT:Ljava/lang/String; = "up"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->RUNNING:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static fmt(D)Ljava/lang/String;
    .registers 8

    .prologue
    .line 169
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%.1f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static inner(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)Lorg/json/JSONArray;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 112
    const/4 v0, 0x1

    :goto_6
    const/4 v2, 0x4

    if-gt v0, v2, :cond_17

    .line 113
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->edges:[D

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->r1(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 115
    :cond_17
    return-object v1
.end method

.method static item(Lorg/json/JSONArray;IZII)Lorg/json/JSONObject;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/high16 v8, 0x7ff8000000000000L    # Double.NaN

    .line 128
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 129
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, ""

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, ""

    aput-object v3, v1, v2

    .line 130
    invoke-static {v0, p2, p4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v2

    .line 131
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 132
    const-string v4, "t"

    const-string v5, "t"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 133
    const-string v4, "w"

    const-string v5, "w"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->r1(D)D

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 134
    const-string v4, "fat"

    const-string v5, "fat"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->r1(D)D

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 135
    const-string v4, "fatKg"

    const-string v5, "fatKg"

    invoke-virtual {v0, v5, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->put(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 136
    const-string v4, "muscle"

    const-string v5, "muscle"

    invoke-virtual {v0, v5, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->put(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 137
    const-string v4, "water"

    const-string v5, "water"

    invoke-virtual {v0, v5, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->put(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 138
    const-string v4, "visc"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 139
    const-string v4, "visc"

    const-string v5, "visc"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 141
    :cond_88
    const-string v4, "bmi"

    const-string v5, "bmi"

    invoke-virtual {v0, v5, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->put(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 142
    const-string v4, "ffmi"

    iget-wide v6, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    invoke-static {v3, v4, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->put(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 143
    const-string v4, "fmi"

    iget-wide v6, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    invoke-static {v3, v4, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->put(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 144
    const-string v4, "page"

    iget-wide v6, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    invoke-static {v3, v4, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->put(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 145
    const-string v4, "type"

    iget v2, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->type:I

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 146
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v2

    .line 147
    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->known()Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 148
    const-string v4, "ready"

    iget v2, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->score:I

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    :cond_c0
    const-string v2, "nf"

    invoke-static {v8, v9, p2, p3, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->fatNorm(DZI[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->inner(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v2, "nm"

    invoke-static {v8, v9, p2, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->muscleNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->inner(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v2, "nw"

    invoke-static {v8, v9, p2, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->waterNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->inner(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v1, "segMus"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_fe

    .line 154
    const-string v1, "segMus"

    const-string v2, "segMus"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->seg(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :cond_fe
    const-string v1, "segFat"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_115

    .line 157
    const-string v1, "segFat"

    const-string v2, "segFat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->seg(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    :cond_115
    return-object v3
.end method

.method static put(Lorg/json/JSONObject;Ljava/lang/String;D)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_13

    .line 164
    invoke-static {p2, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->r1(D)D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 166
    :cond_13
    return-void
.end method

.method static r1(D)D
    .registers 6

    .prologue
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 107
    mul-double v0, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static schedule(Landroid/content/Context;JZII)V
    .registers 15

    .prologue
    .line 31
    sget-object v1, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->RUNNING:Ljava/util/Set;

    monitor-enter v1

    .line 32
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->RUNNING:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 33
    monitor-exit v1

    .line 37
    :goto_10
    return-void

    .line 35
    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2a

    .line 36
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader$Work;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader$Work;-><init>(Landroid/content/Context;JZII)V

    const-string v1, "xems-scale-up"

    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_10

    .line 35
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method static seg(Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 120
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    const/4 v0, 0x5

    if-ge v1, v0, :cond_28

    .line 121
    if-eqz p0, :cond_12

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_12
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_14
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 120
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 121
    :cond_1b
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->r1(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_14

    .line 123
    :cond_28
    return-object v2
.end method

.method static upload(Landroid/content/Context;JZII)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    invoke-static/range {p1 .. p2}, Lcom/isaigu/gymapp/widget/XemsDossier;->cidFor(J)Ljava/lang/String;

    move-result-object v5

    .line 70
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2e

    .line 71
    const-string v4, "scale"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "upload user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": not on the server yet (no cid)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsDossier;->changed()V

    .line 104
    :cond_2d
    :goto_2d
    return-void

    .line 75
    :cond_2e
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 76
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "up"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, ""

    invoke-interface {v6, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v4, 0x0

    :goto_5a
    if-ge v4, v9, :cond_6a

    aget-object v10, v8, v4

    .line 78
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_67

    .line 79
    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_5a

    .line 82
    :cond_6a
    invoke-static/range {p0 .. p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->list(Landroid/content/Context;J)Lorg/json/JSONArray;

    move-result-object v8

    .line 83
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 84
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 85
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_7e
    if-ltz v4, :cond_c4

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    const/16 v12, 0x1e

    if-ge v11, v12, :cond_c4

    .line 86
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 87
    if-eqz v11, :cond_a6

    const-string v12, "fat"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a6

    const-string v12, "t"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a9

    .line 85
    :cond_a6
    :goto_a6
    add-int/lit8 v4, v4, -0x1

    goto :goto_7e

    .line 90
    :cond_a9
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v8, v4, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->item(Lorg/json/JSONArray;IZII)Lorg/json/JSONObject;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 91
    const-string v12, "t"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    .line 93
    :cond_c4
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_2d

    .line 96
    invoke-virtual {v9}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v5, v4}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->postMeasures(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-interface {v7, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 98
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_dd
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fc

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 100
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_f9

    const-string v5, ","

    :goto_f1
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_dd

    :cond_f9
    const-string v5, ""

    goto :goto_f1

    .line 102
    :cond_fc
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "up"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    const-string v4, "scale"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uploaded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2d
.end method
