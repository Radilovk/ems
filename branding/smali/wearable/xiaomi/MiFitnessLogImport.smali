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

.field private static final MAX_FILE:J = 0x4000000L

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
    .line 37
    const-string v0, "(?i)\"?(?:encryptKey|encrypt_key|authKey|auth_key)\"?\\s*[:=]\\s*\"?([0-9a-f]{32})(?![0-9a-f])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->KEY_PRIMARY:Ljava/util/regex/Pattern;

    .line 39
    const-string v0, "(?i)\"token\"\\s*[:=]\\s*\"([0-9a-f]{32})\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->KEY_TOKEN:Ljava/util/regex/Pattern;

    .line 41
    const-string v0, "(?i)(?<![0-9a-f:])((?:[0-9a-f]{2}:){5}[0-9a-f]{2})(?![0-9a-f:])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->MAC_COLON:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "(?i)\"?(?:mac|bleMac|btMac|ble_mac|bt_mac|deviceMac|macAddress|bleAddress|btAddress)\"?\\s*[:=]\\s*\"?((?:[0-9a-f]{2}[:-]?){5}[0-9a-f]{2})(?![0-9a-f])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->MAC_KEYED:Ljava/util/regex/Pattern;

    .line 47
    const-string v0, "(?i)(?:mac|address)\"?\\s*[:=]\\s*\"?((?:[0-9a-f*x]{2}[:-]){5}[0-9a-f*x]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->MAC_MASKED:Ljava/util/regex/Pattern;

    .line 49
    const-string v0, "((?:Xiaomi Smart |Mi Smart |Redmi Smart )?Band \\d+(?: Pro| Active| NFC)?) ([0-9A-F]{4})\\b"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->BAND_NAME:Ljava/util/regex/Pattern;

    .line 58
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

    .line 101
    const-string v0, "\"detail\"\\s*:\\s*\\{([^{}]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->DETAIL:Ljava/util/regex/Pattern;

    .line 102
    const-string v0, "(?i)\"encrypt_key\"\\s*:\\s*\"([0-9a-f]{32})\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->D_KEY:Ljava/util/regex/Pattern;

    .line 103
    const-string v0, "(?i)\"token\"\\s*:\\s*\"([0-9a-f]{32})\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->D_TOKEN:Ljava/util/regex/Pattern;

    .line 104
    const-string v0, "(?i)\"mac\"\\s*:\\s*\"((?:[0-9a-f]{2}:){5}[0-9a-f]{2})\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->D_MAC:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 67
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
    .line 297
    const/4 v0, 0x0

    .line 299
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_4} :catch_c

    move-result-object v0

    move-object v1, v0

    .line 302
    :goto_6
    if-eqz v1, :cond_b

    const/4 v0, 0x2

    if-le p2, v0, :cond_f

    .line 312
    :cond_b
    return-void

    .line 300
    :catch_c
    move-exception v1

    move-object v1, v0

    goto :goto_6

    .line 305
    :cond_f
    const/4 v0, 0x0

    :goto_10
    array-length v2, v1

    if-ge v0, v2, :cond_b

    .line 306
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 307
    aget-object v2, v1, v0

    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->collect(Ljava/io/File;Ljava/util/List;I)V

    .line 305
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 308
    :cond_25
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->wanted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 309
    aget-object v2, v1, v0

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_22
.end method

