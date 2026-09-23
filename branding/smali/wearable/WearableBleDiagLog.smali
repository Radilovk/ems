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
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
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

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendRaw(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 49
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 53
    :cond_4
    :goto_4
    return-void

    .line 52
    :cond_5
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private static appendToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 159
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appContext:Landroid/content/Context;

    .line 160
    if-eqz v1, :cond_6

    if-nez p1, :cond_7

    .line 189
    :cond_6
    :goto_6
    return-void

    .line 163
    :cond_7
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 166
    :try_start_a
    const-string v0, "diag-logs"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 167
    if-nez v0, :cond_96

    .line 168
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v3, "diag-logs"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v0

    .line 170
    :goto_1e
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_27

    .line 171
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 173
    :cond_27
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v6, 0x40000

    cmp-long v3, v4, v6

    if-lez v3, :cond_66

    .line 175
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".old"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 177
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 179
    :cond_5e
    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 180
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 182
    :cond_66
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 184
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 185
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8e
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_8e} :catch_94
    .catchall {:try_start_a .. :try_end_8e} :catchall_91

    .line 188
    :goto_8e
    :try_start_8e
    monitor-exit v2

    goto/16 :goto_6

    :catchall_91
    move-exception v0

    monitor-exit v2
    :try_end_93
    .catchall {:try_start_8e .. :try_end_93} :catchall_91

    throw v0

    .line 186
    :catch_94
    move-exception v0

    goto :goto_8e

    :cond_96
    move-object v1, v0

    goto :goto_1e
.end method

.method public static clear()V
    .registers 2

    .prologue
    .line 76
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->ring:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 78
    monitor-exit v1

    .line 79
    return-void

    .line 78
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private static formatLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->timestamp()Ljava/lang/String;

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

.method public static getLogFileHint(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 136
    if-eqz p0, :cond_7

    .line 137
    :goto_2
    if-nez p0, :cond_a

    .line 138
    const-string v0, "diag-logs/wearable-ble.log"

    .line 147
    :goto_6
    return-object v0

    .line 136
    :cond_7
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appContext:Landroid/content/Context;

    goto :goto_2

    .line 141
    :cond_a
    :try_start_a
    const-string v0, "diag-logs"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_1f

    .line 143
    new-instance v1, Ljava/io/File;

    const-string v2, "wearable-ble.log"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_1c} :catch_1e

    move-result-object v0

    goto :goto_6

    .line 145
    :catch_1e
    move-exception v0

    .line 147
    :cond_1f
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "diag-logs/wearable-ble.log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public static getRecentText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 82
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 83
    :try_start_3
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->ring:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 84
    const-string v0, ""

    monitor-exit v2

    .line 93
    :goto_e
    return-object v0

    .line 86
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const/4 v0, 0x0

    move v1, v0

    :goto_16
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->ring:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_34

    .line 88
    if-lez v1, :cond_25

    .line 89
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :cond_25
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->ring:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 93
    :cond_34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    goto :goto_e

    .line 94
    :catchall_3a
    move-exception v0

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 27
    if-eqz p0, :cond_8

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appContext:Landroid/content/Context;

    .line 30
    :cond_8
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 33
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->formatLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string v1, "WearableBle"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_c
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->ring:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    :goto_11
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->ring:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x50

    if-le v2, v3, :cond_25

    .line 38
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->ring:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_11

    .line 40
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_c .. :try_end_24} :catchall_22

    throw v0

    :cond_25
    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_22

    .line 41
    const-string v1, "wearable-ble.log"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appendToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static logHex(Ljava/lang/String;[BI)V
    .registers 12

    .prologue
    const/4 v2, 0x0

    const/16 v0, 0x20

    .line 56
    if-nez p1, :cond_b

    .line 57
    const-string v0, "null"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :goto_a
    return-void

    .line 60
    :cond_b
    array-length v1, p1

    if-lez p2, :cond_4c

    :goto_e
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 61
    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, v3, 0x3

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 62
    const-string v1, "len="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v5, p1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .line 63
    :goto_2a
    if-ge v1, v3, :cond_4e

    .line 64
    if-lez v1, :cond_31

    .line 65
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    :cond_31
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%02X"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aget-byte v8, p1, v1

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_4c
    move p2, v0

    .line 60
    goto :goto_e

    .line 69
    :cond_4e
    array-length v0, p1

    if-le v0, v3, :cond_56

    .line 70
    const-string v0, "\u2026"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method public static readTail(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .registers 13

    .prologue
    const-wide/16 v8, 0x0

    .line 99
    if-eqz p0, :cond_b

    .line 100
    :goto_4
    if-eqz p0, :cond_8

    if-nez p1, :cond_e

    .line 101
    :cond_8
    const-string v0, ""

    .line 131
    :goto_a
    return-object v0

    .line 99
    :cond_b
    sget-object p0, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->appContext:Landroid/content/Context;

    goto :goto_4

    .line 104
    :cond_e
    :try_start_e
    const-string v0, "diag-logs"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 105
    if-nez v0, :cond_21

    .line 106
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "diag-logs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    :cond_21
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 110
    const-string v0, ""

    goto :goto_a

    .line 112
    :cond_2f
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 113
    const-wide/16 v4, 0x0

    int-to-long v6, p2

    sub-long v6, v2, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 114
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v6, v1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_43} :catch_6b

    .line 116
    :try_start_43
    invoke-virtual {v6, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 117
    sub-long v0, v2, v4

    long-to-int v0, v0

    new-array v1, v0, [B

    .line 118
    invoke-virtual {v6, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 119
    new-instance v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 120
    cmp-long v1, v4, v8

    if-lez v1, :cond_67

    .line 121
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 122
    if-ltz v1, :cond_67

    .line 123
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_66
    .catchall {:try_start_43 .. :try_end_66} :catchall_6f

    move-result-object v0

    .line 128
    :cond_67
    :try_start_67
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_6a} :catch_6b

    goto :goto_a

    .line 130
    :catch_6b
    move-exception v0

    .line 131
    const-string v0, ""

    goto :goto_a

    .line 128
    :catchall_6f
    move-exception v0

    :try_start_70
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    .line 129
    throw v0
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_74} :catch_6b
.end method

.method private static timestamp()Ljava/lang/String;
    .registers 3

    .prologue
    .line 155
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
