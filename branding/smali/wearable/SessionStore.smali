.class final Lcom/isaigu/gymapp/wearable/SessionStore;
.super Ljava/lang/Object;
.source "SessionStore.java"


# static fields
.field private static final DIR:Ljava/lang/String; = "xems_sessions"

.field private static final INDEX:Ljava/lang/String; = "index.json"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized delete(Landroid/content/Context;J)V
    .registers 12

    .prologue
    .line 107
    const-class v1, Lcom/isaigu/gymapp/wearable/SessionStore;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SessionStore;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 108
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SessionStore;->index(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    .line 109
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 110
    const/4 v0, 0x0

    :goto_32
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_4e

    .line 111
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 112
    if-eqz v4, :cond_4b

    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-eqz v5, :cond_4b

    .line 113
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 110
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 116
    :cond_4e
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SessionStore;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v4, "index.json"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/SessionStore;->write(Ljava/io/File;Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_60} :catch_62
    .catchall {:try_start_3 .. :try_end_60} :catchall_7c

    .line 120
    :goto_60
    monitor-exit v1

    return-void

    .line 117
    :catch_62
    move-exception v0

    .line 118
    :try_start_63
    const-string v2, "report"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_63 .. :try_end_7b} :catchall_7c

    goto :goto_60

    .line 107
    :catchall_7c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static dir(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .prologue
    .line 26
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "xems_sessions"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_14

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 30
    :cond_14
    return-object v0
.end method

.method static declared-synchronized index(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 6

    .prologue
    .line 56
    const-class v1, Lcom/isaigu/gymapp/wearable/SessionStore;

    monitor-enter v1

    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SessionStore;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v3, "index.json"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 58
    new-instance v0, Lorg/json/JSONArray;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/SessionStore;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1d} :catch_1f
    .catchall {:try_start_3 .. :try_end_1d} :catchall_3e

    .line 63
    :goto_1d
    monitor-exit v1

    return-object v0

    .line 60
    :catch_1f
    move-exception v0

    .line 61
    :try_start_20
    const-string v2, "report"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "index read failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_38
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_3d
    .catchall {:try_start_20 .. :try_end_3d} :catchall_3e

    goto :goto_1d

    .line 56
    :catchall_3e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static listFor(Landroid/content/Context;J)Ljava/lang/String;
    .registers 10

    .prologue
    .line 68
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SessionStore;->index(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    .line 69
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 70
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_26

    .line 71
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 72
    if-eqz v3, :cond_23

    const-string v4, "userId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_23

    .line 73
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 70
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 76
    :cond_26
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static load(Landroid/content/Context;J)Ljava/lang/String;
    .registers 8

    .prologue
    .line 81
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SessionStore;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "s_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/SessionStore;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_2c
    return-object v0

    .line 82
    :cond_2d
    const-string v0, "null"
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_2c

    .line 83
    :catch_30
    move-exception v0

    .line 84
    const-string v0, "null"

    goto :goto_2c
.end method

.method static declared-synchronized putScores(Landroid/content/Context;JLjava/lang/String;)V
    .registers 13

    .prologue
    .line 91
    const-class v1, Lcom/isaigu/gymapp/wearable/SessionStore;

    monitor-enter v1

    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SessionStore;->index(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    .line 93
    const/4 v0, 0x0

    :goto_d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2b

    .line 94
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 95
    if-eqz v4, :cond_28

    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v5, v6, p1

    if-nez v5, :cond_28

    .line 96
    const-string v5, "scores"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 99
    :cond_2b
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SessionStore;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v4, "index.json"

    invoke-direct {v0, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/SessionStore;->write(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3d} :catch_3f
    .catchall {:try_start_3 .. :try_end_3d} :catchall_59

    .line 103
    :goto_3d
    monitor-exit v1

    return-void

    .line 100
    :catch_3f
    move-exception v0

    .line 101
    :try_start_40
    const-string v2, "report"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scores failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_40 .. :try_end_58} :catchall_59

    goto :goto_3d

    .line 91
    :catchall_59
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static read(Ljava/io/File;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 139
    :try_start_5
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 140
    const/16 v2, 0x4000

    new-array v2, v2, [B

    .line 142
    :goto_e
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1e

    .line 143
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    goto :goto_e

    .line 147
    :catchall_19
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 148
    throw v0

    .line 145
    :cond_1e
    :try_start_1e
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_19

    move-result-object v0

    .line 147
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 145
    return-object v0
.end method

.method static declared-synchronized save(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/SessionRec;I)V
    .registers 13

    .prologue
    .line 35
    const-class v1, Lcom/isaigu/gymapp/wearable/SessionStore;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SessionStore;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "s_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/isaigu/gymapp/wearable/SessionRec;->toJson(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/SessionStore;->write(Ljava/io/File;Ljava/lang/String;)V

    .line 36
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SessionStore;->index(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    .line 37
    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionRec;->summary()Lorg/json/JSONObject;

    move-result-object v3

    .line 38
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 39
    const/4 v0, 0x0

    :goto_3c
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_5a

    .line 40
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 41
    if-eqz v5, :cond_57

    const-string v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-wide v8, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_57

    .line 42
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 39
    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 45
    :cond_5a
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 46
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SessionStore;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "index.json"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/SessionStore;->write(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    const-string v0, "report"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saved session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->start:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " user="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->userId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/isaigu/gymapp/wearable/SessionRec;->run:Lcom/isaigu/gymapp/wearable/SessionInts;

    .line 48
    invoke-virtual {v3}, Lcom/isaigu/gymapp/wearable/SessionInts;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s, active "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/SessionRec;->activeS()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_b9} :catch_bb
    .catchall {:try_start_3 .. :try_end_b9} :catchall_d5

    .line 52
    :goto_b9
    monitor-exit v1

    return-void

    .line 49
    :catch_bb
    move-exception v0

    .line 50
    :try_start_bc
    const-string v2, "report"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d4
    .catchall {:try_start_bc .. :try_end_d4} :catchall_d5

    goto :goto_b9

    .line 35
    :catchall_d5
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static write(Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 126
    :try_start_21
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_3a

    .line 128
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 130
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 131
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 132
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 134
    :cond_39
    return-void

    .line 128
    :catchall_3a
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 129
    throw v0
.end method
