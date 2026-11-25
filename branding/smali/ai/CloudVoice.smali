.class public final Lcom/isaigu/gymapp/ai/CloudVoice;
.super Ljava/lang/Object;
.source "CloudVoice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/CloudVoice$Fallback;,
        Lcom/isaigu/gymapp/ai/CloudVoice$Item;,
        Lcom/isaigu/gymapp/ai/CloudVoice$Worker;,
        Lcom/isaigu/gymapp/ai/CloudVoice$ByAge;,
        Lcom/isaigu/gymapp/ai/CloudVoice$Done;,
        Lcom/isaigu/gymapp/ai/CloudVoice$Local;
    }
.end annotation


# static fields
.field static final CACHE_BYTES:J = 0x3200000L

.field static final FIRST_MS:I = 0x9c4

.field private static final MAIN:Landroid/os/Handler;

.field static final PREFS:Ljava/lang/String; = "xems_voice"

.field private static final QUEUE:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/isaigu/gymapp/ai/CloudVoice$Item;",
            ">;"
        }
    .end annotation
.end field

.field static final QUOTA_PAUSE_MS:J = 0x36ee80L

.field static final RATE:I = 0x5dc0

.field private static app:Landroid/content/Context;

.field private static fallback:Lcom/isaigu/gymapp/ai/CloudVoice$Fallback;

.field private static volatile gen:I

.field private static volatile off:Z

.field private static volatile quotaUntil:J

.field private static volatile track:Landroid/media/AudioTrack;

.field private static worker:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->MAIN:Landroid/os/Handler;

    .line 49
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->QUEUE:Ljava/util/LinkedList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/LinkedList;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->QUEUE:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 1

    .prologue
    .line 29
    sput-object p0, Lcom/isaigu/gymapp/ai/CloudVoice;->worker:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 29
    sget v0, Lcom/isaigu/gymapp/ai/CloudVoice;->gen:I

    return v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Lcom/isaigu/gymapp/ai/CloudVoice$Fallback;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->fallback:Lcom/isaigu/gymapp/ai/CloudVoice$Fallback;

    return-object v0
.end method

