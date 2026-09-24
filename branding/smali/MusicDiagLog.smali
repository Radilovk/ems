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

    .prologue
    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private static appendToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 86
    sget-object v0, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->appContext:Landroid/content/Context;

    .line 87
    if-eqz v0, :cond_6

    if-nez p1, :cond_7

    .line 105
    :cond_6
    :goto_6
    return-void

    .line 90
    :cond_7
    sget-object v1, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 91
    :try_start_a
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->resolveDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 92
    if-nez v0, :cond_15

    .line 93
    monitor-exit v1

    goto :goto_6

    .line 104
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v0

    .line 95
    :cond_15
    :try_start_15
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_12

    .line 97
    :try_start_1a
    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->rotateIfNeeded(Ljava/io/File;)V

    .line 98
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 100
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 101
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_45} :catch_47
    .catchall {:try_start_1a .. :try_end_45} :catchall_12

    .line 104
    :goto_45
    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_12

    goto :goto_6

    .line 102
    :catch_47
    move-exception v0

    goto :goto_45
.end method

.method private static formatLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->timestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_28

    :goto_1f
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_28
    const-string p1, ""

    goto :goto_1f
.end method

.method public static init(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 34
    if-nez p0, :cond_3

    .line 44
    :goto_2
    return-void

    .line 37
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->appContext:Landroid/content/Context;

    .line 39
    :try_start_9
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsGuard;->installLoopGuard()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_41

    .line 42
    :goto_c
    const-string v0, "init"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicDiagLog ready version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->readVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sdk="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " model="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 40
    :catch_41
    move-exception v0

    goto :goto_c
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->formatLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v1, "MusicDiag"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v1, "music-diag.log"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->appendToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 53
    if-eqz p1, :cond_3b

    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->stackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    const/16 v3, 0x7c

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->formatLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    const-string v1, "MusicDiag"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    const-string v1, "music-diag.log"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->appendToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    if-eqz p1, :cond_3a

    .line 58
    const-string v0, "music-diag.log"

    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->stackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->appendToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_3a
    return-void

    .line 53
    :cond_3b
    const-string v0, "null"

    goto :goto_6
.end method

.method private static readVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 131
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_36

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_36

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_33} :catch_35

    move-result-object v0

    .line 138
    :goto_34
    return-object v0

    .line 136
    :catch_35
    move-exception v0

    .line 138
    :cond_36
    const-string v0, "unknown"

    goto :goto_34
.end method

.method public static recordCrash(Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 63
    if-nez p0, :cond_3

    .line 69
    :goto_2
    return-void

    .line 66
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=== CRASH "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->timestamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ===\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->stackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string v1, "last-crash.txt"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->appendToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "CRASH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static resolveDir(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    .prologue
    .line 109
    :try_start_0
    const-string v0, "diag-logs"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_13

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_11

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_11} :catch_12

    .line 125
    :cond_11
    :goto_11
    return-object v0

    .line 116
    :catch_12
    move-exception v0

    .line 119
    :cond_13
    :try_start_13
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "diag-logs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_11

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_27} :catch_28

    goto :goto_11

    .line 124
    :catch_28
    move-exception v0

    .line 125
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static rotateIfNeeded(Ljava/io/File;)V
    .registers 5

    .prologue
    .line 142
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/32 v2, 0x80000

    cmp-long v0, v0, v2

    if-lez v0, :cond_3d

    .line 143
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".old"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 145
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 147
    :cond_3a
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 149
    :cond_3d
    return-void
.end method

.method private static stackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 80
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 81
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 82
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static timestamp()Ljava/lang/String;
    .registers 3

    .prologue
    .line 76
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
