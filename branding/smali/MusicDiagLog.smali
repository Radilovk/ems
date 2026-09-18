.class public final Lcom/isaigu/gymapp/train/utils/MusicDiagLog;
.super Ljava/lang/Object;
.source "MusicDiagLog.java"


# static fields
.field private static final CRASH_NAME:Ljava/lang/String; = "last-crash.txt"

.field private static final LOG_NAME:Ljava/lang/String; = "music-diag.log"

.field private static final MAX_LOG_BYTES:J = 0x80000L

.field private static final TAG:Ljava/lang/String; = "MusicDiag"

.field private static volatile appContext:Landroid/content/Context;

.field private static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private static appendToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 82
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->appContext:Landroid/content/Context;

    .line 83
    if-eqz v0, :cond_47

    if-nez p1, :cond_7

    goto :goto_47

    .line 86
    :cond_7
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    :try_start_a
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->resolveDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 88
    if-nez v0, :cond_12

    .line 89
    monitor-exit v1

    return-void

    .line 91
    :cond_12
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_44

    .line 93
    :try_start_17
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->rotateIfNeeded(Ljava/io/File;)V

    .line 94
    new-instance p0, Ljava/io/FileOutputStream;

    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 96
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 97
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_40
    .catchall {:try_start_17 .. :try_end_40} :catchall_41

    .line 99
    goto :goto_42

    .line 98
    :catchall_41
    move-exception p0

    .line 100
    :goto_42
    :try_start_42
    monitor-exit v1

    .line 101
    return-void

    .line 100
    :catchall_44
    move-exception p0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_44

    throw p0

    .line 84
    :cond_47
    :goto_47
    return-void
.end method

.method private static formatLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->timestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1c

    goto :goto_1e

    :cond_1c
    const-string p1, ""

    :goto_1e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    .line 34
    if-nez p0, :cond_3

    .line 35
    return-void

    .line 37
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->appContext:Landroid/content/Context;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicDiagLog ready version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->readVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " sdk="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " model="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "init"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 43
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->formatLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 44
    const-string p1, "MusicDiag"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string p1, "music-diag.log"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->appendToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 49
    if-eqz p1, :cond_7

    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->stackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_7
    const-string v0, "null"

    .line 50
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0xa

    const/16 v2, 0x7c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->formatLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 51
    const-string v0, "MusicDiag"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 52
    const-string v0, "music-diag.log"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->appendToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    if-eqz p1, :cond_39

    .line 54
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->stackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->appendToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_39
    return-void
.end method

.method private static readVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 127
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 129
    if-eqz p0, :cond_31

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_32

    return-object p0

    .line 133
    :cond_31
    goto :goto_33

    .line 132
    :catchall_32
    move-exception p0

    .line 134
    :goto_33
    const-string p0, "unknown"

    return-object p0
.end method

.method public static recordCrash(Ljava/lang/Throwable;)V
    .registers 3

    .line 59
    if-nez p0, :cond_3

    .line 60
    return-void

    .line 62
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=== CRASH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->timestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ===\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->stackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v1, "last-crash.txt"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->appendToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CRASH"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private static resolveDir(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .line 105
    const-string v0, "diag-logs"

    :try_start_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 106
    if-eqz v1, :cond_12

    .line 107
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_11

    .line 108
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_13

    .line 110
    :cond_11
    return-object v1

    .line 113
    :cond_12
    goto :goto_14

    .line 112
    :catchall_13
    move-exception v1

    .line 115
    :goto_14
    :try_start_14
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_26

    .line 117
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_27

    .line 119
    :cond_26
    return-object v1

    .line 120
    :catchall_27
    move-exception p0

    .line 121
    const/4 p0, 0x0

    return-object p0
.end method

.method private static rotateIfNeeded(Ljava/io/File;)V
    .registers 6

    .line 138
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x80000

    cmp-long v4, v0, v2

    if-lez v4, :cond_3b

    .line 139
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".old"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 143
    :cond_38
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 145
    :cond_3b
    return-void
.end method

.method private static stackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .line 76
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 77
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 78
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static timestamp()Ljava/lang/String;
    .registers 3

    .line 72
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
