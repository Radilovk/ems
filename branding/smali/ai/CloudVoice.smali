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

.field private static volatile playing:Z

.field private static volatile quotaUntil:J

.field private static volatile track:Landroid/media/AudioTrack;

.field private static worker:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

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
    const/16 v0, 0xc

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "bg-BG-KalinaNeural"

    aput-object v2, v1, v4

    const-string v2, "\u041a\u0430\u043b\u0438\u043d\u0430"

    aput-object v2, v1, v5

    const-string v2, "Kalina"

    aput-object v2, v1, v6

    const-string v2, "f"

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "bg-BG-BorislavNeural"

    aput-object v2, v1, v4

    const-string v2, "\u0411\u043e\u0440\u0438\u0441\u043b\u0430\u0432"

    aput-object v2, v1, v5

    const-string v2, "Borislav"

    aput-object v2, v1, v6

    const-string v2, "m"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "en-US-AvaMultilingualNeural"

    aput-object v2, v1, v4

    const-string v2, "\u0410\u0432\u0430"

    aput-object v2, v1, v5

    const-string v2, "Ava"

    aput-object v2, v1, v6

    const-string v2, "f"

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "en-US-AndrewMultilingualNeural"

    aput-object v2, v1, v4

    const-string v2, "\u0410\u043d\u0434\u0440\u044e"

    aput-object v2, v1, v5

    const-string v2, "Andrew"

    aput-object v2, v1, v6

    const-string v2, "m"

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "de-DE-SeraphinaMultilingualNeural"

    aput-object v2, v1, v4

    const-string v2, "\u0421\u0435\u0440\u0430\u0444\u0438\u043d\u0430"

    aput-object v2, v1, v5

    const-string v2, "Seraphina"

    aput-object v2, v1, v6

    const-string v2, "f"

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "de-DE-FlorianMultilingualNeural"

    aput-object v3, v2, v4

    const-string v3, "\u0424\u043b\u043e\u0440\u0438\u0430\u043d"

    aput-object v3, v2, v5

    const-string v3, "Florian"

    aput-object v3, v2, v6

    const-string v3, "m"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "bg-BG-Chirp3-HD-Charon"

    aput-object v3, v2, v4

    const-string v3, "\u0425\u0430\u0440\u043e\u043d HD"

    aput-object v3, v2, v5

    const-string v3, "Charon HD"

    aput-object v3, v2, v6

    const-string v3, "m"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "bg-BG-Chirp3-HD-Kore"

    aput-object v3, v2, v4

    const-string v3, "\u041a\u043e\u0440\u0430 HD"

    aput-object v3, v2, v5

    const-string v3, "Kore HD"

    aput-object v3, v2, v6

    const-string v3, "f"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "bg-BG-Chirp3-HD-Orus"

    aput-object v3, v2, v4

    const-string v3, "\u041e\u0440\u0443\u0441 HD"

    aput-object v3, v2, v5

    const-string v3, "Orus HD"

    aput-object v3, v2, v6

    const-string v3, "m"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "bg-BG-Chirp3-HD-Aoede"

    aput-object v3, v2, v4

    const-string v3, "\u0410\u043e\u0439\u0434\u0430 HD"

    aput-object v3, v2, v5

    const-string v3, "Aoede HD"

    aput-object v3, v2, v6

    const-string v3, "f"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "bg-BG-Chirp3-HD-Enceladus"

    aput-object v3, v2, v4

    const-string v3, "\u0415\u043d\u0446\u0435\u043b\u0430\u0434 HD"

    aput-object v3, v2, v5

    const-string v3, "Enceladus HD"

    aput-object v3, v2, v6

    const-string v3, "m"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "bg-BG-Chirp3-HD-Iapetus"

    aput-object v3, v2, v4

    const-string v3, "\u042f\u043f\u0435\u0442 HD"

    aput-object v3, v2, v5

    const-string v3, "Iapetus HD"

    aput-object v3, v2, v6

    const-string v3, "m"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->VOICES:[[Ljava/lang/String;

    .line 85
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

.method static synthetic access$202(Z)Z
    .registers 1

    .prologue
    .line 29
    sput-boolean p0, Lcom/isaigu/gymapp/ai/CloudVoice;->playing:Z

    return p0
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 29
    sget v0, Lcom/isaigu/gymapp/ai/CloudVoice;->gen:I

    return v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500()Lcom/isaigu/gymapp/ai/CloudVoice$Fallback;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->fallback:Lcom/isaigu/gymapp/ai/CloudVoice$Fallback;

    return-object v0
.end method

.method public static declared-synchronized busy()Z
    .registers 2

    .prologue
    .line 172
    const-class v1, Lcom/isaigu/gymapp/ai/CloudVoice;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->track:Landroid/media/AudioTrack;

    if-nez v0, :cond_13

    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->QUEUE:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/isaigu/gymapp/ai/CloudVoice;->playing:Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_18

    if-eqz v0, :cond_16

    :cond_13
    const/4 v0, 0x1

    :goto_14
    monitor-exit v1

    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_14

    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static choose(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 96
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/CloudVoice;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    if-eqz p1, :cond_f

    .line 98
    const-string v1, "pick"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 100
    :cond_f
    if-eqz p2, :cond_16

    .line 101
    const-string v1, "rate"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    :cond_16
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    return-void
.end method

.method static file(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 7

    .prologue
    .line 354
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "voice"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 356
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

    .line 361
    :try_start_1
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    :goto_16
    const/16 v3, 0xc

    if-ge v0, v3, :cond_34

    .line 364
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

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 366
    :cond_34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_37} :catch_39

    move-result-object v0

    .line 368
    :goto_38
    return-object v0

    .line 367
    :catch_39
    move-exception v0

    .line 368
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_38
.end method

.method public static kept(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 438
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "voice"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 439
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
    .line 112
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
    .line 122
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 123
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 124
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static noteUsage(Landroid/content/Context;II)V
    .registers 6

    .prologue
    .line 116
    if-ltz p1, :cond_25

    if-lez p2, :cond_25

    .line 117
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

    .line 119
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

    .line 237
    sget-object v2, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/CloudVoice;->voice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 238
    sget-object v3, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    invoke-static {v3}, Lcom/isaigu/gymapp/ai/CloudVoice;->rate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 239
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

    .line 240
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v5, v6, v12

    if-lez v5, :cond_56

    .line 241
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 243
    :try_start_3a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    .line 244
    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Lcom/isaigu/gymapp/ai/CloudVoice;->stream(Ljava/io/InputStream;Lcom/isaigu/gymapp/ai/CloudVoice$Item;Ljava/io/FileOutputStream;)J
    :try_end_45
    .catchall {:try_start_3a .. :try_end_45} :catchall_51

    move-result-wide v4

    cmp-long v3, v4, v12

    if-lez v3, :cond_4f

    .line 246
    :goto_4a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    move v1, v0

    .line 292
    :cond_4e
    :goto_4e
    return v1

    :cond_4f
    move v0, v1

    .line 244
    goto :goto_4a

    .line 246
    :catchall_51
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 247
    throw v0

    .line 249
    :cond_56
    sget-object v5, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    invoke-static {v5}, Lcom/isaigu/gymapp/ai/CloudVoice;->usable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 253
    sget-object v5, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    iget-object v8, p0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->text:Ljava/lang/String;

    const/16 v9, 0x9c4

    invoke-static {v5, v8, v2, v3, v9}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->openTts(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 254
    if-eqz v2, :cond_4e

    .line 258
    :try_start_6e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 259
    const/16 v5, 0x1ad

    if-ne v3, v5, :cond_8b

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x36ee80

    add-long/2addr v4, v6

    sput-wide v4, Lcom/isaigu/gymapp/ai/CloudVoice;->quotaUntil:J

    .line 261
    const-string v0, "voice"

    const-string v3, "the month\'s free characters are used: the tablet\'s voice for now"

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_6e .. :try_end_87} :catchall_15d

    .line 294
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4e

    .line 264
    :cond_8b
    const/16 v5, 0xc8

    if-eq v3, v5, :cond_ab

    .line 265
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

    .line 294
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4e

    .line 269
    :cond_ab
    :try_start_ab
    const-string v3, "X-Tts-Used"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    const-string v5, "X-Tts-Limit"

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 271
    if-eqz v3, :cond_d0

    if-eqz v5, :cond_d0

    .line 272
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

    .line 276
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

    .line 277
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f1
    .catchall {:try_start_d0 .. :try_end_f1} :catchall_15d

    .line 280
    :try_start_f1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8, p0, v5}, Lcom/isaigu/gymapp/ai/CloudVoice;->stream(Ljava/io/InputStream;Lcom/isaigu/gymapp/ai/CloudVoice$Item;Ljava/io/FileOutputStream;)J
    :try_end_f8
    .catchall {:try_start_f1 .. :try_end_f8} :catchall_158

    move-result-wide v8

    .line 282
    :try_start_f9
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 284
    cmp-long v5, v8, v12

    if-lez v5, :cond_162

    iget v5, p0, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->gen:I

    sget v10, Lcom/isaigu/gymapp/ai/CloudVoice;->gen:I

    if-ne v5, v10, :cond_162

    .line 285
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 286
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->prune()V

    .line 290
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

    .line 291
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " chars"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 290
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14e
    .catchall {:try_start_f9 .. :try_end_14e} :catchall_15d

    .line 292
    cmp-long v3, v8, v12

    if-lez v3, :cond_166

    .line 294
    :goto_152
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v1, v0

    .line 292
    goto/16 :goto_4e

    .line 282
    :catchall_158
    move-exception v0

    :try_start_159
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 283
    throw v0
    :try_end_15d
    .catchall {:try_start_159 .. :try_end_15d} :catchall_15d

    .line 294
    :catchall_15d
    move-exception v0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 295
    throw v0

    .line 288
    :cond_162
    :try_start_162
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_165
    .catchall {:try_start_162 .. :try_end_165} :catchall_15d

    goto :goto_10c

    :cond_166
    move v0, v1

    .line 292
    goto :goto_152

    .line 274
    :catch_168
    move-exception v3

    goto/16 :goto_d0
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 443
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

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    .line 139
    const-string v0, "device"

    sget-object v1, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/CloudVoice;->voice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 140
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->stop()V

    .line 141
    const-string v0, "xems-preview"

    invoke-interface {p2, p1, v0, v2}, Lcom/isaigu/gymapp/ai/CloudVoice$Fallback;->sayLocal(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 146
    :goto_1d
    return-void

    .line 144
    :cond_1e
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/isaigu/gymapp/ai/CloudVoice;->quotaUntil:J

    .line 145
    const-string v0, "xems-preview"

    invoke-static {p0, p1, v0, v2, p2}, Lcom/isaigu/gymapp/ai/CloudVoice;->speak(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/CloudVoice$Fallback;)V

    goto :goto_1d
.end method

.method static prune()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 374
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "voice"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 375
    if-nez v4, :cond_15

    .line 393
    :cond_14
    return-void

    .line 378
    :cond_15
    const-wide/16 v2, 0x0

    .line 379
    array-length v5, v4

    move v1, v0

    :goto_19
    if-ge v1, v5, :cond_25

    aget-object v6, v4, v1

    .line 380
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 382
    :cond_25
    const-wide/32 v6, 0x3200000

    cmp-long v1, v2, v6

    if-lez v1, :cond_14

    .line 385
    new-instance v1, Lcom/isaigu/gymapp/ai/CloudVoice$ByAge;

    invoke-direct {v1}, Lcom/isaigu/gymapp/ai/CloudVoice$ByAge;-><init>()V

    invoke-static {v4, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 386
    array-length v1, v4

    :goto_35
    if-ge v0, v1, :cond_14

    aget-object v5, v4, v0

    .line 387
    const-wide/32 v6, 0x2800000

    cmp-long v6, v2, v6

    if-lez v6, :cond_14

    .line 390
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 391
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_35
.end method

.method public static rate(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 92
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
    .line 150
    sput-boolean p0, Lcom/isaigu/gymapp/ai/CloudVoice;->off:Z

    .line 151
    return-void
.end method

.method public static declared-synchronized speak(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/isaigu/gymapp/ai/CloudVoice$Fallback;)V
    .registers 10

    .prologue
    .line 154
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

    .line 168
    :cond_11
    :goto_11
    monitor-exit v1

    return-void

    .line 157
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    .line 158
    sput-object p4, Lcom/isaigu/gymapp/ai/CloudVoice;->fallback:Lcom/isaigu/gymapp/ai/CloudVoice$Fallback;

    .line 159
    if-eqz p3, :cond_20

    .line 160
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->stopNow()V

    .line 162
    :cond_20
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->QUEUE:Ljava/util/LinkedList;

    new-instance v2, Lcom/isaigu/gymapp/ai/CloudVoice$Item;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/ai/CloudVoice;->gen:I

    invoke-direct {v2, v3, p2, v4}, Lcom/isaigu/gymapp/ai/CloudVoice$Item;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 163
    const-class v0, Lcom/isaigu/gymapp/ai/CloudVoice;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 164
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->worker:Ljava/lang/Thread;

    if-eqz v0, :cond_41

    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_11

    .line 165
    :cond_41
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/isaigu/gymapp/ai/CloudVoice$Worker;

    invoke-direct {v2}, Lcom/isaigu/gymapp/ai/CloudVoice$Worker;-><init>()V

    const-string v3, "xems-voice"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->worker:Ljava/lang/Thread;

    .line 166
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->worker:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_54
    .catchall {:try_start_13 .. :try_end_54} :catchall_55

    goto :goto_11

    .line 154
    :catchall_55
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized stop()V
    .registers 2

    .prologue
    .line 179
    const-class v0, Lcom/isaigu/gymapp/ai/CloudVoice;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/isaigu/gymapp/ai/CloudVoice;->stopNow()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 180
    monitor-exit v0

    return-void

    .line 179
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static stopNow()V
    .registers 1

    .prologue
    .line 183
    sget v0, Lcom/isaigu/gymapp/ai/CloudVoice;->gen:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/isaigu/gymapp/ai/CloudVoice;->gen:I

    .line 184
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->QUEUE:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 185
    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->track:Landroid/media/AudioTrack;

    .line 186
    if-eqz v0, :cond_15

    .line 188
    :try_start_f
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 189
    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_15} :catch_16

    .line 193
    :cond_15
    :goto_15
    return-void

    .line 190
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
    .line 300
    const/16 v0, 0x5dc0

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 301
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/16 v2, 0x5dc0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/16 v6, 0x5dc0

    .line 302
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 303
    sput-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->track:Landroid/media/AudioTrack;

    .line 304
    const-wide/16 v6, 0x0

    .line 305
    const/4 v3, 0x0

    .line 306
    const/4 v2, 0x0

    .line 308
    const/16 v1, 0x12c0

    :try_start_21
    new-array v8, v1, [B

    .line 310
    const/4 v1, 0x0

    move v5, v1

    .line 311
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

    .line 312
    if-eqz v2, :cond_43

    .line 313
    const/4 v2, 0x0

    aput-byte v3, v8, v2

    .line 314
    add-int/lit8 v1, v1, 0x1

    .line 315
    const/4 v2, 0x0

    .line 317
    :cond_43
    and-int/lit8 v4, v1, 0x1

    const/4 v9, 0x1

    if-ne v4, v9, :cond_4f

    .line 318
    add-int/lit8 v2, v1, -0x1

    aget-byte v3, v8, v2

    .line 319
    const/4 v2, 0x1

    .line 320
    add-int/lit8 v1, v1, -0x1

    .line 322
    :cond_4f
    if-eqz p2, :cond_55

    .line 323
    const/4 v4, 0x0

    invoke-virtual {p2, v8, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 325
    :cond_55
    const/4 v4, 0x0

    invoke-virtual {v0, v8, v4, v1}, Landroid/media/AudioTrack;->write([BII)I

    .line 326
    int-to-long v10, v1

    add-long/2addr v6, v10

    .line 327
    if-nez v5, :cond_25

    .line 328
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 329
    const/4 v1, 0x1

    move v5, v1

    goto :goto_25

    .line 311
    :cond_63
    const/4 v1, 0x0

    move v4, v1

    goto :goto_2f

    :cond_66
    const/4 v1, 0x0

    goto :goto_33

    .line 333
    :cond_68
    const-wide/16 v2, 0x2

    div-long v2, v6, v2

    .line 334
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x5dc0

    div-long/2addr v8, v10

    add-long/2addr v4, v8

    const-wide/16 v8, 0x5dc

    add-long/2addr v4, v8

    .line 335
    :goto_7a
    iget v1, p1, Lcom/isaigu/gymapp/ai/CloudVoice$Item;->gen:I

    sget v8, Lcom/isaigu/gymapp/ai/CloudVoice;->gen:I

    if-ne v1, v8, :cond_97

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v8, v4

    if-gez v1, :cond_97

    .line 336
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I
    :try_end_8b
    .catchall {:try_start_21 .. :try_end_8b} :catchall_a7

    move-result v1

    int-to-long v8, v1

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    .line 337
    cmp-long v1, v8, v2

    if-ltz v1, :cond_a1

    .line 344
    :cond_97
    const/4 v1, 0x0

    sput-object v1, Lcom/isaigu/gymapp/ai/CloudVoice;->track:Landroid/media/AudioTrack;

    .line 346
    :try_start_9a
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9d} :catch_b2

    .line 349
    :goto_9d
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 342
    return-wide v6

    .line 340
    :cond_a1
    const-wide/16 v8, 0x28

    :try_start_a3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a7

    goto :goto_7a

    .line 344
    :catchall_a7
    move-exception v1

    const/4 v2, 0x0

    sput-object v2, Lcom/isaigu/gymapp/ai/CloudVoice;->track:Landroid/media/AudioTrack;

    .line 346
    :try_start_ab
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_ae} :catch_b4

    .line 349
    :goto_ae
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 350
    throw v1

    .line 347
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
    .line 129
    if-eqz p0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    if-nez v0, :cond_c

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/CloudVoice;->app:Landroid/content/Context;

    .line 132
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

    .line 133
    invoke-static {v1}, Lcom/isaigu/gymapp/ai/CloudVoice;->voice(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x1

    .line 132
    :goto_33
    return v0

    .line 133
    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public static used(Landroid/content/Context;)I
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 108
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
    .line 88
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/CloudVoice;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pick"

    const-string v2, "bg-BG-KalinaNeural"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
