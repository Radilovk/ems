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

.field public static final DEFAULT_VOICE:Ljava/lang/String; = "bg-BG-KalinaNeural"

.field public static final DEVICE:Ljava/lang/String; = "device"

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

.field public static final RATES:[Ljava/lang/String;

.field public static final VOICES:[[Ljava/lang/String;

.field private static app:Landroid/content/Context;

.field private static fallback:Lcom/isaigu/gymapp/ai/CloudVoice$Fallback;

.field private static volatile gen:I

.field private static volatile off:Z

.field private static volatile quotaUntil:J

.field private static volatile track:Landroid/media/AudioTrack;

.field private static worker:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

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

    .line 75
    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "bg-BG-KalinaNeural"

    aput-object v2, v1, v4

    const-string v2, "\u041a\u0430\u043b\u0438\u043d\u0430"

    aput-object v2, v1, v5

    const-string v2, "Kalina"

    aput-object v2, v1, v6

    const-string v2, "f"

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "bg-BG-BorislavNeural"

    aput-object v2, v1, v4

    const-string v2, "\u0411\u043e\u0440\u0438\u0441\u043b\u0430\u0432"

    aput-object v2, v1, v5

    const-string v2, "Borislav"

    aput-object v2, v1, v6

    const-string v2, "m"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "en-US-AvaMultilingualNeural"

    aput-object v2, v1, v4

    const-string v2, "\u0410\u0432\u0430"

    aput-object v2, v1, v5

    const-string v2, "Ava"

    aput-object v2, v1, v6

    const-string v2, "f"

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "en-US-AndrewMultilingualNeural"

    aput-object v2, v1, v4

    const-string v2, "\u0410\u043d\u0434\u0440\u044e"

    aput-object v2, v1, v5

    const-string v2, "Andrew"

    aput-object v2, v1, v6

    const-string v2, "m"

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "de-DE-SeraphinaMultilingualNeural"

    aput-object v2, v1, v4

    const-string v2, "\u0421\u0435\u0440\u0430\u0444\u0438\u043d\u0430"

    aput-object v2, v1, v5

    const-string v2, "Seraphina"

    aput-object v2, v1, v6

    const-string v2, "f"

    aput-object v2, v1, v7

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "de-DE-FlorianMultilingualNeural"

    aput-object v3, v2, v4

    const-string v3, "\u0424\u043b\u043e\u0440\u0438\u0430\u043d"

    aput-object v3, v2, v5

    const-string v3, "Florian"

    aput-object v3, v2, v6

    const-string v3, "m"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->VOICES:[[Ljava/lang/String;

    .line 80
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "slow"

    aput-object v1, v0, v4

    const-string v1, "normal"

    aput-object v1, v0, v5

    const-string v1, "fast"

    aput-object v1, v0, v6

    sput-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->RATES:[Ljava/lang/String;

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

.method public static choose(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 91
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/CloudVoice;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 92
    if-eqz p1, :cond_f

    .line 93
    const-string v1, "pick"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    :cond_f
    if-eqz p2, :cond_16

    .line 96
    const-string v1, "rate"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    :cond_16
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    return-void
.end method

.method static file(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 7

    .prologue
    .line 339
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "voice"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 341
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

    .line 346
    :try_start_1
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    :goto_16
    const/16 v3, 0xc

    if-ge v0, v3, :cond_34

    .line 349
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

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 351
    :cond_34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_39

    move-result-object v0

    .line 353
    :goto_38
    return-object v0

    .line 352
    :catch_39
    move-exception v0

    .line 353
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_38
.end method

.method public static kept(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 423
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "voice"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 424
    if-nez v0, :cond_13

    const/4 v0, 0x0

    :goto_12
    return v0

    :cond_13
    array-length v0, v0

    goto :goto_12
.end method

.method public static limit(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 107
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/CloudVoice;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "limit"

    const v2, 0x73f78

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static month()Ljava/lang/String;
    .registers 3

    .prologue
    .line 117
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 118
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 119
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static noteUsage(Landroid/content/Context;II)V
    .registers 6

    .prologue
    .line 111
    if-ltz p1, :cond_25

    if-lez p2, :cond_25

    .line 112
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/CloudVoice;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "month"

    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->month()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "used"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "limit"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 114
    :cond_25
    return-void
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

    .line 222
    sget-object v2, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/CloudVoice;->voice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 223
    sget-object v3, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/CloudVoice;->rate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->text:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/CloudVoice;->file(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 225
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v5, v6, v12

    if-lez v5, :cond_56

    .line 226
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 228
    :try_start_3a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    .line 229
    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Lcom/isaigu/gymapp/ai/CloudVoice;->stream(Ljava/io/InputStream;Lcom/isaigu/gymapp/ai/CloudVoice$Item;Ljava/io/FileOutputStream;)J
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_51

    move-result-wide v4

    cmp-long v3, v4, v12

    if-lez v3, :cond_4f

    .line 231
    :goto_4a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    move v1, v0

    .line 277
    :cond_4e
    :goto_4e
    return v1

    :cond_4f
    move v0, v1

    .line 229
    goto :goto_4a

    .line 231
    :catchall_51
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 232
    throw v0

    .line 234
    :cond_56
    sget-object v5, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/CloudVoice;->usable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 238
    sget-object v5, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->text:Ljava/lang/String;

    const/16 v9, 0x9c4

    invoke-static {v5, v8, v2, v3, v9}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->openTts(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 239
    if-eqz v2, :cond_4e

    .line 243
    :try_start_6e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 244
    const/16 v5, 0x1ad

    if-ne v3, v5, :cond_8b

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    add-long/2addr v4, v6

    sput-wide v4, Lcom/isaigu/gymapp/ai/CloudVoice;->quotaUntil:J

    .line 246
    const-string v0, "voice"

    const-string v3, "the month\'s free characters are used: the tablet\'s voice for now"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_6e .. :try_end_87} :catchall_15d

    .line 279
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4e

    .line 249
    :cond_8b
    const/16 v5, 0xc8

    if-eq v3, v5, :cond_ab

    .line 250
    :try_start_8f
    const-string v0, "voice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a7
    .catchall {:try_start_8f .. :try_end_a7} :catchall_15d

    .line 279
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4e

    .line 254
    :cond_ab
    :try_start_ab
    const-string v3, "X-Tts-Used"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    const-string v5, "X-Tts-Limit"

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 256
    if-eqz v3, :cond_d0

    if-eqz v5, :cond_d0

    .line 257
    sget-object v8, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v8, v3, v5}, Lcom/isaigu/gymapp/ai/CloudVoice;->noteUsage(Landroid/content/Context;II)V
    :try_end_d0
    .catch Ljava/lang/RuntimeException; {:try_start_ab .. :try_end_d0} :catch_168
    .catchall {:try_start_ab .. :try_end_d0} :catchall_15d

    .line 261
    :cond_d0
    :goto_d0
    :try_start_d0
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ".part"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f1
    .catchall {:try_start_d0 .. :try_end_f1} :catchall_15d

    .line 265
    :try_start_f1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8, p0, v5}, Lcom/isaigu/gymapp/ai/CloudVoice;->stream(Ljava/io/InputStream;Lcom/isaigu/gymapp/ai/CloudVoice$Item;Ljava/io/FileOutputStream;)J
    :try_end_f8
    .catchall {:try_start_f1 .. :try_end_f8} :catchall_158

    move-result-wide v8

    .line 267
    :try_start_f9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 269
    cmp-long v5, v8, v12

    if-lez v5, :cond_162

    iget v5, p0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->gen:I

    sget v10, Lcom/isaigu/gymapp/ai/CloudVoice;->gen:I

    if-ne v5, v10, :cond_162

    .line 270
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 271
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->prune()V

    .line 275
    :goto_10c
    const-string v3, "voice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cloud "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v6, v10, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms \u00b7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v6, 0x2

    div-long v6, v8, v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " samples \u00b7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->text:Ljava/lang/String;

    .line 276
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " chars"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 275
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14e
    .catchall {:try_start_f9 .. :try_end_14e} :catchall_15d

    .line 277
    cmp-long v3, v8, v12

    if-lez v3, :cond_166

    .line 279
    :goto_152
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v1, v0

    .line 277
    goto/16 :goto_4e

    .line 267
    :catchall_158
    move-exception v0

    :try_start_159
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 268
    throw v0
    :try_end_15d
    .catchall {:try_start_159 .. :try_end_15d} :catchall_15d

    .line 279
    :catchall_15d
    move-exception v0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 280
    throw v0

    .line 273
    :cond_162
    :try_start_162
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_165
    .catchall {:try_start_162 .. :try_end_165} :catchall_15d

    goto :goto_10c

    :cond_166
    move v0, v1

    .line 277
    goto :goto_152

    .line 259
    :catch_168
    move-exception v3

    goto/16 :goto_d0
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 428
    const-string v0, "xems_voice"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static preview(Landroid/content/Context;Ljava/lang/String;Lcom/isaigu/gymapp/ai/CloudVoice$Fallback;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    .line 134
    const-string v0, "device"

    sget-object v1, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/CloudVoice;->voice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 135
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->stop()V

    .line 136
    const-string v0, "xems-preview"

    invoke-interface {p2, p1, v0, v2}, Lcom/isaigu/gymapp/ai/CloudVoice$Fallback;->sayLocal(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 141
    :goto_1d
    return-void

    .line 139
    :cond_1e
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/CloudVoice;->quotaUntil:J

    .line 140
    const-string v0, "xems-preview"

    invoke-static {p0, p1, v0, v2, p2}, Lcom/isaigu/gymapp/ai/CloudVoice;->speak(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/CloudVoice$Fallback;)V

    goto :goto_1d
.end method

.method static prune()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 359
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "voice"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 360
    if-nez v4, :cond_15

    .line 378
    :cond_14
    return-void

    .line 363
    :cond_15
    const-wide/16 v2, 0x0

    .line 364
    array-length v5, v4

    move v1, v0

    :goto_19
    if-ge v1, v5, :cond_25

    aget-object v6, v4, v1

    .line 365
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 367
    :cond_25
    const-wide/32 v6, 0x3200000

    cmp-long v1, v2, v6

    if-lez v1, :cond_14

    .line 370
    new-instance v1, Lcom/isaigu/gymapp/ai/CloudVoice$ByAge;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/CloudVoice$ByAge;-><init>()V

    invoke-static {v4, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 371
    array-length v1, v4

    :goto_35
    if-ge v0, v1, :cond_14

    aget-object v5, v4, v0

    .line 372
    const-wide/32 v6, 0x2800000

    cmp-long v6, v2, v6

    if-lez v6, :cond_14

    .line 375
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 376
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_35
.end method

.method public static rate(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 87
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/CloudVoice;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "rate"

    const-string v2, "normal"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setOff(Z)V
    .registers 1

    .prologue
    .line 145
    sput-boolean p0, Lcom/isaigu/gymapp/ai/CloudVoice;->off:Z

    .line 146
    return-void
.end method

.method public static declared-synchronized speak(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/CloudVoice$Fallback;)V
    .registers 10

    .prologue
    .line 149
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

    .line 163
    :cond_11
    :goto_11
    monitor-exit v1

    return-void

    .line 152
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    .line 153
    sput-object p4, Lcom/isaigu/gymapp/ai/CloudVoice;->fallback:Lcom/isaigu/gymapp/ai/CloudVoice$Fallback;

    .line 154
    if-eqz p3, :cond_20

    .line 155
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->stopNow()V

    .line 157
    :cond_20
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->QUEUE:Ljava/util/LinkedList;

    new-instance v2, Lcom/isaigu/gymapp/ai/CloudVoice$Item;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/ai/CloudVoice;->gen:I

    invoke-direct {v2, v3, p2, v4}, Lcom/isaigu/gymapp/ai/CloudVoice$Item;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 158
    const-class v0, Lcom/isaigu/gymapp/ai/CloudVoice;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 159
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->worker:Ljava/lang/Thread;

    if-eqz v0, :cond_41

    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_11

    .line 160
    :cond_41
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/isaigu/gymapp/ai/CloudVoice$Worker;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/CloudVoice$Worker;-><init>()V

    const-string v3, "xems-voice"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->worker:Ljava/lang/Thread;

    .line 161
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_54
    .catchall {:try_start_13 .. :try_end_54} :catchall_55

    goto :goto_11

    .line 149
    :catchall_55
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized stop()V
    .registers 2

    .prologue
    .line 167
    const-class v0, Lcom/isaigu/gymapp/ai/CloudVoice;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->stopNow()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 168
    monitor-exit v0

    return-void

    .line 167
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static stopNow()V
    .registers 1

    .prologue
    .line 171
    sget v0, Lcom/isaigu/gymapp/ai/CloudVoice;->gen:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/ai/CloudVoice;->gen:I

    .line 172
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->QUEUE:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 173
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->track:Landroid/media/AudioTrack;

    .line 174
    if-eqz v0, :cond_15

    .line 176
    :try_start_f
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 177
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_15} :catch_16

    .line 181
    :cond_15
    :goto_15
    return-void

    .line 178
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
    .line 285
    const/16 v0, 0x5dc0

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 286
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5dc0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/16 v6, 0x5dc0

    .line 287
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 288
    sput-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->track:Landroid/media/AudioTrack;

    .line 289
    const-wide/16 v6, 0x0

    .line 290
    const/4 v3, 0x0

    .line 291
    const/4 v2, 0x0

    .line 293
    const/16 v1, 0x12c0

    :try_start_21
    new-array v8, v1, [B

    .line 295
    const/4 v1, 0x0

    move v5, v1

    .line 296
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

    .line 297
    if-eqz v2, :cond_43

    .line 298
    const/4 v2, 0x0

    aput-byte v3, v8, v2

    .line 299
    add-int/lit8 v1, v1, 0x1

    .line 300
    const/4 v2, 0x0

    .line 302
    :cond_43
    and-int/lit8 v4, v1, 0x1

    const/4 v9, 0x1

    if-ne v4, v9, :cond_4f

    .line 303
    add-int/lit8 v2, v1, -0x1

    aget-byte v3, v8, v2

    .line 304
    const/4 v2, 0x1

    .line 305
    add-int/lit8 v1, v1, -0x1

    .line 307
    :cond_4f
    if-eqz p2, :cond_55

    .line 308
    const/4 v4, 0x0

    invoke-virtual {p2, v8, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 310
    :cond_55
    const/4 v4, 0x0

    invoke-virtual {v0, v8, v4, v1}, Landroid/media/AudioTrack;->write([BII)I

    .line 311
    int-to-long v10, v1

    add-long/2addr v6, v10

    .line 312
    if-nez v5, :cond_25

    .line 313
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 314
    const/4 v1, 0x1

    move v5, v1

    goto :goto_25

    .line 296
    :cond_63
    const/4 v1, 0x0

    move v4, v1

    goto :goto_2f

    :cond_66
    const/4 v1, 0x0

    goto :goto_33

    .line 318
    :cond_68
    const-wide/16 v2, 0x2

    div-long v2, v6, v2

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x5dc0

    div-long/2addr v8, v10

    add-long/2addr v4, v8

    const-wide/16 v8, 0x5dc

    add-long/2addr v4, v8

    .line 320
    :goto_7a
    iget v1, p1, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->gen:I

    sget v8, Lcom/isaigu/gymapp/ai/CloudVoice;->gen:I

    if-ne v1, v8, :cond_97

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v8, v4

    if-gez v1, :cond_97

    .line 321
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I
    :try_end_8b
    .catchall {:try_start_21 .. :try_end_8b} :catchall_a7

    move-result v1

    int-to-long v8, v1

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    .line 322
    cmp-long v1, v8, v2

    if-ltz v1, :cond_a1

    .line 329
    :cond_97
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/ai/CloudVoice;->track:Landroid/media/AudioTrack;

    .line 331
    :try_start_9a
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9d} :catch_b2

    .line 334
    :goto_9d
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 327
    return-wide v6

    .line 325
    :cond_a1
    const-wide/16 v8, 0x28

    :try_start_a3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a7

    goto :goto_7a

    .line 329
    :catchall_a7
    move-exception v1

    const/4 v2, 0x0

    sput-object v2, Lcom/isaigu/gymapp/ai/CloudVoice;->track:Landroid/media/AudioTrack;

    .line 331
    :try_start_ab
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_ae} :catch_b4

    .line 334
    :goto_ae
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 335
    throw v1

    .line 332
    :catch_b2
    move-exception v1

    goto :goto_9d

    :catch_b4
    move-exception v2

    goto :goto_ae
.end method

.method public static usable(Landroid/content/Context;)Z
    .registers 5

    .prologue
    .line 124
    if-eqz p0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    .line 127
    :cond_c
    sget-boolean v0, Lcom/isaigu/gymapp/ai/CloudVoice;->off:Z

    if-nez v0, :cond_34

    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    if-eqz v0, :cond_34

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->serverConfigured()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/isaigu/gymapp/ai/CloudVoice;->quotaUntil:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_34

    const-string v0, "device"

    sget-object v1, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    .line 128
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/CloudVoice;->voice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x1

    .line 127
    :goto_33
    return v0

    .line 128
    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public static used(Landroid/content/Context;)I
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 103
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/CloudVoice;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "month"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->month()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {p0}, Lcom/isaigu/gymapp/ai/CloudVoice;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "used"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_21
    return v0
.end method

.method public static voice(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 83
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/CloudVoice;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pick"

    const-string v2, "bg-BG-KalinaNeural"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
