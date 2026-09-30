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

.field static final FIX_ASSET:Ljava/lang/String; = "xems/frames-fix.json"

.field static final PREFS:Ljava/lang/String; = "xems_library"

.field static final SYNC_EVERY_MS:J = 0x1499700L

.field private static fixes:Lorg/json/JSONObject;

.field private static frameUrl:Ljava/lang/String;

.field private static volatile loaded:Z

.field private static volatile syncing:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->ALL:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->BY_ID:Ljava/util/Map;

    .line 81
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->frameUrl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 32
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/List;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->ALL:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .prologue
    .line 32
    sput-boolean p0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->syncing:Z

    return p0
.end method

.method static cacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .prologue
    .line 251
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
    .registers 11

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 285
    :try_start_4
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->cacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 286
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_10

    move-object v0, v1

    .line 312
    :goto_f
    return-object v0

    .line 289
    :cond_10
    new-instance v2, Lorg/json/JSONObject;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v4}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 290
    const-string v3, "paths"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 291
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->fixes(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v4

    .line 292
    :goto_28
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_54

    .line 293
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 294
    if-eqz v5, :cond_51

    .line 295
    invoke-virtual {v3, v0, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 292
    :cond_51
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 298
    :cond_54
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->picks(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 299
    if-eqz v0, :cond_85

    const/4 v4, 0x1

    aget v4, v0, v4

    if-lez v4, :cond_85

    const/4 v4, 0x1

    aget v0, v0, v4

    move v4, v0

    .line 300
    :goto_69
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 301
    if-le v4, v7, :cond_76

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ne v5, v7, :cond_8b

    .line 302
    :cond_76
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 309
    :goto_7e
    const-string v3, "paths"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v0, v2

    .line 310
    goto :goto_f

    .line 299
    :cond_85
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    move v4, v0

    goto :goto_69

    .line 303
    :cond_8b
    if-eq v4, v8, :cond_93

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ne v4, v8, :cond_ad

    .line 304
    :cond_93
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 305
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_a8} :catch_a9

    goto :goto_7e

    .line 311
    :catch_a9
    move-exception v0

    move-object v0, v1

    .line 312
    goto/16 :goto_f

    :cond_ad
    move-object v0, v3

    .line 307
    goto :goto_7e
.end method

.method static download(Landroid/content/Context;Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;)Z
    .registers 12

    .prologue
    const/4 v0, 0x0

    .line 257
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 258
    const/4 v1, 0x1

    :goto_7
    iget v3, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->frames:I

    if-gt v1, v3, :cond_31

    .line 259
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

    .line 260
    invoke-static {v3}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->fetch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/PathNorm;->pathOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/PathNorm;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 258
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 262
    :cond_31
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 263
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 264
    iget-object v5, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->vb:[F

    array-length v6, v5

    move v1, v0

    :goto_3f
    if-ge v1, v6, :cond_4a

    aget v7, v5, v1

    .line 265
    float-to-double v8, v7

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    .line 267
    :cond_4a
    const-string v1, "vb"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v1, "paths"

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    iget-object v1, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->cacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 270
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 271
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

    .line 272
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 273
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 274
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 275
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_95} :catch_97

    move-result v0

    .line 278
    :goto_96
    return v0

    .line 276
    :catch_97
    move-exception v1

    .line 277
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
    .line 166
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->load(Landroid/content/Context;)V

    .line 167
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->picks(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    .line 168
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 169
    const-class v3, Lcom/isaigu/gymapp/ai/ExerciseLibrary;

    monitor-enter v3

    .line 170
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

    .line 171
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

    .line 172
    :cond_37
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 175
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

    .line 176
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
    .line 328
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 329
    const/16 v1, 0x3a98

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 330
    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 331
    const-string v1, "User-Agent"

    const-string v2, "XEMS-Android"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 333
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3d

    .line 334
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

    .line 336
    :cond_3d
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized fixes(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 317
    const-class v1, Lcom/isaigu/gymapp/ai/ExerciseLibrary;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->fixes:Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_29

    if-nez v0, :cond_1c

    .line 319
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "xems/frames-fix.json"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->read(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->fixes:Lorg/json/JSONObject;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_1c} :catch_20
    .catchall {:try_start_7 .. :try_end_1c} :catchall_29

    .line 324
    :cond_1c
    :goto_1c
    :try_start_1c
    sget-object v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->fixes:Lorg/json/JSONObject;
    :try_end_1e
    .catchall {:try_start_1c .. :try_end_1e} :catchall_29

    monitor-exit v1

    return-object v0

    .line 320
    :catch_20
    move-exception v0

    .line 321
    :try_start_21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->fixes:Lorg/json/JSONObject;
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_29

    goto :goto_1c

    .line 317
    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;
    .registers 4

    .prologue
    .line 132
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->load(Landroid/content/Context;)V

    .line 133
    const-class v1, Lcom/isaigu/gymapp/ai/ExerciseLibrary;

    monitor-enter v1

    .line 134
    :try_start_6
    sget-object v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->BY_ID:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    monitor-exit v1

    return-object v0

    .line 135
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

    .line 160
    iget-object v0, p1, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 161
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

    .line 88
    const-class v10, Lcom/isaigu/gymapp/ai/ExerciseLibrary;

    monitor-enter v10

    :try_start_7
    sget-boolean v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->loaded:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_157

    if-nez v0, :cond_d

    if-nez p0, :cond_f

    .line 129
    :cond_d
    :goto_d
    monitor-exit v10

    return-void

    .line 92
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

    .line 93
    const-string v1, "frames"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->frameUrl:Ljava/lang/String;

    .line 94
    const-string v1, "exercises"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    move v9, v8

    .line 95
    :goto_33
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v9, v0, :cond_137

    .line 96
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 97
    new-instance v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;

    invoke-direct {v6}, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;-><init>()V

    .line 98
    const-string v0, "id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    .line 99
    const-string v0, "bg"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->bg:Ljava/lang/String;

    .line 100
    const-string v0, "en"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->en:Ljava/lang/String;

    .line 101
    const-string v0, "eq"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->eq:Ljava/lang/String;

    .line 102
    const-string v0, "tg"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->tg:Ljava/lang/String;

    .line 103
    const-string v0, "zone"

    const-string v2, "legs"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->zone:Ljava/lang/String;

    .line 104
    const-string v0, "pos"

    const-string v2, "stand"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->pos:Ljava/lang/String;

    .line 105
    const-string v0, "type"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->type:Ljava/lang/String;

    .line 106
    const-string v0, "pat"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->pat:Ljava/lang/String;

    .line 107
    const-string v0, "diff"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->diff:I

    .line 108
    const-string v0, "met"

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->met:D

    .line 109
    const-string v0, "mus"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 110
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->mus:[I

    move v0, v8

    .line 111
    :goto_ae
    if-ge v0, v12, :cond_c1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_c1

    .line 112
    iget-object v3, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->mus:[I

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v3, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_ae

    .line 114
    :cond_c1
    const-string v0, "how"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->how:Ljava/lang/String;

    .line 115
    const-string v0, "howEn"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->howEn:Ljava/lang/String;

    .line 116
    const-string v0, "vb"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 117
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

    .line 118
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-float v0, v4

    aput v0, v2, v3

    iput-object v2, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->vb:[F

    .line 119
    const-string v0, "n"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->frames:I

    .line 120
    const-string v0, "b"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_135

    move v0, v7

    :goto_113
    iput-boolean v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->builtIn:Z

    .line 121
    sget-object v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->ALL:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->BY_ID:Ljava/util/Map;

    iget-object v1, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->id:Ljava/lang/String;

    iget-object v1, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->bg:Ljava/lang/String;

    iget-object v2, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->en:Ljava/lang/String;

    iget-object v3, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->pos:Ljava/lang/String;

    iget-wide v4, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->met:D

    iget-object v6, v6, Lcom/isaigu/gymapp/ai/ExerciseLibrary$Entry;->mus:[I

    invoke-static/range {v0 .. v6}, Lcom/isaigu/gymapp/ai/AutoTemplates;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D[I)V

    .line 95
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_33

    :cond_135
    move v0, v8

    .line 120
    goto :goto_113

    .line 125
    :cond_137
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->loaded:Z
    :try_end_13a
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_13a} :catch_13c
    .catchall {:try_start_f .. :try_end_13a} :catchall_157

    goto/16 :goto_d

    .line 126
    :catch_13c
    move-exception v0

    .line 127
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

    .line 88
    :catchall_157
    move-exception v0

    monitor-exit v10

    throw v0
.end method

.method public static pending(Landroid/content/Context;)I
    .registers 7

    .prologue
    .line 181
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->load(Landroid/content/Context;)V

    .line 182
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->picks(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 183
    const/4 v1, 0x0

    .line 184
    const-class v3, Lcom/isaigu/gymapp/ai/ExerciseLibrary;

    monitor-enter v3

    .line 185
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

    .line 186
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

    .line 187
    add-int/lit8 v0, v1, 0x1

    :goto_35
    move v1, v0

    .line 189
    goto :goto_11

    .line 190
    :cond_37
    monitor-exit v3

    .line 191
    return v1

    .line 190
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

    .line 146
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 148
    :try_start_6
    new-instance v2, Lorg/json/JSONArray;

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "picks"

    const-string v5, "[]"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 149
    :goto_17
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_43

    .line 150
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 151
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

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 153
    :catch_42
    move-exception v0

    .line 155
    :cond_43
    return-object v1
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 141
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
    .line 340
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 341
    const/16 v1, 0x4000

    new-array v1, v1, [B

    .line 343
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_14

    .line 344
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_9

    .line 346
    :cond_14
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 347
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sync(Landroid/content/Context;Z)V
    .registers 6

    .prologue
    .line 198
    if-eqz p0, :cond_6

    sget-boolean v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->syncing:Z

    if-eqz v0, :cond_7

    .line 207
    :cond_6
    :goto_6
    return-void

    .line 201
    :cond_7
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "syncedAt"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 202
    if-nez p1, :cond_22

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x1499700

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    .line 205
    :cond_22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/ai/ExerciseLibrary;->syncing:Z

    .line 206
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
