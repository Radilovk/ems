.class public final Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;
.super Ljava/lang/Object;
.source "WearableBleDiagLog.java"


# static fields
.field private static final LOG_NAME:Ljava/lang/String; = "wearable-ble.log"

.field private static final MAX_LINES:I = 0x50

.field private static final MAX_LOG_BYTES:J = 0x40000L

.field private static final TAG:Ljava/lang/String; = "WearableBle"

.field private static volatile appContext:Landroid/content/Context;

.field private static final lock:Ljava/lang/Object;

.field private static final ring:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->lock:Ljava/lang/Object;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x54

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->ring:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendToFile(Ljava/lang/String;)V
    .registers 9

    .line 110
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appContext:Landroid/content/Context;

    .line 111
    if-eqz v0, :cond_86

    if-nez p0, :cond_8

    goto/16 :goto_86

    .line 114
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_b
    const-string v2, "diag-logs"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 118
    if-nez v2, :cond_1e

    .line 119
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v3, "diag-logs"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    :cond_1e
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_27

    .line 122
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 124
    :cond_27
    new-instance v0, Ljava/io/File;

    const-string v3, "wearable-ble.log"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x40000

    cmp-long v7, v3, v5

    if-lez v7, :cond_59

    .line 126
    new-instance v3, Ljava/io/File;

    const-string v4, "wearable-ble.log.old"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 128
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 130
    :cond_4f
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 131
    new-instance v0, Ljava/io/File;

    const-string v3, "wearable-ble.log"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    :cond_59
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 135
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 136
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7f
    .catchall {:try_start_b .. :try_end_7f} :catchall_80

    .line 138
    goto :goto_81

    .line 137
    :catchall_80
    move-exception p0

    .line 139
    :goto_81
    :try_start_81
    monitor-exit v1

    .line 140
    return-void

    .line 139
    :catchall_83
    move-exception p0

    monitor-exit v1
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_83

    throw p0

    .line 112
    :cond_86
    :goto_86
    return-void
.end method

.method public static clear()V
    .registers 2

    .line 65
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_3
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->ring:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 67
    monitor-exit v0

    .line 68
    return-void

    .line 67
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private static formatLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->timestamp()Ljava/lang/String;

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

.method public static getLogFileHint(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 87
    if-eqz p0, :cond_3

    goto :goto_5

    :cond_3
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appContext:Landroid/content/Context;

    .line 88
    :goto_5
    const-string v0, "diag-logs/wearable-ble.log"

    if-nez p0, :cond_a

    .line 89
    return-object v0

    .line 92
    :cond_a
    :try_start_a
    const-string v1, "diag-logs"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 93
    if-eqz v1, :cond_1e

    .line 94
    new-instance v2, Ljava/io/File;

    const-string v3, "wearable-ble.log"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1f

    return-object p0

    .line 97
    :cond_1e
    goto :goto_20

    .line 96
    :catchall_1f
    move-exception v1

    .line 98
    :goto_20
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRecentText()Ljava/lang/String;
    .registers 4

    .line 71
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 72
    :try_start_3
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->ring:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 73
    const-string v1, ""

    monitor-exit v0

    return-object v1

    .line 75
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    const/4 v2, 0x0

    :goto_15
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->ring:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 77
    if-lez v2, :cond_24

    .line 78
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    :cond_24
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->ring:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 82
    :cond_32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 83
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public static init(Landroid/content/Context;)V
    .registers 1

    .line 27
    if-eqz p0, :cond_8

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appContext:Landroid/content/Context;

    .line 30
    :cond_8
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 33
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->formatLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 34
    const-string p1, "WearableBle"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-object p1, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 36
    :try_start_c
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->ring:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :goto_11
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->ring:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x50

    if-le v0, v1, :cond_22

    .line 38
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->ring:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_11

    .line 40
    :cond_22
    monitor-exit p1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_27

    .line 41
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendToFile(Ljava/lang/String;)V

    .line 42
    return-void

    .line 40
    :catchall_27
    move-exception p0

    :try_start_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public static logHex(Ljava/lang/String;[BI)V
    .registers 10

    .line 45
    if-nez p1, :cond_8

    .line 46
    const-string p1, "null"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void

    .line 49
    :cond_8
    array-length v0, p1

    const/16 v1, 0x20

    if-lez p2, :cond_e

    goto :goto_10

    :cond_e
    const/16 p2, 0x20

    :goto_10
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p2, 0x3

    add-int/lit8 v2, v2, 0x10

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 51
    const-string v2, "len="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, p2, :cond_4d

    .line 53
    if-lez v3, :cond_32

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    :cond_32
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-byte v6, p1, v3

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%02X"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 58
    :cond_4d
    array-length p1, p1

    if-le p1, p2, :cond_55

    .line 59
    const-string p1, "\u2026"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private static timestamp()Ljava/lang/String;
    .registers 3

    .line 106
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
