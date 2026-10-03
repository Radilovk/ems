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

.field static final DELETED:Ljava/lang/String; = "del"

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
    .line 29
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

.method static batch(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;JZII)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "up"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v4, 0x0

    :goto_28
    if-ge v4, v7, :cond_38

    aget-object v8, v6, v4

    .line 104
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_35

    .line 105
    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_35
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 108
    :cond_38
    move-wide/from16 v0, p3

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->list(Landroid/content/Context;J)Lorg/json/JSONArray;

    move-result-object v6

    .line 109
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 110
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 111
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_4e
    if-ltz v4, :cond_94

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/16 v10, 0x1e

    if-ge v9, v10, :cond_94

    .line 112
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 113
    if-eqz v9, :cond_76

    const-string v10, "fat"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_76

    const-string v10, "t"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_79

    .line 111
    :cond_76
    :goto_76
    add-int/lit8 v4, v4, -0x1

    goto :goto_4e

    .line 116
    :cond_79
    move/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p7

    invoke-static {v6, v4, v0, v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->item(Lorg/json/JSONArray;IZII)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 117
    const-string v10, "t"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_76

    .line 119
    :cond_94
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_9c

    .line 120
    const/4 v4, 0x0

    .line 130
    :goto_9b
    return v4

    .line 122
    :cond_9c
    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p2, v4}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->postMeasures(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-interface {v5, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_af
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ce

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 126
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_cb

    const-string v5, ","

    :goto_c3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_af

    :cond_cb
    const-string v5, ""

    goto :goto_c3

    .line 128
    :cond_ce
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "up"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 129
    const-string v4, "scale"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uploaded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v4, 0x1

    goto :goto_9b
.end method

.method static fmt(D)Ljava/lang/String;
    .registers 8

    .prologue
    .line 196
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
    .line 138
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 139
    const/4 v0, 0x1

    :goto_6
    const/4 v2, 0x4

    if-gt v0, v2, :cond_17

    .line 140
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;->edges:[D

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->r1(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 142
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

    .line 155
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 156
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

    .line 157
    invoke-static {v0, p2, p4}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->body(Lorg/json/JSONObject;ZI)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;

    move-result-object v2

    .line 158
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 159
    const-string v4, "t"

    const-string v5, "t"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 160
    const-string v4, "w"

    const-string v5, "w"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->r1(D)D

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 161
    const-string v4, "fat"

    const-string v5, "fat"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->r1(D)D

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 162
    const-string v4, "fatKg"

    const-string v5, "fatKg"

    invoke-virtual {v0, v5, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->put(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 163
    const-string v4, "muscle"

    const-string v5, "muscle"

    invoke-virtual {v0, v5, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->put(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 164
    const-string v4, "water"

    const-string v5, "water"

    invoke-virtual {v0, v5, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->put(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 165
    const-string v4, "visc"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 166
    const-string v4, "visc"

    const-string v5, "visc"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    :cond_88
    const-string v4, "bmi"

    const-string v5, "bmi"

    invoke-virtual {v0, v5, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->put(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 169
    const-string v4, "ffmi"

    iget-wide v6, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->ffmi:D

    invoke-static {v3, v4, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->put(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 170
    const-string v4, "fmi"

    iget-wide v6, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->fmi:D

    invoke-static {v3, v4, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->put(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 171
    const-string v4, "page"

    iget-wide v6, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->physicalAge:D

    invoke-static {v3, v4, v6, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->put(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 172
    const-string v4, "type"

    iget v2, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Body;->type:I

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 173
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->readiness(Lorg/json/JSONArray;I)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;

    move-result-object v2

    .line 174
    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->known()Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 175
    const-string v4, "ready"

    iget v2, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Readiness;->score:I

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 177
    :cond_c0
    const-string v2, "nf"

    invoke-static {v8, v9, p2, p3, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->fatNorm(DZI[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->inner(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v2, "nm"

    invoke-static {v8, v9, p2, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->muscleNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v4

    invoke-static {v4}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->inner(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v2, "nw"

    invoke-static {v8, v9, p2, v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleInsight;->waterNorm(DZ[Ljava/lang/String;)Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->inner(Lcom/isaigu/gymapp/wearable/scale/ScaleInsight$Norm;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v1, "segMus"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_fe

    .line 181
    const-string v1, "segMus"

    const-string v2, "segMus"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->seg(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    :cond_fe
    const-string v1, "segFat"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_115

    .line 184
    const-string v1, "segFat"

    const-string v2, "segFat"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->seg(Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
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
    .line 190
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p2, p3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_13

    .line 191
    invoke-static {p2, p3}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->r1(D)D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 193
    :cond_13
    return-void
.end method

.method static r1(D)D
    .registers 6

    .prologue
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 134
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
    .line 33
    sget-object v1, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->RUNNING:Ljava/util/Set;

    monitor-enter v1

    .line 34
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->RUNNING:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 35
    monitor-exit v1

    .line 39
    :goto_10
    return-void

    .line 37
    :cond_11
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_2a

    .line 38
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

    .line 37
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
    .line 146
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 147
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    const/4 v0, 0x5

    if-ge v1, v0, :cond_28

    .line 148
    if-eqz p0, :cond_12

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_12
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_14
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 147
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 148
    :cond_1b
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->r1(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_14

    .line 150
    :cond_28
    return-object v2
.end method

.method static upload(Landroid/content/Context;JZII)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    invoke-static/range {p0 .. p5}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->upgrade(Landroid/content/Context;JZII)Lorg/json/JSONArray;

    .line 72
    invoke-static {p1, p2}, Lcom/isaigu/gymapp/widget/XemsDossier;->cidFor(J)Ljava/lang/String;

    move-result-object v3

    .line 73
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2f

    .line 74
    const-string v0, "scale"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": not on the server yet (no cid)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsDossier;->changed()V

    .line 97
    :cond_2e
    return-void

    .line 78
    :cond_2f
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "del"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b8

    .line 81
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 82
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    :goto_5f
    if-ge v0, v5, :cond_8d

    aget-object v6, v4, v0

    .line 83
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_8a

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v7

    const/16 v8, 0x1e

    if-ge v7, v8, :cond_8a

    .line 84
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "t"

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v7, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "del"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 82
    :cond_8a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 87
    :cond_8d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_9a

    .line 88
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->postMeasures(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_9a
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "del"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 92
    :cond_b8
    const/4 v0, 0x0

    :goto_b9
    const/4 v1, 0x6

    if-ge v0, v1, :cond_2e

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    .line 93
    invoke-static/range {v1 .. v8}, Lcom/isaigu/gymapp/wearable/scale/ScaleUploader;->batch(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;JZII)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_b9
.end method