.method private static colon(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 413
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    const/4 v0, 0x0

    :goto_c
    const/16 v3, 0xc

    if-ge v0, v3, :cond_1f

    .line 416
    if-lez v0, :cond_17

    .line 417
    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    :cond_17
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v1, v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 415
    add-int/lit8 v0, v0, 0x2

    goto :goto_c

    .line 421
    :cond_1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static grantFolder(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)V
    .registers 3

    .prologue
    .line 439
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->start(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;Z)V

    .line 440
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

    .line 249
    invoke-static {p1, p2}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 250
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

    .line 254
    if-nez v7, :cond_2e

    .line 275
    :goto_2d
    return-void

    .line 258
    :cond_2e
    :goto_2e
    :try_start_2e
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 259
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 260
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 261
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_71

    const-wide/16 v4, 0x0

    .line 262
    :goto_47
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_77

    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 263
    :goto_53
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    const-wide/16 v0, 0x0

    .line 264
    :goto_5c
    const-string v8, "vnd.android.document/directory"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 265
    if-ge p4, v10, :cond_2e

    .line 266
    add-int/lit8 v0, p4, 0x1

    invoke-static {p0, p1, v3, p3, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->listTree(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;I)V
    :try_end_6b
    .catchall {:try_start_2e .. :try_end_6b} :catchall_6c

    goto :goto_2e

    .line 273
    :catchall_6c
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 274
    throw v0

    .line 261
    :cond_71
    const/4 v0, 0x2

    :try_start_72
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_47

    .line 262
    :cond_77
    const-string v6, ""

    goto :goto_53

    .line 263
    :cond_7a
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_5c

    .line 268
    :cond_80
    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->wanted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    const-wide/32 v8, 0x4000000

    cmp-long v0, v0, v8

    if-gtz v0, :cond_2e

    .line 269
    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;

    const/4 v2, 0x0

    invoke-static {p1, v3}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;-><init>(Ljava/io/File;Landroid/net/Uri;JLjava/lang/String;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9a
    .catchall {:try_start_72 .. :try_end_9a} :catchall_6c

    goto :goto_2e

    .line 273
    :cond_9b
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_2d
.end method

.method static maskedTail(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 398
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[:-]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 399
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

    .line 400
    const-string v0, ""

    .line 409
    :goto_24
    return-object v0

    .line 402
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 403
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_2d
    if-ltz v0, :cond_39

    .line 404
    aget-object v3, v1, v0

    const-string v4, "[0-9A-F]{2}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 409
    :cond_39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    .line 407
    :cond_3e
    const/4 v3, 0x0

    aget-object v4, v1, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    add-int/lit8 v0, v0, -0x1

    goto :goto_2d
.end method

.method private static pairByDistance(Ljava/lang/String;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    .registers 11

    .prologue
    const/16 v3, 0x5dc

    const/4 v8, 0x1

    .line 145
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->D_KEY:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 146
    :cond_9
    :goto_9
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 147
    const-string v2, ""

    .line 149
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->D_MAC:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    move v1, v3

    .line 150
    :goto_18
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 151
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    sub-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 152
    if-ge v0, v1, :cond_86

    .line 154
    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_38
    move v1, v0

    .line 156
    goto :goto_18

    .line 157
    :cond_3a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 160
    const-string v0, ""

    .line 161
    const-string v1, "\"name\":\""

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    .line 162
    if-ltz v1, :cond_6b

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    sub-int/2addr v5, v1

    if-ge v5, v3, :cond_6b

    .line 163
    const/16 v5, 0x22

    add-int/lit8 v6, v1, 0x8

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 164
    add-int/lit8 v6, v1, 0x8

    if-le v5, v6, :cond_6b

    .line 165
    add-int/lit8 v0, v1, 0x8

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 168
    :cond_6b
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->devices:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
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

    .line 171
    :cond_85
    return-void

    :cond_86
    move v0, v1

    goto :goto_38
.end method

.method public static pick(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;)V
    .registers 3

    .prologue
    .line 431
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->start(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;Z)V

    .line 432
    return-void
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

    .line 346
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v0, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/high16 v2, 0x10000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 348
    :cond_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_117

    .line 349
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_10

    .line 352
    const-string v2, "\\\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2e

    .line 353
    const-string v2, "\\\""

    const-string v3, "\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 355
    :cond_2e
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->scanDevices(Ljava/lang/String;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    .line 356
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->BAND_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 357
    :goto_37
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 358
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->name:Ljava/lang/String;

    .line 359
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->macHint:Ljava/lang/String;

    goto :goto_37

    .line 361
    :cond_51
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->KEY_PRIMARY:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 362
    :goto_57
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 363
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    .line 364
    iput-boolean v7, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->fromToken:Z

    goto :goto_57

    .line 366
    :cond_6c
    iget-object v2, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_78

    iget-boolean v2, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->fromToken:Z

    if-eqz v2, :cond_93

    .line 367
    :cond_78
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->KEY_TOKEN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 368
    :goto_7e
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 369
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->key:Ljava/lang/String;

    .line 370
    iput-boolean v6, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->fromToken:Z

    goto :goto_7e

    .line 373
    :cond_93
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->MAC_KEYED:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 374
    :cond_99
    :goto_99
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_d2

    .line 375
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

    .line 376
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_99

    const-string v4, "000000000000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_99

    const-string v4, "020000000000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_99

    .line 377
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->colon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->mac:Ljava/lang/String;

    goto :goto_99

    .line 380
    :cond_d2
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->MAC_MASKED:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 381
    :cond_d8
    :goto_d8
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_f0

    .line 382
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->maskedTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 383
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_d8

    .line 384
    iput-object v3, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->macHint:Ljava/lang/String;

    goto :goto_d8

    .line 387
    :cond_f0
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mac"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_10

    .line 388
    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->MAC_COLON:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 389
    :goto_104
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 390
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->mac:Ljava/lang/String;

    goto :goto_104

    .line 394
    :cond_117
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
    .line 325
    new-instance v0, Ljava/io/BufferedInputStream;

    const/high16 v1, 0x10000

    invoke-direct {v0, p0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 326
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 327
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    .line 328
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I

    move-result v2

    .line 329
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 330
    const/16 v3, 0x50

    if-ne v1, v3, :cond_3a

    const/16 v1, 0x4b

    if-ne v2, v1, :cond_3a

    .line 331
    iget v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->zips:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->zips:I

    .line 332
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 334
    :cond_2a
    :goto_2a
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 335
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 336
    invoke-static {v1, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->scan(Ljava/io/InputStream;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    goto :goto_2a

    .line 340
    :cond_3a
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->scan(Ljava/io/InputStream;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    .line 342
    :cond_3d
    return-void
.end method

.method private static scanDevices(Ljava/lang/String;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    .line 107
    const-string v0, "\"detail\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_a

    .line 141
    :cond_9
    :goto_9
    return-void

    .line 110
    :cond_a
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->DETAIL:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 111
    const/4 v0, 0x0

    .line 112
    :goto_11
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 114
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->D_KEY:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_2b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_41

    .line 118
    sget-object v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->D_TOKEN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_68

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_41
    :goto_41
    sget-object v3, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->D_MAC:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 122
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_6b

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 123
    :goto_57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6e

    move v0, v1

    .line 124
    goto :goto_11

    .line 116
    :cond_65
    const-string v0, ""

    goto :goto_2b

    .line 119
    :cond_68
    const-string v0, ""

    goto :goto_41

    .line 122
    :cond_6b
    const-string v2, ""

    goto :goto_57

    .line 126
    :cond_6e
    const-string v3, ""

    .line 127
    const-string v5, "\"name\":\""

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v5

    .line 128
    if-ltz v5, :cond_97

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    sub-int/2addr v6, v5

    const/16 v7, 0x320

    if-ge v6, v7, :cond_97

    .line 129
    add-int/lit8 v5, v5, 0x8

    .line 130
    const/16 v6, 0x22

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    .line 131
    if-le v6, v5, :cond_97

    .line 132
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 135
    :cond_97
    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->devices:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v5, p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->devices:Ljava/util/LinkedHashMap;

    new-instance v6, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v3, v2, v0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v2, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 137
    goto/16 :goto_11

    .line 138
    :cond_af
    if-nez v0, :cond_9

    .line 139
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pairByDistance(Ljava/lang/String;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    goto/16 :goto_9

    :cond_b6
    move v0, v1

    goto/16 :goto_11
.end method

.method public static scanLocal(Landroid/content/Context;)Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;
    .registers 15

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 182
    new-instance v9, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;

    invoke-direct {v9}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;-><init>()V

    .line 183
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v0, v7

    .line 184
    :goto_d
    sget-object v1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->DIRS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_58

    .line 185
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 186
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->DIRS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v11, v7}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->collect(Ljava/io/File;Ljava/util/List;I)V

    move v8, v7

    .line 187
    :goto_24
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_55

    .line 188
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 189
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/32 v12, 0x4000000

    cmp-long v1, v4, v12

    if-gtz v1, :cond_51

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 190
    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;-><init>(Ljava/io/File;Landroid/net/Uri;JLjava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_51
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_24

    .line 184
    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 194
    :cond_58
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->tree(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_66

    .line 197
    :try_start_5e
    invoke-static {v0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v10, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->listTree(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;I)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_66} :catch_b8

    .line 202
    :cond_66
    :goto_66
    new-array v0, v7, [Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;

    .line 203
    new-instance v1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$NewestFirst;

    invoke-direct {v1, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$NewestFirst;-><init>(Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$1;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 204
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 205
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 206
    :goto_80
    array-length v2, v0

    if-ge v7, v2, :cond_c1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/16 v4, 0xc

    if-ge v2, v4, :cond_c1

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v7

    iget-object v4, v4, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v0, v7

    iget-wide v4, v4, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;->time:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 208
    aget-object v2, v0, v7

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    :cond_b5
    add-int/lit8 v7, v7, 0x1

    goto :goto_80

    .line 198
    :catch_b8
    move-exception v0

    .line 199
    const-string v1, "xems"

    const-string v2, "MiFitnessLogImport.tree"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    .line 211
    :cond_c1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_c8
    if-ltz v2, :cond_fe

    .line 212
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;

    .line 214
    :try_start_d0
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;->file:Ljava/io/File;

    if-eqz v1, :cond_ec

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;->file:Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_db
    .catch Ljava/lang/Throwable; {:try_start_d0 .. :try_end_db} :catch_fc

    move-object v0, v1

    .line 217
    :goto_dc
    :try_start_dc
    invoke-static {v0, v9}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->scanAny(Ljava/io/InputStream;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;)V

    .line 218
    iget v1, v9, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->files:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v9, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Found;->files:I
    :try_end_e5
    .catchall {:try_start_dc .. :try_end_e5} :catchall_f7

    .line 220
    :try_start_e5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 211
    :goto_e8
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_c8

    .line 215
    :cond_ec
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Entry;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_dc

    .line 220
    :catchall_f7
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 221
    throw v1
    :try_end_fc
    .catch Ljava/lang/Throwable; {:try_start_e5 .. :try_end_fc} :catch_fc

    .line 222
    :catch_fc
    move-exception v0

    goto :goto_e8

    .line 225
    :cond_fe
    return-object v9
.end method

.method private static start(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;Z)V
    .registers 7

    .prologue
    .line 444
    :try_start_0
    sput-object p1, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pending:Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Done;

    .line 445
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 446
    const-string v1, "xems_mifit_log_pick"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 447
    if-eqz v1, :cond_1c

    .line 448
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 449
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 451
    :cond_1c
    sput-boolean p2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport;->pendingFolder:Z

    .line 452
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Host;-><init>()V

    const-string v3, "xems_mifit_log_pick"

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 453
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_33} :catch_34

    .line 457
    :goto_33
    return-void

    .line 454
    :catch_34
    move-exception v0

    .line 455
    const-string v1, "xems"

    const-string v2, "MiFitnessLogImport.pick"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method

.method public static tree(Landroid/content/Context;)Landroid/net/Uri;
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 280
    :try_start_2
    const-string v2, "xems_mifit_log"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "tree"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_19

    move-object v0, v1

    .line 293
    :goto_18
    return-object v0

    .line 284
    :cond_19
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object v4

    move v3, v0

    .line 286
    :goto_26
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4f

    .line 287
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/UriPermission;

    invoke-virtual {v0}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/UriPermission;

    invoke-virtual {v0}, Landroid/content/UriPermission;->isReadPermission()Z
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_45} :catch_4e

    move-result v0

    if-eqz v0, :cond_4a

    move-object v0, v2

    .line 288
    goto :goto_18

    .line 286
    :cond_4a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_26

    .line 291
    :catch_4e
    move-exception v0

    :cond_4f
    move-object v0, v1

    .line 293
    goto :goto_18
.end method

.method private static wanted(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 244
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 245
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
