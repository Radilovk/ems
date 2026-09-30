.class public final Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;
.super Ljava/lang/Object;
.source "MiFitnessLogImport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;,
        Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;,
        Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;,
        Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;,
        Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$NewestFirst;,
        Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;,
        Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Deliver;,
        Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$ReadTask;,
        Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$TreeTask;
    }
.end annotation


# static fields
.field private static final BAND_NAME:Ljava/util/regex/Pattern;

.field private static final DETAIL:Ljava/util/regex/Pattern;

.field private static final DIRS:[Ljava/lang/String;

.field private static final D_KEY:Ljava/util/regex/Pattern;

.field private static final D_MAC:Ljava/util/regex/Pattern;

.field private static final D_TOKEN:Ljava/util/regex/Pattern;

.field private static final KEY_PRIMARY:Ljava/util/regex/Pattern;

.field private static final KEY_TOKEN:Ljava/util/regex/Pattern;

.field private static final K_TREE:Ljava/lang/String; = "tree"

.field private static final MAC_COLON:Ljava/util/regex/Pattern;

.field private static final MAC_KEYED:Ljava/util/regex/Pattern;

.field private static final MAC_MASKED:Ljava/util/regex/Pattern;

.field private static final MAX_FILE:J = 0x80000000L

.field private static final MAX_FILES:I = 0xc

.field private static final PREFS:Ljava/lang/String; = "xems_mifit_log"

.field private static final REQ:I = 0x5a9

.field private static final REQ_TREE:I = 0x5aa

.field private static final TAG:Ljava/lang/String; = "xems_mifit_log_pick"

.field private static pending:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

.field private static pendingFolder:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 38
    const-string v0, "(?i)\"?(?:encryptKey|encrypt_key|authKey|auth_key)\"?\\s*[:=]\\s*\"?([0-9a-f]{32})(?![0-9a-f])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->KEY_PRIMARY:Ljava/util/regex/Pattern;

    .line 40
    const-string v0, "(?i)\"token\"\\s*[:=]\\s*\"([0-9a-f]{32})\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->KEY_TOKEN:Ljava/util/regex/Pattern;

    .line 42
    const-string v0, "(?i)(?<![0-9a-f:])((?:[0-9a-f]{2}:){5}[0-9a-f]{2})(?![0-9a-f:])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->MAC_COLON:Ljava/util/regex/Pattern;

    .line 44
    const-string v0, "(?i)\"?(?:mac|bleMac|btMac|ble_mac|bt_mac|deviceMac|macAddress|bleAddress|btAddress)\"?\\s*[:=]\\s*\"?((?:[0-9a-f]{2}[:-]?){5}[0-9a-f]{2})(?![0-9a-f])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->MAC_KEYED:Ljava/util/regex/Pattern;

    .line 48
    const-string v0, "(?i)(?:mac|address)\"?\\s*[:=]\\s*\"?((?:[0-9a-f*x]{2}[:-]){5}[0-9a-f*x]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->MAC_MASKED:Ljava/util/regex/Pattern;

    .line 50
    const-string v0, "((?:Xiaomi Smart |Mi Smart |Redmi Smart )?Band \\d+(?: Pro| Active| NFC)?) ([0-9A-F]{4})\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->BAND_NAME:Ljava/util/regex/Pattern;

    .line 59
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/sdcard/Download/wearablelog"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/storage/emulated/0/Download/wearablelog"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/sdcard/Android/data/com.xiaomi.wearable/files/log"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/sdcard/Android/data/com.mi.health/files/log"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/sdcard/Android/data/com.xiaomi.wearable/files"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/sdcard/Android/data/com.mi.health/files"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->DIRS:[Ljava/lang/String;

    .line 106
    const-string v0, "\"detail\"\\s*:\\s*\\{([^{}]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->DETAIL:Ljava/util/regex/Pattern;

    .line 107
    const-string v0, "(?i)\"encrypt_key\"\\s*:\\s*\"([0-9a-f]{32})\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->D_KEY:Ljava/util/regex/Pattern;

    .line 108
    const-string v0, "(?i)\"token\"\\s*:\\s*\"([0-9a-f]{32})\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->D_TOKEN:Ljava/util/regex/Pattern;

    .line 109
    const-string v0, "(?i)\"mac\"\\s*:\\s*\"((?:[0-9a-f]{2}:){5}[0-9a-f]{2})\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->D_MAC:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pendingFolder:Z

    return v0
.end method

.method static synthetic access$200()Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pending:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    return-object v0
.end method

.method static synthetic access$202(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;
    .registers 1

    .prologue
    .line 31
    sput-object p0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pending:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    return-object p0
.end method

.method private static collect(Ljava/io/File;Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 378
    const/4 v0, 0x0

    .line 380
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_c

    move-result-object v0

    move-object v1, v0

    .line 383
    :goto_6
    if-eqz v1, :cond_b

    const/4 v0, 0x2

    if-le p2, v0, :cond_f

    .line 393
    :cond_b
    return-void

    .line 381
    :catch_c
    move-exception v1

    move-object v1, v0

    goto :goto_6

    .line 386
    :cond_f
    const/4 v0, 0x0

    :goto_10
    array-length v2, v1

    if-ge v0, v2, :cond_b

    .line 387
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 388
    aget-object v2, v1, v0

    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->collect(Ljava/io/File;Ljava/util/List;I)V

    .line 386
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 389
    :cond_25
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->wanted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 390
    aget-object v2, v1, v0

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22
.end method

.method private static colon(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 500
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    const/4 v0, 0x0

    :goto_c
    const/16 v3, 0xc

    if-ge v0, v3, :cond_1f

    .line 503
    if-lez v0, :cond_17

    .line 504
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 506
    :cond_17
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v1, v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 502
    add-int/lit8 v0, v0, 0x2

    goto :goto_c

    .line 508
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static grantFolder(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)V
    .registers 3

    .prologue
    .line 526
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->start(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;Z)V

    .line 527
    return-void
.end method

.method private static listTree(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v10, 0x2

    .line 308
    invoke-static {p1, p2}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 309
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "document_id"

    aput-object v4, v2, v5

    const/4 v4, 0x1

    const-string v5, "mime_type"

    aput-object v5, v2, v4

    const-string v4, "last_modified"

    aput-object v4, v2, v10

    const-string v4, "_display_name"

    aput-object v4, v2, v6

    const-string v4, "_size"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 313
    if-nez v7, :cond_2e

    .line 334
    :goto_2d
    return-void

    .line 317
    :cond_2e
    :goto_2e
    :try_start_2e
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 318
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 319
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 320
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_71

    const-wide/16 v4, 0x0

    .line 321
    :goto_47
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_77

    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 322
    :goto_53
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    const-wide/16 v0, 0x0

    .line 323
    :goto_5c
    const-string v8, "vnd.android.document/directory"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 324
    if-ge p4, v10, :cond_2e

    .line 325
    add-int/lit8 v0, p4, 0x1

    invoke-static {p0, p1, v3, p3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->listTree(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;I)V
    :try_end_6b
    .catchall {:try_start_2e .. :try_end_6b} :catchall_6c

    goto :goto_2e

    .line 332
    :catchall_6c
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 333
    throw v0

    .line 320
    :cond_71
    const/4 v0, 0x2

    :try_start_72
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_47

    .line 321
    :cond_77
    const-string v6, ""

    goto :goto_53

    .line 322
    :cond_7a
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_5c

    .line 327
    :cond_80
    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->wanted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-wide v8, 0x80000000L

    cmp-long v0, v0, v8

    if-gtz v0, :cond_2e

    .line 328
    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;

    const/4 v2, 0x0

    invoke-static {p1, v3}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;-><init>(Ljava/io/File;Landroid/net/Uri;JLjava/lang/String;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9c
    .catchall {:try_start_72 .. :try_end_9c} :catchall_6c

    goto :goto_2e

    .line 332
    :cond_9d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2d
.end method

.method static log(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 372
    :try_start_0
    const-string v0, "pair"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 375
    :goto_5
    return-void

    .line 373
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method static maskedTail(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 485
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[:-]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 486
    const/16 v0, 0x2a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_25

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "XX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_25

    .line 487
    const-string v0, ""

    .line 496
    :goto_24
    return-object v0

    .line 489
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_2d
    if-ltz v0, :cond_39

    .line 491
    aget-object v3, v1, v0

    const-string v4, "[0-9A-F]{2}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 496
    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 494
    :cond_3e
    const/4 v3, 0x0

    aget-object v4, v1, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d
.end method

.method private static pairByDistance(Ljava/lang/String;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    .registers 11

    .prologue
    const/16 v3, 0x5dc

    const/4 v8, 0x1

    .line 150
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->D_KEY:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 151
    :cond_9
    :goto_9
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 152
    const-string v2, ""

    .line 154
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->D_MAC:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    move v1, v3

    .line 155
    :goto_18
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 156
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 157
    if-ge v0, v1, :cond_86

    .line 159
    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_38
    move v1, v0

    .line 161
    goto :goto_18

    .line 162
    :cond_3a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 165
    const-string v0, ""

    .line 166
    const-string v1, "\"name\":\""

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    .line 167
    if-ltz v1, :cond_6b

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    sub-int/2addr v5, v1

    if-ge v5, v3, :cond_6b

    .line 168
    const/16 v5, 0x22

    add-int/lit8 v6, v1, 0x8

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 169
    add-int/lit8 v6, v1, 0x8

    if-le v5, v6, :cond_6b

    .line 170
    add-int/lit8 v0, v1, 0x8

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_6b
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->devices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->devices:Ljava/util/LinkedHashMap;

    new-instance v5, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v2, v6}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 176
    :cond_85
    return-void

    :cond_86
    move v0, v1

    goto :goto_38
.end method

.method public static pick(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)V
    .registers 3

    .prologue
    .line 518
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->start(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;Z)V

    .line 519
    return-void
.end method

.method private static relevant(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 479
    const-string v0, "ey"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_40

    const-string v0, "EY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_40

    const-string v0, "oken"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_40

    const-string v0, "mac"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_40

    const-string v0, "Mac"

    .line 480
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_40

    const-string v0, "MAC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_40

    const-string v0, "ddress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_40

    const-string v0, "Band"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_42

    :cond_40
    const/4 v0, 0x1

    .line 479
    :goto_41
    return v0

    .line 480
    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method

.method public static scan(Ljava/io/InputStream;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 427
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v0, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/high16 v2, 0x10000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 429
    :cond_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11d

    .line 430
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_10

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->relevant(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 433
    const-string v2, "\\\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_34

    .line 434
    const-string v2, "\\\""

    const-string v3, "\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 436
    :cond_34
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->scanDevices(Ljava/lang/String;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    .line 437
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->BAND_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 438
    :goto_3d
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 439
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->name:Ljava/lang/String;

    .line 440
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->macHint:Ljava/lang/String;

    goto :goto_3d

    .line 442
    :cond_57
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->KEY_PRIMARY:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 443
    :goto_5d
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 444
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    .line 445
    iput-boolean v7, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->fromToken:Z

    goto :goto_5d

    .line 447
    :cond_72
    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7e

    iget-boolean v2, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->fromToken:Z

    if-eqz v2, :cond_99

    .line 448
    :cond_7e
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->KEY_TOKEN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 449
    :goto_84
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_99

    .line 450
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    .line 451
    iput-boolean v6, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->fromToken:Z

    goto :goto_84

    .line 454
    :cond_99
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->MAC_KEYED:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 455
    :cond_9f
    :goto_9f
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 456
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 457
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_9f

    const-string v4, "000000000000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9f

    const-string v4, "020000000000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9f

    .line 458
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->colon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->mac:Ljava/lang/String;

    goto :goto_9f

    .line 461
    :cond_d8
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->MAC_MASKED:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 462
    :cond_de
    :goto_de
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_f6

    .line 463
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->maskedTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 464
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_de

    .line 465
    iput-object v3, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->macHint:Ljava/lang/String;

    goto :goto_de

    .line 468
    :cond_f6
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mac"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_10

    .line 469
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->MAC_COLON:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 470
    :goto_10a
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 471
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->mac:Ljava/lang/String;

    goto :goto_10a

    .line 475
    :cond_11d
    return-void
.end method

.method public static scanAny(Ljava/io/InputStream;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 406
    new-instance v0, Ljava/io/BufferedInputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 407
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 408
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    .line 409
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    .line 410
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 411
    const/16 v3, 0x50

    if-ne v1, v3, :cond_3a

    const/16 v1, 0x4b

    if-ne v2, v1, :cond_3a

    .line 412
    iget v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->zips:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->zips:I

    .line 413
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 415
    :cond_2a
    :goto_2a
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 416
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 417
    invoke-static {v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->scan(Ljava/io/InputStream;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    goto :goto_2a

    .line 421
    :cond_3a
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->scan(Ljava/io/InputStream;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    .line 423
    :cond_3d
    return-void
.end method

.method private static scanDevices(Ljava/lang/String;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    .line 112
    const-string v0, "\"detail\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_a

    .line 146
    :cond_9
    :goto_9
    return-void

    .line 115
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->DETAIL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 116
    const/4 v0, 0x0

    .line 117
    :goto_11
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 119
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 120
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->D_KEY:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_2b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_41

    .line 123
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->D_TOKEN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_41
    :goto_41
    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->D_MAC:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 128
    :goto_57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6e

    move v0, v1

    .line 129
    goto :goto_11

    .line 121
    :cond_65
    const-string v0, ""

    goto :goto_2b

    .line 124
    :cond_68
    const-string v0, ""

    goto :goto_41

    .line 127
    :cond_6b
    const-string v2, ""

    goto :goto_57

    .line 131
    :cond_6e
    const-string v3, ""

    .line 132
    const-string v5, "\"name\":\""

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v5

    .line 133
    if-ltz v5, :cond_97

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    sub-int/2addr v6, v5

    const/16 v7, 0x320

    if-ge v6, v7, :cond_97

    .line 134
    add-int/lit8 v5, v5, 0x8

    .line 135
    const/16 v6, 0x22

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 136
    if-le v6, v5, :cond_97

    .line 137
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 140
    :cond_97
    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->devices:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->devices:Ljava/util/LinkedHashMap;

    new-instance v6, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v3, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v2, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 142
    goto/16 :goto_11

    .line 143
    :cond_af
    if-nez v0, :cond_9

    .line 144
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pairByDistance(Ljava/lang/String;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    goto/16 :goto_9

    :cond_b6
    move v0, v1

    goto/16 :goto_11
.end method

.method public static scanLocal(Landroid/content/Context;)Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;
    .registers 19

    .prologue
    .line 187
    new-instance v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;

    invoke-direct {v10}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;-><init>()V

    .line 188
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 189
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 191
    :try_start_f
    new-instance v2, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, "wearablelog"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1f} :catch_23d

    .line 195
    :goto_1f
    const/4 v2, 0x0

    :goto_20
    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->DIRS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_34

    .line 196
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->DIRS:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 198
    :cond_34
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 199
    const/4 v2, 0x0

    move v9, v2

    :goto_3b
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_9e

    .line 200
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 203
    :try_start_46
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_4f} :catch_5a

    move-result-object v2

    .line 207
    :goto_50
    invoke-virtual {v13, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_66

    .line 199
    :cond_56
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_3b

    .line 204
    :catch_5a
    move-exception v2

    .line 205
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    goto :goto_50

    .line 210
    :cond_66
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v2, v14, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->collect(Ljava/io/File;Ljava/util/List;I)V

    .line 211
    const/4 v2, 0x0

    :goto_71
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_56

    .line 212
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 213
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide v16, 0x80000000L

    cmp-long v3, v6, v16

    if-gtz v3, :cond_9b

    .line 214
    new-instance v3, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;-><init>(Ljava/io/File;Landroid/net/Uri;JLjava/lang/String;)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_9b
    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    .line 218
    :cond_9e
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->tree(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    .line 219
    if-eqz v2, :cond_ae

    .line 221
    :try_start_a4
    invoke-static {v2}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v11, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->listTree(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;I)V
    :try_end_ae
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_ae} :catch_103

    .line 226
    :cond_ae
    :goto_ae
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;

    invoke-interface {v11, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;

    .line 227
    new-instance v3, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$NewestFirst;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$NewestFirst;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$1;)V

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 228
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 229
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 230
    const/4 v3, 0x0

    :goto_cb
    array-length v5, v2

    if-ge v3, v5, :cond_10c

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/16 v7, 0xc

    if-ge v5, v7, :cond_10c

    .line 231
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v2, v3

    iget-object v7, v7, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "|"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v7, v2, v3

    iget-wide v8, v7, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;->time:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_100

    .line 232
    aget-object v5, v2, v3

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_100
    add-int/lit8 v3, v3, 0x1

    goto :goto_cb

    .line 222
    :catch_103
    move-exception v2

    .line 223
    const-string v3, "xems"

    const-string v4, "MiFitnessLogImport.tree"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_ae

    .line 235
    :cond_10c
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->listed:I

    .line 238
    const/4 v2, 0x0

    move v3, v2

    :goto_114
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_1e4

    .line 239
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;

    .line 240
    new-instance v5, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;

    invoke-direct {v5}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;-><init>()V

    .line 242
    :try_start_125
    iget-object v4, v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;->file:Ljava/io/File;

    if-eqz v4, :cond_173

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v7, v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;->file:Ljava/io/File;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_130
    .catch Ljava/lang/Throwable; {:try_start_125 .. :try_end_130} :catch_183

    .line 245
    :goto_130
    :try_start_130
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->scanAny(Ljava/io/InputStream;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    .line 246
    iget v7, v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->files:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->files:I

    .line 247
    iget v7, v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->zips:I

    iget v8, v5, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->zips:I

    add-int/2addr v7, v8

    iput v7, v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->zips:I
    :try_end_140
    .catchall {:try_start_130 .. :try_end_140} :catchall_17e

    .line 249
    :try_start_140
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_143
    .catch Ljava/lang/Throwable; {:try_start_140 .. :try_end_143} :catch_183

    .line 258
    iget-object v2, v5, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->devices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e5

    .line 259
    iget-object v2, v5, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->devices:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_155
    :goto_155
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;

    .line 260
    iget-object v4, v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->devices:Ljava/util/LinkedHashMap;

    iget-object v6, v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;->mac:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_155

    .line 261
    iget-object v4, v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->devices:Ljava/util/LinkedHashMap;

    iget-object v6, v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;->mac:Ljava/lang/String;

    invoke-virtual {v4, v6, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_155

    .line 243
    :cond_173
    :try_start_173
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v7, v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    goto :goto_130

    .line 249
    :catchall_17e
    move-exception v5

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 250
    throw v5
    :try_end_183
    .catch Ljava/lang/Throwable; {:try_start_173 .. :try_end_183} :catch_183

    .line 251
    :catch_183
    move-exception v4

    .line 252
    iget-object v5, v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->error:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1d0

    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;->name:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 254
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1c6
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->error:Ljava/lang/String;

    .line 238
    :cond_1d0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_114

    .line 254
    :cond_1d5
    const-string v2, ""

    goto :goto_1c6

    .line 264
    :cond_1d8
    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1e4

    .line 265
    iget-object v2, v5, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    iput-object v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    .line 284
    :cond_1e4
    :goto_1e4
    return-object v10

    .line 269
    :cond_1e5
    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1fd

    iget-object v2, v5, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1fd

    .line 270
    iget-object v2, v5, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    iput-object v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    .line 271
    iget-boolean v2, v5, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->fromToken:Z

    iput-boolean v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->fromToken:Z

    .line 273
    :cond_1fd
    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->mac:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_211

    iget-object v2, v5, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->mac:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_211

    .line 274
    iget-object v2, v5, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->mac:Ljava/lang/String;

    iput-object v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->mac:Ljava/lang/String;

    .line 276
    :cond_211
    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->macHint:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_229

    .line 277
    iget-object v2, v5, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->macHint:Ljava/lang/String;

    iput-object v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->macHint:Ljava/lang/String;

    .line 278
    iget-object v2, v5, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_23a

    iget-object v2, v5, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->name:Ljava/lang/String;

    :goto_227
    iput-object v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->name:Ljava/lang/String;

    .line 280
    :cond_229
    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1d0

    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->mac:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1d0

    goto :goto_1e4

    .line 278
    :cond_23a
    iget-object v2, v10, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->name:Ljava/lang/String;

    goto :goto_227

    .line 193
    :catch_23d
    move-exception v2

    goto/16 :goto_1f
.end method

.method private static start(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;Z)V
    .registers 7

    .prologue
    .line 531
    :try_start_0
    sput-object p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pending:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    .line 532
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 533
    const-string v1, "xems_mifit_log_pick"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 534
    if-eqz v1, :cond_1c

    .line 535
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 536
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 538
    :cond_1c
    sput-boolean p2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pendingFolder:Z

    .line 539
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;-><init>()V

    const-string v3, "xems_mifit_log_pick"

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 540
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_33} :catch_34

    .line 544
    :goto_33
    return-void

    .line 541
    :catch_34
    move-exception v0

    .line 542
    const-string v1, "xems"

    const-string v2, "MiFitnessLogImport.pick"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method

.method public static tree(Landroid/content/Context;)Landroid/net/Uri;
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 342
    :try_start_2
    const-string v1, "xems_mifit_log"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "tree"

    const-string v4, ""

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3c

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 344
    :goto_1b
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object v5

    move v4, v0

    move-object v1, v3

    .line 346
    :goto_25
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_75

    .line 347
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/UriPermission;

    .line 348
    invoke-virtual {v0}, Landroid/content/UriPermission;->isReadPermission()Z

    move-result v6

    if-nez v6, :cond_3e

    move-object v0, v1

    .line 346
    :goto_38
    add-int/lit8 v4, v4, 0x1

    move-object v1, v0

    goto :goto_25

    :cond_3c
    move-object v2, v3

    .line 343
    goto :goto_1b

    .line 351
    :cond_3e
    if-eqz v2, :cond_4c

    invoke-virtual {v0}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4c

    move-object v1, v2

    .line 367
    :cond_4b
    :goto_4b
    return-object v1

    .line 354
    :cond_4c
    invoke-virtual {v0}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 355
    if-nez v1, :cond_bf

    const-string v7, "/tree/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_bf

    const-string v7, "wearablelog"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_bf

    .line 356
    invoke-virtual {v0}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_38

    .line 359
    :cond_75
    if-eqz v1, :cond_4b

    .line 360
    const-string v0, "xems_mifit_log"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "tree"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folder grant found again: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->log(Ljava/lang/String;)V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_a5} :catch_a6

    goto :goto_4b

    .line 364
    :catch_a6
    move-exception v0

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tree: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->log(Ljava/lang/String;)V

    move-object v1, v3

    .line 367
    goto :goto_4b

    :cond_bf
    move-object v0, v1

    goto/16 :goto_38
.end method

.method private static wanted(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 303
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 304
    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    const-string v1, "log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_28

    :cond_26
    const/4 v0, 0x1

    :goto_27
    return v0

    :cond_28
    const/4 v0, 0x0

    goto :goto_27
.end method
