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

.method public static appendRaw(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 49
    if-eqz p0, :cond_9

    if-nez p1, :cond_5

    goto :goto_9

    .line 52
    :cond_5
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void

    .line 50
    :cond_9
    :goto_9
    return-void
.end method

.method private static appendToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 159
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appContext:Landroid/content/Context;

    .line 160
    if-eqz v0, :cond_91

    if-nez p1, :cond_8

    goto/16 :goto_91

    .line 163
    :cond_8
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 166
    :try_start_b
    const-string v2, "diag-logs"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 167
    if-nez v2, :cond_1e

    .line 168
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v3, "diag-logs"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    :cond_1e
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_27

    .line 171
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 173
    :cond_27
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x40000

    cmp-long v7, v3, v5

    if-lez v7, :cond_64

    .line 175
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".old"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 177
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 179
    :cond_5c
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 180
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    :cond_64
    new-instance p0, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 183
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

    .line 184
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 185
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8a
    .catchall {:try_start_b .. :try_end_8a} :catchall_8b

    .line 187
    goto :goto_8c

    .line 186
    :catchall_8b
    move-exception p0

    .line 188
    :goto_8c
    :try_start_8c
    monitor-exit v1

    .line 189
    return-void

    .line 188
    :catchall_8e
    move-exception p0

    monitor-exit v1
    :try_end_90
    .catchall {:try_start_8c .. :try_end_90} :catchall_8e

    throw p0

    .line 161
    :cond_91
    :goto_91
    return-void
.end method

.method public static clear()V
    .registers 2

    .line 76
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_3
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->ring:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 78
    monitor-exit v0

    .line 79
    return-void

    .line 78
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private static formatLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 151
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

    .line 136
    if-eqz p0, :cond_3

    goto :goto_5

    :cond_3
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appContext:Landroid/content/Context;

    .line 137
    :goto_5
    const-string v0, "diag-logs/wearable-ble.log"

    if-nez p0, :cond_a

    .line 138
    return-object v0

    .line 141
    :cond_a
    :try_start_a
    const-string v1, "diag-logs"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 142
    if-eqz v1, :cond_1e

    .line 143
    new-instance v2, Ljava/io/File;

    const-string v3, "wearable-ble.log"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1f

    return-object p0

    .line 146
    :cond_1e
    goto :goto_20

    .line 145
    :catchall_1f
    move-exception v1

    .line 147
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

    .line 82
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_3
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->ring:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 84
    const-string v1, ""

    monitor-exit v0

    return-object v1

    .line 86
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const/4 v2, 0x0

    :goto_15
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->ring:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 88
    if-lez v2, :cond_24

    .line 89
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :cond_24
    sget-object v3, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->ring:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 93
    :cond_32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 94
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
    .catchall {:try_start_c .. :try_end_23} :catchall_29

    .line 41
    const-string p1, "wearable-ble.log"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void

    .line 40
    :catchall_29
    move-exception p0

    :try_start_2a
    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public static logHex(Ljava/lang/String;[BI)V
    .registers 10

    .line 56
    if-nez p1, :cond_8

    .line 57
    const-string p1, "null"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void

    .line 60
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

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p2, 0x3

    add-int/lit8 v2, v2, 0x10

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 62
    const-string v2, "len="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, p2, :cond_4d

    .line 64
    if-lez v3, :cond_32

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
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

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 69
    :cond_4d
    array-length p1, p1

    if-le p1, p2, :cond_55

    .line 70
    const-string p1, "\u2026"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static readTail(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    .line 99
    const-string v0, "diag-logs"

    if-eqz p0, :cond_5

    goto :goto_7

    :cond_5
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appContext:Landroid/content/Context;

    .line 100
    :goto_7
    const-string v1, ""

    if-eqz p0, :cond_6c

    if-nez p1, :cond_e

    goto :goto_6c

    .line 104
    :cond_e
    :try_start_e
    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 105
    if-nez v2, :cond_1d

    .line 106
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    :cond_1d
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_29

    .line 110
    return-object v1

    .line 112
    :cond_29
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 113
    int-to-long p1, p2

    sub-long p1, v2, p1

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 114
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v0, p0, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3d
    .catchall {:try_start_e .. :try_end_3d} :catchall_6a

    .line 116
    :try_start_3d
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 117
    sub-long/2addr v2, p1

    long-to-int p0, v2

    new-array p0, p0, [B

    .line 118
    invoke-virtual {v0, p0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 119
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 120
    cmp-long p0, p1, v4

    if-lez p0, :cond_60

    .line 121
    const/16 p0, 0xa

    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    .line 122
    if-ltz p0, :cond_60

    .line 123
    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_60
    .catchall {:try_start_3d .. :try_end_60} :catchall_65

    .line 126
    :cond_60
    nop

    .line 128
    :try_start_61
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 126
    return-object v2

    .line 128
    :catchall_65
    move-exception p0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 129
    throw p0
    :try_end_6a
    .catchall {:try_start_61 .. :try_end_6a} :catchall_6a

    .line 130
    :catchall_6a
    move-exception p0

    .line 131
    return-object v1

    .line 101
    :cond_6c
    :goto_6c
    return-object v1
.end method

.method private static timestamp()Ljava/lang/String;
    .registers 3

    .line 155
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
