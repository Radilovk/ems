.class public final Lcom/isaigu/gymapp/ai/WorkoutStore;
.super Ljava/lang/Object;
.source "WorkoutStore.java"


# static fields
.field static final FILE:Ljava/lang/String; = "xems_workouts.json"

.field private static own:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/Workout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized delete(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 111
    const-class v2, Lcom/isaigu/gymapp/ai/WorkoutStore;

    monitor-enter v2

    :try_start_3
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->own(Landroid/content/Context;)Ljava/util/List;

    .line 112
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutStore;->own:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_f
    if-ltz v1, :cond_2a

    .line 113
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutStore;->own:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 114
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutStore;->own:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 112
    :cond_26
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_f

    .line 117
    :cond_2a
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->write(Landroid/content/Context;)V
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2f

    .line 118
    monitor-exit v2

    return-void

    .line 111
    :catchall_2f
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static file(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .prologue
    .line 27
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "xems_workouts.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static fromJson(Lorg/json/JSONObject;)Lcom/isaigu/gymapp/ai/Workout;
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 200
    :try_start_3
    new-instance v0, Lcom/isaigu/gymapp/ai/Workout;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/Workout;-><init>()V

    .line 201
    const-string v4, "id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    .line 202
    const-string v4, "name"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    .line 203
    const-string v4, "goal"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 204
    const-string v5, "fat"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    const-string v4, "fat"

    .line 205
    :goto_28
    iput-object v4, v0, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    .line 206
    const-string v4, "t"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/isaigu/gymapp/ai/Workout;->updatedAt:J

    .line 207
    const-string v4, "focus"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v4, v3

    .line 208
    :goto_39
    if-eqz v5, :cond_5b

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_5b

    .line 209
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 205
    :cond_4d
    const-string v5, "passive"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_58

    const-string v4, "passive"

    goto :goto_28

    :cond_58
    const-string v4, "tone"

    goto :goto_28

    .line 211
    :cond_5b
    const-string v4, "sex"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8f

    const-string v4, "sex"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_69
    iput-object v4, v0, Lcom/isaigu/gymapp/ai/Workout;->sex:Ljava/lang/String;

    .line 212
    const-string v4, "lvl"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/isaigu/gymapp/ai/Workout;->level:I

    .line 213
    const-string v4, "goals"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v4, v3

    .line 214
    :goto_7b
    if-eqz v5, :cond_91

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_91

    .line 215
    iget-object v6, v0, Lcom/isaigu/gymapp/ai/Workout;->goals:Ljava/util/Set;

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v4, v4, 0x1

    goto :goto_7b

    :cond_8f
    move-object v4, v1

    .line 211
    goto :goto_69

    .line 217
    :cond_91
    const-string v4, "blocks"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 218
    if-eqz v6, :cond_167

    move v5, v3

    .line 219
    :goto_9a
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v5, v4, :cond_1d8

    .line 220
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 221
    new-instance v8, Lcom/isaigu/gymapp/ai/Workout$Block;

    invoke-direct {v8}, Lcom/isaigu/gymapp/ai/Workout$Block;-><init>()V

    .line 222
    const-string v4, "ex"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15c

    const-string v4, "ex"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_b7
    iput-object v4, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    .line 223
    const-string v4, "n"

    const/16 v9, 0x8

    invoke-virtual {v7, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    .line 224
    const-string v4, "hz"

    const/16 v9, 0x55

    invoke-virtual {v7, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    .line 225
    const-string v4, "pw"

    const/16 v9, 0x15e

    invoke-virtual {v7, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    .line 226
    const-string v4, "on"

    const/4 v9, 0x4

    invoke-virtual {v7, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    .line 227
    const-string v4, "off"

    const/4 v9, 0x4

    invoke-virtual {v7, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    .line 228
    const-string v4, "rel"

    const/16 v9, 0x64

    invoke-virtual {v7, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    .line 229
    const-string v4, "dbl"

    const/4 v9, 0x0

    invoke-virtual {v7, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_15f

    move v4, v2

    :goto_fd
    iput-boolean v4, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    .line 230
    const-string v4, "hz2"

    iget v9, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    invoke-virtual {v7, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    .line 231
    const-string v4, "s2"

    iget v9, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    invoke-virtual {v7, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    .line 232
    const-string v4, "ri"

    iget v9, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    invoke-virtual {v7, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    .line 233
    const-string v4, "ro"

    iget v9, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    invoke-virtual {v7, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    .line 234
    const-string v4, "pat"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_161

    const-string v4, "pat"

    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_135
    iput-object v4, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->pat:Ljava/lang/String;

    .line 235
    const-string v4, "hold"

    const/4 v9, 0x0

    invoke-virtual {v7, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_163

    move v4, v2

    :goto_141
    iput-boolean v4, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->hold:Z

    .line 236
    const-string v4, "lock"

    const/4 v9, 0x0

    invoke-virtual {v7, v4, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_165

    move v4, v2

    :goto_14d
    iput-boolean v4, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->lock:Z

    .line 237
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/Workout$Block;->clampAll()V

    .line 238
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_9a

    :cond_15c
    move-object v4, v1

    .line 222
    goto/16 :goto_b7

    :cond_15f
    move v4, v3

    .line 229
    goto :goto_fd

    :cond_161
    move-object v4, v1

    .line 234
    goto :goto_135

    :cond_163
    move v4, v3

    .line 235
    goto :goto_141

    :cond_165
    move v4, v3

    .line 236
    goto :goto_14d

    .line 242
    :cond_167
    const-string v4, "items"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move v4, v3

    move v5, v3

    .line 244
    :goto_16f
    if-eqz v6, :cond_189

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_189

    .line 245
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "sets"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 244
    add-int/lit8 v4, v4, 0x1

    goto :goto_16f

    :cond_189
    move v4, v2

    .line 247
    :goto_18a
    if-gt v4, v5, :cond_1d8

    move v2, v3

    .line 248
    :goto_18d
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_1d9

    .line 249
    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 250
    const-string v8, "sets"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    if-ge v8, v4, :cond_1a3

    .line 248
    :goto_1a0
    add-int/lit8 v2, v2, 0x1

    goto :goto_18d

    .line 253
    :cond_1a3
    const-string v8, "ex"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 254
    invoke-static {v8}, Lcom/isaigu/gymapp/ai/Workout;->patternOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/isaigu/gymapp/ai/Workout;->forExercise(Ljava/lang/String;Ljava/lang/String;Z)Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v8

    .line 255
    const-string v9, "reps"

    const/16 v10, 0x8

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v8, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    .line 256
    invoke-virtual {v8}, Lcom/isaigu/gymapp/ai/Workout$Block;->clampAll()V

    .line 257
    iget-object v7, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1d0

    .line 258
    iget-object v7, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-static {}, Lcom/isaigu/gymapp/ai/Workout;->rest()Lcom/isaigu/gymapp/ai/Workout$Block;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_1d0
    iget-object v7, v0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1d5
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1d5} :catch_1d6

    goto :goto_1a0

    .line 265
    :catch_1d6
    move-exception v0

    move-object v0, v1

    .line 266
    :cond_1d8
    return-object v0

    .line 247
    :cond_1d9
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_18a
.end method

.method public static declared-synchronized get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/Workout;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 70
    const-class v2, Lcom/isaigu/gymapp/ai/WorkoutStore;

    monitor-enter v2

    if-nez p1, :cond_9

    move-object v0, v1

    .line 83
    :goto_7
    monitor-exit v2

    return-object v0

    .line 73
    :cond_9
    :try_start_9
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->own(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    .line 74
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    goto :goto_7

    .line 78
    :cond_26
    invoke-static {}, Lcom/isaigu/gymapp/ai/WorkoutStore;->presets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    .line 79
    iget-object v4, v0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3f
    .catchall {:try_start_9 .. :try_end_3f} :catchall_45

    move-result v4

    if-eqz v4, :cond_2e

    goto :goto_7

    :cond_43
    move-object v0, v1

    .line 83
    goto :goto_7

    .line 70
    :catchall_45
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static newId()Ljava/lang/String;
    .registers 4

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v1, 0x24

    invoke-static {v2, v3, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized own(Landroid/content/Context;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/Workout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    const-class v1, Lcom/isaigu/gymapp/ai/WorkoutStore;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutStore;->own:Ljava/util/List;

    if-nez v0, :cond_63

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/WorkoutStore;->own:Ljava/util/List;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_6c

    .line 35
    :try_start_e
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->file(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 37
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "workouts"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 38
    const/4 v0, 0x0

    :goto_2d
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_5e

    .line 39
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/WorkoutStore;->fromJson(Lorg/json/JSONObject;)Lcom/isaigu/gymapp/ai/Workout;

    move-result-object v3

    .line 40
    if-eqz v3, :cond_42

    .line 41
    sget-object v4, Lcom/isaigu/gymapp/ai/WorkoutStore;->own:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_42} :catch_45
    .catchall {:try_start_e .. :try_end_42} :catchall_6c

    .line 38
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 45
    :catch_45
    move-exception v0

    .line 46
    :try_start_46
    const-string v2, "workouts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_5e
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutStore;->own:Ljava/util/List;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->sort(Ljava/util/List;)V

    .line 50
    :cond_63
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/isaigu/gymapp/ai/WorkoutStore;->own:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_6a
    .catchall {:try_start_46 .. :try_end_6a} :catchall_6c

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_6c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static presets()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/Workout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lcom/isaigu/gymapp/ai/Workout;->presets()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized save(Landroid/content/Context;Lcom/isaigu/gymapp/ai/Workout;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 91
    const-class v3, Lcom/isaigu/gymapp/ai/WorkoutStore;

    monitor-enter v3

    if-eqz p1, :cond_a

    :try_start_6
    iget-boolean v1, p1, Lcom/isaigu/gymapp/ai/Workout;->preset:Z
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_4b

    if-eqz v1, :cond_c

    .line 108
    :cond_a
    :goto_a
    monitor-exit v3

    return-void

    .line 94
    :cond_c
    :try_start_c
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->own(Landroid/content/Context;)Ljava/util/List;

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/isaigu/gymapp/ai/Workout;->updatedAt:J

    move v2, v0

    move v1, v0

    .line 97
    :goto_17
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutStore;->own:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3b

    .line 98
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutStore;->own:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    iget-object v4, p1, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 99
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutStore;->own:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 100
    const/4 v0, 0x1

    .line 97
    :goto_37
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_17

    .line 103
    :cond_3b
    if-nez v1, :cond_42

    .line 104
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutStore;->own:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_42
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutStore;->own:Ljava/util/List;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->sort(Ljava/util/List;)V

    .line 107
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->write(Landroid/content/Context;)V
    :try_end_4a
    .catchall {:try_start_c .. :try_end_4a} :catchall_4b

    goto :goto_a

    .line 91
    :catchall_4b
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_4e
    move v0, v1

    goto :goto_37
.end method

.method private static sort(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/Workout;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x1

    move v2, v0

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_39

    .line 55
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    .line 56
    add-int/lit8 v1, v2, -0x1

    move v3, v1

    .line 57
    :goto_11
    if-ltz v3, :cond_30

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/Workout;

    iget-wide v4, v1, Lcom/isaigu/gymapp/ai/Workout;->updatedAt:J

    iget-wide v6, v0, Lcom/isaigu/gymapp/ai/Workout;->updatedAt:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_30

    .line 58
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/isaigu/gymapp/ai/Workout;

    invoke-interface {p0, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_11

    .line 61
    :cond_30
    add-int/lit8 v1, v3, 0x1

    invoke-interface {p0, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 63
    :cond_39
    return-void
.end method

.method static toJson(Lcom/isaigu/gymapp/ai/Workout;)Lorg/json/JSONObject;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 143
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 144
    const-string v0, "id"

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/Workout;->id:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v0, "name"

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/Workout;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v0, "goal"

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/Workout;->goal:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v0, "t"

    iget-wide v2, p0, Lcom/isaigu/gymapp/ai/Workout;->updatedAt:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 148
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 149
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->focus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 150
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2d

    .line 152
    :cond_3d
    const-string v0, "focus"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->sex:Ljava/lang/String;

    if-eqz v0, :cond_4d

    .line 154
    const-string v0, "sex"

    iget-object v2, p0, Lcom/isaigu/gymapp/ai/Workout;->sex:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :cond_4d
    iget v0, p0, Lcom/isaigu/gymapp/ai/Workout;->level:I

    if-lez v0, :cond_58

    .line 157
    const-string v0, "lvl"

    iget v2, p0, Lcom/isaigu/gymapp/ai/Workout;->level:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 159
    :cond_58
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 160
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->goals:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_63
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 161
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_63

    .line 163
    :cond_73
    const-string v0, "goals"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 165
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/Workout;->blocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_83
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_110

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout$Block;

    .line 166
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 167
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    if-eqz v5, :cond_9f

    .line 168
    const-string v5, "ex"

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->ex:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    :cond_9f
    const-string v5, "n"

    iget v6, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->reps:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 171
    const-string v5, "hz"

    iget v6, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    const-string v5, "pw"

    iget v6, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->pw:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 173
    const-string v5, "on"

    iget v6, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->on:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 174
    const-string v5, "off"

    iget v6, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->off:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 175
    const-string v5, "rel"

    iget v6, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->rel:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 176
    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->dbl:Z

    if-eqz v5, :cond_d2

    .line 177
    const-string v5, "dbl"

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 179
    :cond_d2
    const-string v5, "hz2"

    iget v6, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->hz2:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    const-string v5, "s2"

    iget v6, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->str2:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 181
    const-string v5, "ri"

    iget v6, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampIn:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 182
    const-string v5, "ro"

    iget v6, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->rampOut:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    iget-object v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->pat:Ljava/lang/String;

    if-eqz v5, :cond_f9

    .line 184
    const-string v5, "pat"

    iget-object v6, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->pat:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    :cond_f9
    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->hold:Z

    if-eqz v5, :cond_102

    .line 187
    const-string v5, "hold"

    invoke-virtual {v4, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 189
    :cond_102
    iget-boolean v0, v0, Lcom/isaigu/gymapp/ai/Workout$Block;->lock:Z

    if-eqz v0, :cond_10b

    .line 190
    const-string v0, "lock"

    invoke-virtual {v4, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 192
    :cond_10b
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_83

    .line 194
    :cond_110
    const-string v0, "blocks"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    return-object v1
.end method

.method private static write(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 122
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 123
    sget-object v0, Lcom/isaigu/gymapp/ai/WorkoutStore;->own:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/Workout;

    .line 124
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->toJson(Lcom/isaigu/gymapp/ai/Workout;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_b

    .line 137
    :catch_1f
    move-exception v0

    .line 138
    const-string v1, "workouts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_38
    return-void

    .line 126
    :cond_39
    :try_start_39
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 127
    const-string v2, "v"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    const-string v2, "workouts"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/WorkoutStore;->file(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 130
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 132
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 133
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 134
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 135
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "rename"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_8c} :catch_1f
.end method
