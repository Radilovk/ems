.class final Lcom/isaigu/gymapp/ai/ExerciseFigure$Load;
.super Ljava/lang/Object;
.source "ExerciseFigure.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/ExerciseFigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Load"
.end annotation


# instance fields
.field private final c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure$Load;->c:Landroid/content/Context;

    .line 81
    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 86
    :try_start_1
    iget-object v0, p0, Lcom/isaigu/gymapp/ai/ExerciseFigure$Load;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "xems/exercises.json"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 87
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 88
    const/16 v3, 0x4000

    new-array v3, v3, [B

    .line 90
    :goto_16
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_2d

    .line 91
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_20} :catch_21
    .catchall {:try_start_1 .. :try_end_20} :catchall_6d

    goto :goto_16

    .line 102
    :catch_21
    move-exception v0

    .line 103
    :try_start_22
    const-string v2, "xems"

    const-string v3, "ExerciseFigure.load"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_6d

    .line 105
    # setter for: Lcom/isaigu/gymapp/ai/ExerciseFigure;->loading:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->access$202(Z)Z

    .line 107
    :goto_2c
    return-void

    .line 93
    :cond_2d
    :try_start_2d
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 94
    new-instance v0, Lorg/json/JSONObject;

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "exercises"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 95
    # getter for: Lcom/isaigu/gymapp/ai/ExerciseFigure;->RAW:Ljava/util/Map;
    invoke-static {}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->access$000()Ljava/util/Map;

    move-result-object v3

    monitor-enter v3
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_46} :catch_21
    .catchall {:try_start_2d .. :try_end_46} :catchall_6d

    move v0, v1

    .line 96
    :goto_47
    :try_start_47
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_61

    .line 97
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 98
    # getter for: Lcom/isaigu/gymapp/ai/ExerciseFigure;->RAW:Ljava/util/Map;
    invoke-static {}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->access$000()Ljava/util/Map;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 100
    :cond_61
    monitor-exit v3
    :try_end_62
    .catchall {:try_start_47 .. :try_end_62} :catchall_6a

    .line 101
    const/4 v0, 0x1

    :try_start_63
    # setter for: Lcom/isaigu/gymapp/ai/ExerciseFigure;->loaded:Z
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->access$102(Z)Z
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_66} :catch_21
    .catchall {:try_start_63 .. :try_end_66} :catchall_6d

    .line 105
    # setter for: Lcom/isaigu/gymapp/ai/ExerciseFigure;->loading:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->access$202(Z)Z

    goto :goto_2c

    .line 100
    :catchall_6a
    move-exception v0

    :try_start_6b
    monitor-exit v3
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    :try_start_6c
    throw v0
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6d} :catch_21
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6d

    .line 105
    :catchall_6d
    move-exception v0

    # setter for: Lcom/isaigu/gymapp/ai/ExerciseFigure;->loading:Z
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/ExerciseFigure;->access$202(Z)Z

    .line 106
    throw v0
.end method