.method static file(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 7

    .prologue
    .line 267
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "voice"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 268
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 269
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4a

    :goto_22
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/CloudVoice;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".pcm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_4a
    const-string p0, "default"

    goto :goto_22
.end method

.method static hash(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 274
    :try_start_1
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    :goto_16
    const/16 v3, 0xc

    if-ge v0, v3, :cond_34

    .line 277
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, v1, v0

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 279
    :cond_34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_39

    move-result-object v0

    .line 281
    :goto_38
    return-object v0

    .line 280
    :catch_39
    move-exception v0

    .line 281
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_38
.end method

.method public static kept(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 351
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "voice"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 352
    if-nez v0, :cond_13

    const/4 v0, 0x0

    :goto_12
    return v0

    :cond_13
    array-length v0, v0

    goto :goto_12
.end method

.method static play(Lcom/isaigu/gymapp/ai/CloudVoice$Item;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const-wide/16 v12, 0x0

    const/4 v1, 0x0

    .line 154
    sget-object v2, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    const-string v3, "xems_voice"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "voice"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->text:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/ai/CloudVoice;->file(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 156
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v4, v4, v12

    if-lez v4, :cond_43

    .line 157
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 159
    :try_start_27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    .line 160
    const/4 v2, 0x0

    invoke-static {v3, p0, v2}, Lcom/isaigu/gymapp/ai/CloudVoice;->stream(Ljava/io/InputStream;Lcom/isaigu/gymapp/ai/CloudVoice$Item;Ljava/io/FileOutputStream;)J
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_3e

    move-result-wide v4

    cmp-long v2, v4, v12

    if-lez v2, :cond_3c

    .line 162
    :goto_37
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    move v1, v0

    .line 205
    :cond_3b
    :goto_3b
    return v1

    :cond_3c
    move v0, v1

    .line 160
    goto :goto_37

    .line 162
    :catchall_3e
    move-exception v0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 163
    throw v0

    .line 165
    :cond_43
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->usable()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 169
    sget-object v6, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    iget-object v7, p0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->text:Ljava/lang/String;

    const/16 v8, 0x9c4

    invoke-static {v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->openTts(Landroid/content/Context;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object v6

    .line 170
    if-eqz v6, :cond_3b

    .line 174
    :try_start_59
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 175
    const/16 v8, 0x1ad

    if-ne v7, v8, :cond_76

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    sput-wide v2, Lcom/isaigu/gymapp/ai/CloudVoice;->quotaUntil:J

    .line 177
    const-string v0, "voice"

    const-string v2, "the month\'s free characters are used: the tablet\'s voice for now"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_59 .. :try_end_72} :catchall_14d

    .line 207
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3b

    .line 180
    :cond_76
    const/16 v8, 0xc8

    if-eq v7, v8, :cond_96

    .line 181
    :try_start_7a
    const-string v0, "voice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_92
    .catchall {:try_start_7a .. :try_end_92} :catchall_14d

    .line 207
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3b

    .line 184
    :cond_96
    :try_start_96
    const-string v7, "X-Voice"

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 185
    if-eqz v7, :cond_c0

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c0

    .line 186
    sget-object v2, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    const-string v3, "xems_voice"

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "voice"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 187
    iget-object v2, p0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->text:Ljava/lang/String;

    invoke-static {v7, v2}, Lcom/isaigu/gymapp/ai/CloudVoice;->file(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 189
    :cond_c0
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".part"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_e1
    .catchall {:try_start_96 .. :try_end_e1} :catchall_14d

    .line 193
    :try_start_e1
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8, p0, v7}, Lcom/isaigu/gymapp/ai/CloudVoice;->stream(Ljava/io/InputStream;Lcom/isaigu/gymapp/ai/CloudVoice$Item;Ljava/io/FileOutputStream;)J
    :try_end_e8
    .catchall {:try_start_e1 .. :try_end_e8} :catchall_148

    move-result-wide v8

    .line 195
    :try_start_e9
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 197
    cmp-long v7, v8, v12

    if-lez v7, :cond_152

    iget v7, p0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->gen:I

    sget v10, Lcom/isaigu/gymapp/ai/CloudVoice;->gen:I

    if-ne v7, v10, :cond_152

    .line 198
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 199
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->prune()V

    .line 203
    :goto_fc
    const-string v2, "voice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cloud "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x2

    div-long v4, v8, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " samples \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->text:Ljava/lang/String;

    .line 204
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " chars"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13e
    .catchall {:try_start_e9 .. :try_end_13e} :catchall_14d

    .line 205
    cmp-long v2, v8, v12

    if-lez v2, :cond_156

    .line 207
    :goto_142
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    move v1, v0

    .line 205
    goto/16 :goto_3b

    .line 195
    :catchall_148
    move-exception v0

    :try_start_149
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 196
    throw v0
    :try_end_14d
    .catchall {:try_start_149 .. :try_end_14d} :catchall_14d

    .line 207
    :catchall_14d
    move-exception v0

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 208
    throw v0

    .line 201
    :cond_152
    :try_start_152
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_155
    .catchall {:try_start_152 .. :try_end_155} :catchall_14d

    goto :goto_fc

    :cond_156
    move v0, v1

    .line 205
    goto :goto_142
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 356
    const-string v0, "xems_voice"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static prune()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 287
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "voice"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 288
    if-nez v4, :cond_15

    .line 306
    :cond_14
    return-void

    .line 291
    :cond_15
    const-wide/16 v2, 0x0

    .line 292
    array-length v5, v4

    move v1, v0

    :goto_19
    if-ge v1, v5, :cond_25

    aget-object v6, v4, v1

    .line 293
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 295
    :cond_25
    const-wide/32 v6, 0x3200000

    cmp-long v1, v2, v6

    if-lez v1, :cond_14

    .line 298
    new-instance v1, Lcom/isaigu/gymapp/ai/CloudVoice$ByAge;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/CloudVoice$ByAge;-><init>()V

    invoke-static {v4, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 299
    array-length v1, v4

    :goto_35
    if-ge v0, v1, :cond_14

    aget-object v5, v4, v0

    .line 300
    const-wide/32 v6, 0x2800000

    cmp-long v6, v2, v6

    if-lez v6, :cond_14

    .line 303
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 304
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 299
    add-int/lit8 v0, v0, 0x1

    goto :goto_35
.end method

.method public static setOff(Z)V
    .registers 1

    .prologue
    .line 77
    sput-boolean p0, Lcom/isaigu/gymapp/ai/CloudVoice;->off:Z

    .line 78
    return-void
.end method

.method public static declared-synchronized speak(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/CloudVoice$Fallback;)V
    .registers 10

    .prologue
    .line 81
    const-class v1, Lcom/isaigu/gymapp/ai/CloudVoice;

    monitor-enter v1

    if-eqz p0, :cond_11

    if-eqz p1, :cond_11

    :try_start_7
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_55

    move-result v0

    if-nez v0, :cond_13

    .line 95
    :cond_11
    :goto_11
    monitor-exit v1

    return-void

    .line 84
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    .line 85
    sput-object p4, Lcom/isaigu/gymapp/ai/CloudVoice;->fallback:Lcom/isaigu/gymapp/ai/CloudVoice$Fallback;

    .line 86
    if-eqz p3, :cond_20

    .line 87
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->stopNow()V

    .line 89
    :cond_20
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->QUEUE:Ljava/util/LinkedList;

    new-instance v2, Lcom/isaigu/gymapp/ai/CloudVoice$Item;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/ai/CloudVoice;->gen:I

    invoke-direct {v2, v3, p2, v4}, Lcom/isaigu/gymapp/ai/CloudVoice$Item;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 90
    const-class v0, Lcom/isaigu/gymapp/ai/CloudVoice;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 91
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->worker:Ljava/lang/Thread;

    if-eqz v0, :cond_41

    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_11

    .line 92
    :cond_41
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/isaigu/gymapp/ai/CloudVoice$Worker;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/CloudVoice$Worker;-><init>()V

    const-string v3, "xems-voice"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->worker:Ljava/lang/Thread;

    .line 93
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_54
    .catchall {:try_start_13 .. :try_end_54} :catchall_55

    goto :goto_11

    .line 81
    :catchall_55
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized stop()V
    .registers 2

    .prologue
    .line 99
    const-class v0, Lcom/isaigu/gymapp/ai/CloudVoice;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->stopNow()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 100
    monitor-exit v0

    return-void

    .line 99
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static stopNow()V
    .registers 1

    .prologue
    .line 103
    sget v0, Lcom/isaigu/gymapp/ai/CloudVoice;->gen:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/ai/CloudVoice;->gen:I

    .line 104
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->QUEUE:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 105
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->track:Landroid/media/AudioTrack;

    .line 106
    if-eqz v0, :cond_15

    .line 108
    :try_start_f
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 109
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_15} :catch_16

    .line 113
    :cond_15
    :goto_15
    return-void

    .line 110
    :catch_16
    move-exception v0

    goto :goto_15
.end method

.method static stream(Ljava/io/InputStream;Lcom/isaigu/gymapp/ai/CloudVoice$Item;Ljava/io/FileOutputStream;)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 213
    const/16 v0, 0x5dc0

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 214
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5dc0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/16 v6, 0x5dc0

    .line 215
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 216
    sput-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->track:Landroid/media/AudioTrack;

    .line 217
    const-wide/16 v6, 0x0

    .line 218
    const/4 v3, 0x0

    .line 219
    const/4 v2, 0x0

    .line 221
    const/16 v1, 0x12c0

    :try_start_21
    new-array v8, v1, [B

    .line 223
    const/4 v1, 0x0

    move v5, v1

    .line 224
    :cond_25
    :goto_25
    iget v1, p1, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->gen:I

    sget v4, Lcom/isaigu/gymapp/ai/CloudVoice;->gen:I

    if-ne v1, v4, :cond_68

    if-eqz v2, :cond_63

    const/4 v1, 0x1

    move v4, v1

    :goto_2f
    array-length v9, v8

    if-eqz v2, :cond_66

    const/4 v1, 0x1

    :goto_33
    sub-int v1, v9, v1

    invoke-virtual {p0, v8, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_68

    .line 225
    if-eqz v2, :cond_43

    .line 226
    const/4 v2, 0x0

    aput-byte v3, v8, v2

    .line 227
    add-int/lit8 v1, v1, 0x1

    .line 228
    const/4 v2, 0x0

    .line 230
    :cond_43
    and-int/lit8 v4, v1, 0x1

    const/4 v9, 0x1

    if-ne v4, v9, :cond_4f

    .line 231
    add-int/lit8 v2, v1, -0x1

    aget-byte v3, v8, v2

    .line 232
    const/4 v2, 0x1

    .line 233
    add-int/lit8 v1, v1, -0x1

    .line 235
    :cond_4f
    if-eqz p2, :cond_55

    .line 236
    const/4 v4, 0x0

    invoke-virtual {p2, v8, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 238
    :cond_55
    const/4 v4, 0x0

    invoke-virtual {v0, v8, v4, v1}, Landroid/media/AudioTrack;->write([BII)I

    .line 239
    int-to-long v10, v1

    add-long/2addr v6, v10

    .line 240
    if-nez v5, :cond_25

    .line 241
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 242
    const/4 v1, 0x1

    move v5, v1

    goto :goto_25

    .line 224
    :cond_63
    const/4 v1, 0x0

    move v4, v1

    goto :goto_2f

    :cond_66
    const/4 v1, 0x0

    goto :goto_33

    .line 246
    :cond_68
    const-wide/16 v2, 0x2

    div-long v2, v6, v2

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x5dc0

    div-long/2addr v8, v10

    add-long/2addr v4, v8

    const-wide/16 v8, 0x5dc

    add-long/2addr v4, v8

    .line 248
    :goto_7a
    iget v1, p1, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->gen:I

    sget v8, Lcom/isaigu/gymapp/ai/CloudVoice;->gen:I

    if-ne v1, v8, :cond_97

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v8, v4

    if-gez v1, :cond_97

    .line 249
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I
    :try_end_8b
    .catchall {:try_start_21 .. :try_end_8b} :catchall_a7

    move-result v1

    int-to-long v8, v1

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    .line 250
    cmp-long v1, v8, v2

    if-ltz v1, :cond_a1

    .line 257
    :cond_97
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/ai/CloudVoice;->track:Landroid/media/AudioTrack;

    .line 259
    :try_start_9a
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9d} :catch_b2

    .line 262
    :goto_9d
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 255
    return-wide v6

    .line 253
    :cond_a1
    const-wide/16 v8, 0x28

    :try_start_a3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a7

    goto :goto_7a

    .line 257
    :catchall_a7
    move-exception v1

    const/4 v2, 0x0

    sput-object v2, Lcom/isaigu/gymapp/ai/CloudVoice;->track:Landroid/media/AudioTrack;

    .line 259
    :try_start_ab
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_ae} :catch_b4

    .line 262
    :goto_ae
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 263
    throw v1

    .line 260
    :catch_b2
    move-exception v1

    goto :goto_9d

    :catch_b4
    move-exception v2

    goto :goto_ae
.end method

.method public static usable()Z
    .registers 4

    .prologue
    .line 72
    sget-boolean v0, Lcom/isaigu/gymapp/ai/CloudVoice;->off:Z

    if-nez v0, :cond_16

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/ai/CloudVoice;->quotaUntil:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
