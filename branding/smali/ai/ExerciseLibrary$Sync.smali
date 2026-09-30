.class final Lcom/isaigu/gymapp/ai/ExerciseLibrary$Sync;
.super Ljava/lang/Object;
.source "ExerciseLibrary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/ExerciseLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Sync"
.end annotation


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Sync;->c:Landroid/content/Context;

    .line 214
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 219
    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Sync;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->load(Landroid/content/Context;)V

    .line 220
    new-instance v1, Lorg/json/JSONObject;

    const-string v0, "/v1/exercises"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 221
    const-string v0, "ok"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 222
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Sync;->c:Landroid/content/Context;

    # invokes: Lcom/isaigu/gymapp/ai/ExerciseLibrary;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->access$000(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "picks"

    const-string v0, "picks"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_b4

    .line 223
    const-string v0, "picks"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    :goto_37
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "v"

    const-string v4, "v"

    .line 224
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "syncedAt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 226
    :cond_54
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Sync;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->picks(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    .line 227
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 228
    const-class v1, Lcom/isaigu/gymapp/ai/ExerciseLibrary;

    monitor-enter v1
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_62} :catch_97
    .catchall {:try_start_1 .. :try_end_62} :catchall_10d

    .line 229
    :try_start_62
    # getter for: Lcom/isaigu/gymapp/ai/ExerciseLibrary;->ALL:Ljava/util/List;
    invoke-static {}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6a
    :goto_6a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    .line 230
    iget-boolean v6, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->builtIn:Z

    if-nez v6, :cond_6a

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Sync;->c:Landroid/content/Context;

    invoke-static {v6, v0, v3}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->isEnabled(Landroid/content/Context;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_6a

    iget-object v6, p0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Sync;->c:Landroid/content/Context;

    iget-object v7, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->cacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_6a

    .line 231
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 234
    :catchall_94
    move-exception v0

    monitor-exit v1
    :try_end_96
    .catchall {:try_start_62 .. :try_end_96} :catchall_94

    :try_start_96
    throw v0
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_97} :catch_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_10d

    .line 242
    :catch_97
    move-exception v0

    .line 243
    :try_start_98
    const-string v1, "library"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sync: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_98 .. :try_end_b0} :catchall_10d

    .line 245
    # setter for: Lcom/isaigu/gymapp/ai/ExerciseLibrary;->syncing:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->access$202(Z)Z

    .line 247
    :goto_b3
    return-void

    .line 223
    :cond_b4
    :try_start_b4
    const-string v0, "[]"
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_b6} :catch_97
    .catchall {:try_start_b4 .. :try_end_b6} :catchall_10d

    goto :goto_37

    .line 234
    :cond_b7
    :try_start_b7
    monitor-exit v1
    :try_end_b8
    .catchall {:try_start_b7 .. :try_end_b8} :catchall_94

    .line 236
    :try_start_b8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_bd
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    .line 237
    iget-object v6, p0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Sync;->c:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->download(Landroid/content/Context;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 238
    add-int/lit8 v0, v1, 0x1

    :goto_d3
    move v1, v0

    .line 240
    goto :goto_bd

    .line 241
    :cond_d5
    const-string v0, "library"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sync picks "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", downloaded "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_109
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_109} :catch_97
    .catchall {:try_start_b8 .. :try_end_109} :catchall_10d

    .line 245
    # setter for: Lcom/isaigu/gymapp/ai/ExerciseLibrary;->syncing:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->access$202(Z)Z

    goto :goto_b3

    :catchall_10d
    move-exception v0

    # setter for: Lcom/isaigu/gymapp/ai/ExerciseLibrary;->syncing:Z
    invoke-static {v2}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->access$202(Z)Z

    .line 246
    throw v0

    :cond_112
    move v0, v1

    goto :goto_d3
.end method
