.class public final Lcom/isaigu/gymapp/ai/ExerciseLibrary;
.super Ljava/lang/Object;
.source "ExerciseLibrary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;,
        Lcom/isaigu/gymapp/ai/ExerciseLibrary$Sync;
    }
.end annotation


# static fields
.field private static final ALL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public static final ASSET:Ljava/lang/String; = "xems/library.json"

.field private static final BY_ID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;",
            ">;"
        }
    .end annotation
.end field

.field static final DIR:Ljava/lang/String; = "xems_ex"

.field static final PREFS:Ljava/lang/String; = "xems_library"

.field static final SYNC_EVERY_MS:J = 0x1499700L

.field private static frameUrl:Ljava/lang/String;

.field private static volatile loaded:Z

.field private static volatile syncing:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->ALL:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->BY_ID:Ljava/util/Map;

    .line 78
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->frameUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 30
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/List;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->ALL:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .prologue
    .line 30
    sput-boolean p0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->syncing:Z

    return p0
.end method

.method static cacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .prologue
    .line 246
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "xems_ex"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static cachedFigure(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 280
    :try_start_3
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->cacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 281
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_f

    move-object v0, v1

    .line 300
    :goto_e
    return-object v0

    .line 284
    :cond_f
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 285
    const-string v0, "paths"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 286
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->picks(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 287
    if-eqz v0, :cond_54

    const/4 v4, 0x1

    aget v4, v0, v4

    if-lez v4, :cond_54

    const/4 v4, 0x1

    aget v0, v0, v4

    move v4, v0

    .line 288
    :goto_38
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 289
    if-le v4, v6, :cond_45

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ne v5, v6, :cond_5a

    .line 290
    :cond_45
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 297
    :goto_4d
    const-string v3, "paths"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v2

    .line 298
    goto :goto_e

    .line 287
    :cond_54
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    move v4, v0

    goto :goto_38

    .line 291
    :cond_5a
    if-eq v4, v7, :cond_62

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ne v4, v7, :cond_7b

    .line 292
    :cond_62
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 293
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_77} :catch_78

    goto :goto_4d

    .line 299
    :catch_78
    move-exception v0

    move-object v0, v1

    .line 300
    goto :goto_e

    :cond_7b
    move-object v0, v3

    .line 295
    goto :goto_4d
.end method

.method static download(Landroid/content/Context;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;)Z
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 252
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 253
    const/4 v1, 0x1

    :goto_7
    iget v3, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->frames:I

    if-gt v1, v3, :cond_31

    .line 254
    sget-object v3, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->frameUrl:Ljava/lang/String;

    const-string v4, "{id}"

    iget-object v5, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{n}"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/PathNorm;->pathOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/PathNorm;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 257
    :cond_31
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 258
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 259
    iget-object v5, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->vb:[F

    array-length v6, v5

    move v1, v0

    :goto_3f
    if-ge v1, v6, :cond_4a

    aget v7, v5, v1

    .line 260
    float-to-double v8, v7

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 262
    :cond_4a
    const-string v1, "vb"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v1, "paths"

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->cacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 266
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 268
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 269
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 270
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_95} :catch_97

    move-result v0

    .line 273
    :goto_96
    return v0

    .line 271
    :catch_97
    move-exception v1

    .line 272
    const-string v2, "library"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_96
.end method

.method public static enabled(Landroid/content/Context;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->load(Landroid/content/Context;)V

    .line 162
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->picks(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 164
    const-class v3, Lcom/isaigu/gymapp/ai/ExerciseLibrary;

    monitor-enter v3

    .line 165
    :try_start_f
    sget-object v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->ALL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_15
    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    .line 166
    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->isEnabled(Landroid/content/Context;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_15

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->builtIn:Z

    if-nez v5, :cond_37

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->cacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 167
    :cond_37
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 170
    :catchall_3b
    move-exception v0

    monitor-exit v3
    :try_end_3d
    .catchall {:try_start_f .. :try_end_3d} :catchall_3b

    throw v0

    :cond_3e
    :try_start_3e
    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3b

    .line 171
    return-object v2
.end method

.method private static fetch(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 306
    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 307
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 308
    const-string v1, "User-Agent"

    const-string v2, "XEMS-Android"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 310
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3d

    .line 311
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_3d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;
    .registers 4

    .prologue
    .line 127
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->load(Landroid/content/Context;)V

    .line 128
    const-class v1, Lcom/isaigu/gymapp/ai/ExerciseLibrary;

    monitor-enter v1

    .line 129
    :try_start_6
    sget-object v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->BY_ID:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    monitor-exit v1

    return-object v0

    .line 130
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public static isEnabled(Landroid/content/Context;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;Ljava/util/Map;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 156
    if-eqz v0, :cond_14

    aget v0, v0, v2

    if-ne v0, v1, :cond_12

    move v0, v1

    :goto_11
    return v0

    :cond_12
    move v0, v2

    goto :goto_11

    :cond_14
    iget-boolean v0, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->builtIn:Z

    goto :goto_11
.end method

.method public static declared-synchronized load(Landroid/content/Context;)V
    .registers 14

    .prologue
    const/16 v12, 0xa

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 83
    const-class v10, Lcom/isaigu/gymapp/ai/ExerciseLibrary;

    monitor-enter v10

    :try_start_7
    sget-boolean v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->loaded:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_157

    if-nez v0, :cond_d

    if-nez p0, :cond_f

    .line 124
    :cond_d
    :goto_d
    monitor-exit v10

    return-void

    .line 87
    :cond_f
    :try_start_f
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "xems/library.json"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 88
    const-string v1, "frames"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->frameUrl:Ljava/lang/String;

    .line 89
    const-string v1, "exercises"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    move v9, v8

    .line 90
    :goto_33
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v9, v0, :cond_137

    .line 91
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 92
    new-instance v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    invoke-direct {v6}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;-><init>()V

    .line 93
    const-string v0, "id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    .line 94
    const-string v0, "bg"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->bg:Ljava/lang/String;

    .line 95
    const-string v0, "en"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->en:Ljava/lang/String;

    .line 96
    const-string v0, "eq"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->eq:Ljava/lang/String;

    .line 97
    const-string v0, "tg"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->tg:Ljava/lang/String;

    .line 98
    const-string v0, "zone"

    const-string v2, "legs"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->zone:Ljava/lang/String;

    .line 99
    const-string v0, "pos"

    const-string v2, "stand"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->pos:Ljava/lang/String;

    .line 100
    const-string v0, "type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->type:Ljava/lang/String;

    .line 101
    const-string v0, "pat"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->pat:Ljava/lang/String;

    .line 102
    const-string v0, "diff"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->diff:I

    .line 103
    const-string v0, "met"

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->met:D

    .line 104
    const-string v0, "mus"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 105
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->mus:[I

    move v0, v8

    .line 106
    :goto_ae
    if-ge v0, v12, :cond_c1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_c1

    .line 107
    iget-object v3, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->mus:[I

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v3, v0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_ae

    .line 109
    :cond_c1
    const-string v0, "how"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->how:Ljava/lang/String;

    .line 110
    const-string v0, "howEn"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->howEn:Ljava/lang/String;

    .line 111
    const-string v0, "vb"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 112
    const/4 v2, 0x4

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x3

    .line 113
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-float v0, v4

    aput v0, v2, v3

    iput-object v2, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->vb:[F

    .line 114
    const-string v0, "n"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->frames:I

    .line 115
    const-string v0, "b"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_135

    move v0, v7

    :goto_113
    iput-boolean v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->builtIn:Z

    .line 116
    sget-object v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->ALL:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->BY_ID:Ljava/util/Map;

    iget-object v1, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    iget-object v1, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->bg:Ljava/lang/String;

    iget-object v2, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->en:Ljava/lang/String;

    iget-object v3, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->pos:Ljava/lang/String;

    iget-wide v4, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->met:D

    iget-object v6, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->mus:[I

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/ai/AutoTemplates;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[I)V

    .line 90
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_33

    :cond_135
    move v0, v8

    .line 115
    goto :goto_113

    .line 120
    :cond_137
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->loaded:Z
    :try_end_13a
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_13a} :catch_13c
    .catchall {:try_start_f .. :try_end_13a} :catchall_157

    goto/16 :goto_d

    .line 121
    :catch_13c
    move-exception v0

    .line 122
    :try_start_13d
    const-string v1, "library"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_155
    .catchall {:try_start_13d .. :try_end_155} :catchall_157

    goto/16 :goto_d

    .line 83
    :catchall_157
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static pending(Landroid/content/Context;)I
    .registers 7

    .prologue
    .line 176
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->load(Landroid/content/Context;)V

    .line 177
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->picks(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 178
    const/4 v1, 0x0

    .line 179
    const-class v3, Lcom/isaigu/gymapp/ai/ExerciseLibrary;

    monitor-enter v3

    .line 180
    :try_start_b
    sget-object v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->ALL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    .line 181
    invoke-static {p0, v0, v2}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->isEnabled(Landroid/content/Context;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_3c

    iget-boolean v5, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->builtIn:Z

    if-nez v5, :cond_3c

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->cacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 182
    add-int/lit8 v0, v1, 0x1

    :goto_35
    move v1, v0

    .line 184
    goto :goto_11

    .line 185
    :cond_37
    monitor-exit v3

    .line 186
    return v1

    .line 185
    :catchall_39
    move-exception v0

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_b .. :try_end_3b} :catchall_39

    throw v0

    :cond_3c
    move v0, v1

    goto :goto_35
.end method

.method static picks(Landroid/content/Context;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 141
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 143
    :try_start_6
    new-instance v2, Lorg/json/JSONArray;

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "picks"

    const-string v5, "[]"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 144
    :goto_17
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_43

    .line 145
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 146
    const-string v4, "id"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    const-string v7, "on"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "frames"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v6

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_3f} :catch_42

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 148
    :catch_42
    move-exception v0

    .line 150
    :cond_43
    return-object v1
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 136
    const-string v0, "xems_library"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static read(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 317
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 318
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 320
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_14

    .line 321
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 323
    :cond_14
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 324
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sync(Landroid/content/Context;Z)V
    .registers 6

    .prologue
    .line 193
    if-eqz p0, :cond_6

    sget-boolean v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->syncing:Z

    if-eqz v0, :cond_7

    .line 202
    :cond_6
    :goto_6
    return-void

    .line 196
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "syncedAt"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 197
    if-nez p1, :cond_22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x1499700

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    .line 200
    :cond_22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->syncing:Z

    .line 201
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Sync;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Sync;-><init>(Landroid/content/Context;)V

    const-string v2, "xems-library"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_6
.end method
