.class final Lcom/isaigu/gymapp/wearable/ReportBridge;
.super Ljava/lang/Object;
.source "ReportBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/ReportBridge$Start;,
        Lcom/isaigu/gymapp/wearable/ReportBridge$CardTask;,
        Lcom/isaigu/gymapp/wearable/ReportBridge$Js;,
        Lcom/isaigu/gymapp/wearable/ReportBridge$Rotate;,
        Lcom/isaigu/gymapp/wearable/ReportBridge$Print;,
        Lcom/isaigu/gymapp/wearable/ReportBridge$Dismiss;
    }
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field auto:Z

.field private final dialog:Landroid/app/Dialog;

.field private final focus:J

.field private final user:Lcom/isaigu/gymapp/bean/TrainUser;

.field private web:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/Dialog;Lcom/isaigu/gymapp/bean/TrainUser;J)V
    .registers 6

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    .line 27
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->dialog:Landroid/app/Dialog;

    .line 28
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 29
    iput-wide p4, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->focus:J

    .line 30
    return-void
.end method

.method private asset(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 253
    :try_start_a
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 254
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 256
    :goto_13
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_23

    .line 257
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_1e

    goto :goto_13

    .line 261
    :catchall_1e
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 262
    throw v0

    .line 259
    :cond_23
    :try_start_23
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_1e

    .line 261
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 259
    return-object v2
.end method

.method private avatar(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    .line 489
    if-eqz p1, :cond_a

    :try_start_2
    const-string v0, "file://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 490
    :cond_a
    const-string v0, ""

    .line 512
    :goto_c
    return-object v0

    .line 492
    :cond_d
    new-instance v0, Ljava/io/File;

    const-string v1, "file://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x61a80

    cmp-long v1, v2, v4

    if-lez v1, :cond_30

    .line 494
    :cond_2d
    const-string v0, ""

    goto :goto_c

    .line 496
    :cond_30
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    new-array v1, v1, [B

    .line 497
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_3c} :catch_6b

    .line 499
    const/4 v0, 0x0

    .line 500
    :goto_3d
    :try_start_3d
    array-length v3, v1

    if-ge v0, v3, :cond_48

    .line 501
    array-length v3, v1

    sub-int/2addr v3, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_66

    move-result v3

    .line 502
    if-gtz v3, :cond_64

    .line 508
    :cond_48
    :try_start_48
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data:image/jpeg;base64,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 505
    :cond_64
    add-int/2addr v0, v3

    .line 506
    goto :goto_3d

    .line 508
    :catchall_66
    move-exception v0

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 509
    throw v0
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_6b} :catch_6b

    .line 511
    :catch_6b
    move-exception v0

    .line 512
    const-string v0, ""

    goto :goto_c
.end method

.method private cardPrefs()Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    const-string v1, "xems_client_cards"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private done(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 267
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/ReportBridge$Js;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->web:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "window.xemsCardDone&&window.xemsCardDone(\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/ReportBridge$Js;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 268
    return-void
.end method

.method static isDark()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 372
    :try_start_1
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->BG:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3} :catch_1a

    .line 373
    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v2, v2, 0x3

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v2, v3

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v2

    .line 374
    const/16 v2, 0x500

    if-ge v1, v2, :cond_18

    .line 376
    :goto_17
    return v0

    .line 374
    :cond_18
    const/4 v0, 0x0

    goto :goto_17

    .line 375
    :catch_1a
    move-exception v1

    goto :goto_17
.end method

.method static lookupFields(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x22

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    if-eqz p0, :cond_93

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->email:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 140
    :goto_19
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_45

    .line 141
    const-string v2, ",\"ek\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xems-card:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/ReportBridge;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    :cond_45
    if-eqz p0, :cond_96

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->phone:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/Schedule;->digits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    :goto_51
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x9

    if-le v2, v3, :cond_63

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x9

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    :cond_63
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-lt v2, v3, :cond_8e

    .line 148
    const-string v2, ",\"pk\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "xems-card:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/ReportBridge;->sha256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    :cond_8e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    :cond_93
    const-string v0, ""

    goto :goto_19

    .line 143
    :cond_96
    const-string v0, ""

    goto :goto_51
.end method

.method static sha256(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 155
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 156
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 157
    const/4 v0, 0x0

    :goto_18
    array-length v3, v1

    if-ge v0, v3, :cond_3b

    .line 158
    aget-byte v3, v1, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->forDigit(II)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v1, v0

    and-int/lit8 v4, v4, 0xf

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 160
    :cond_3b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3e} :catch_40

    move-result-object v0

    .line 162
    :goto_3f
    return-object v0

    .line 161
    :catch_40
    move-exception v0

    .line 162
    const-string v0, ""

    goto :goto_3f
.end method

.method private shareBytes(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .registers 16

    .prologue
    .line 53
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "xems_share"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_16

    .line 55
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 57
    :cond_16
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 58
    if-eqz v2, :cond_38

    .line 59
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1e
    if-ge v0, v3, :cond_38

    aget-object v4, v2, v0

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x5265c00

    cmp-long v5, v6, v8

    if-lez v5, :cond_35

    .line 61
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 59
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 65
    :cond_38
    const-string v0, "[\\\\/:*?\"<>|]"

    const-string v2, "_"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_4a} :catch_e6

    .line 69
    :try_start_4a
    invoke-virtual {v1, p3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_e1

    .line 71
    :try_start_4d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 73
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".provider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 74
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v3, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 77
    if-eqz p4, :cond_8b

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8b

    .line 78
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    :cond_8b
    if-eqz p5, :cond_98

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_98

    .line 81
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v3, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    :cond_98
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    new-instance v4, Lcom/isaigu/gymapp/wearable/ReportBridge$Start;

    iget-object v5, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    const-string v6, "\u0421\u043f\u043e\u0434\u0435\u043b\u0438"

    const-string v7, "Share"

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/isaigu/gymapp/wearable/ReportBridge$Start;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v1, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 85
    const-string v1, "report"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "share "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " B"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_e0
    return-void

    .line 71
    :catchall_e1
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 72
    throw v0
    :try_end_e6
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_e6} :catch_e6

    .line 86
    :catch_e6
    move-exception v0

    .line 87
    const-string v1, "report"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "share failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e0
.end method


# virtual methods
.method public auto()Z
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->auto:Z

    return v0
.end method

.method cardNow(Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 207
    const-string v0, ""

    .line 209
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_e} :catch_233

    move-result-object v0

    .line 212
    :goto_f
    const-string v1, "\u0422\u0432\u043e\u044f\u0442 XEMS \u043a\u0430\u0440\u0442\u043e\u043d"

    const-string v2, "Your XEMS card"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 213
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_cc

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0417\u0434\u0440\u0430\u0432\u0435\u0439, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hi "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 216
    :goto_54
    :try_start_54
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsDossier;->keyFor(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 217
    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/ReportBridge;->lookupFields(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;

    move-result-object v3

    .line 216
    invoke-static {v1, v2, p1, v3}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->postCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/ReportBridge;->cardPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url_"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v6, v6, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u0415\u0442\u043e \u0442\u0432\u043e\u044f XEMS \u043a\u0430\u0440\u0442\u043e\u043d \u2014 \u043d\u0430\u043f\u0440\u0435\u0434\u044a\u043a\u044a\u0442 \u0442\u0438, \u043e\u0431\u043d\u043e\u0432\u044f\u0432\u0430 \u0441\u0435 \u0441\u043b\u0435\u0434 \u0432\u0441\u044f\u043a\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430: "

    const-string v6, "Here is your XEMS card \u2014 your progress, updated after every training: "

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Lcom/isaigu/gymapp/wearable/ReportBridge;->shareText(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v2, "report"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "card link "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v1, "link"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/ReportBridge;->done(Ljava/lang/String;)V
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_cb} :catch_d0

    .line 248
    :goto_cb
    return-void

    .line 214
    :cond_cc
    const-string v1, ""

    move-object v5, v1

    goto :goto_54

    .line 224
    :catch_d0
    move-exception v1

    .line 225
    const-string v2, "report"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "card link: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u2014 sending the file"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :try_start_ef
    const-string v1, "report/client-card.html"

    invoke-direct {p0, v1}, Lcom/isaigu/gymapp/wearable/ReportBridge;->asset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    const-string v2, "\"sex\":\"M\""

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_228

    const-string v2, "female"

    .line 230
    :goto_ff
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<!--FIG:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "-->"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<!--/FIG:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-->"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 231
    if-ltz v3, :cond_236

    if-le v6, v3, :cond_236

    .line 232
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<!--/FIG:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "-->"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 234
    :goto_176
    const-string v1, "en"

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/ReportBridge;->lang()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<!doctype html><html lang=\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_22c

    const-string v1, "en"

    :goto_18f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\"><head><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width,initial-scale=1,viewport-fit=cover\"></head><body>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "__XEMS_CARD_DATA__"

    const-string v6, "<"

    const-string v7, "\\u003c"

    .line 237
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</body></html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 239
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_230

    :goto_1bb
    const-string v1, "[^0-9A-Za-z\\u0400-\\u04FF_-]+"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XEMS_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    const-string v0, "UTF-8"

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\u0415\u0442\u043e \u0442\u0432\u043e\u044f XEMS \u043a\u0430\u0440\u0442\u043e\u043d \u2014 \u043e\u0442\u0432\u043e\u0440\u0438 \u0444\u0430\u0439\u043b\u0430 \u0432 \u0431\u0440\u0430\u0443\u0437\u044a\u0440\u0430."

    const-string v6, "Here is your XEMS card \u2014 open the file in a browser."

    .line 241
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 240
    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/ReportBridge;->shareBytes(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v0, "file"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/ReportBridge;->done(Ljava/lang/String;)V
    :try_end_206
    .catch Ljava/lang/Throwable; {:try_start_ef .. :try_end_206} :catch_208

    goto/16 :goto_cb

    .line 244
    :catch_208
    move-exception v0

    .line 245
    const-string v1, "report"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "card file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v0, "fail"

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/wearable/ReportBridge;->done(Ljava/lang/String;)V

    goto/16 :goto_cb

    .line 229
    :cond_228
    :try_start_228
    const-string v2, "male"

    goto/16 :goto_ff

    .line 235
    :cond_22c
    const-string v1, "bg"

    goto/16 :goto_18f

    .line 239
    :cond_230
    const-string v0, "client"
    :try_end_232
    .catch Ljava/lang/Throwable; {:try_start_228 .. :try_end_232} :catch_208

    goto :goto_1bb

    .line 210
    :catch_233
    move-exception v1

    goto/16 :goto_f

    :cond_236
    move-object v2, v1

    goto/16 :goto_176
.end method

.method public cardUrl()Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/ReportBridge;->cardPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public client()Ljava/lang/String;
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 397
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 399
    :try_start_5
    const-string v0, "id"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 400
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d3

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    .line 401
    :goto_22
    const-string v2, "name"

    if-eqz v0, :cond_d9

    :goto_26
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 402
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v2

    .line 403
    if-eqz v2, :cond_86

    .line 404
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-eqz v0, :cond_42

    .line 405
    const-string v3, "sex"

    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->sex:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    sget-object v4, Lcom/isaigu/gymapp/ai/AiModel$Sex;->FEMALE:Lcom/isaigu/gymapp/ai/AiModel$Sex;

    if-ne v0, v4, :cond_dd

    const-string v0, "F"

    :goto_3f
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    :cond_42
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    if-eqz v0, :cond_51

    .line 408
    const-string v0, "age"

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->age:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 410
    :cond_51
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    if-eqz v0, :cond_60

    .line 411
    const-string v0, "weight"

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->weightKg:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v1, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 413
    :cond_60
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-eqz v0, :cond_73

    .line 414
    const-string v0, "goal"

    iget-object v3, v2, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/ai/AiModel$Goal;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    :cond_73
    iget-object v0, v2, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    if-eqz v0, :cond_86

    .line 417
    const-string v0, "fitness"

    iget-object v2, v2, Lcom/isaigu/gymapp/ai/AiProfile;->fitness:Lcom/isaigu/gymapp/ai/AiModel$Fitness;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/ai/AiModel$Fitness;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 420
    :cond_86
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    if-lez v0, :cond_95

    .line 421
    const-string v0, "height"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->height:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 423
    :cond_95
    const-string v0, "owner"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v2, v4, v5}, Lcom/isaigu/gymapp/wearable/BandWorkout;->isOwner(Landroid/content/Context;J)Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 424
    const-string v0, "misport"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    const/4 v3, 0x0

    invoke-static {v2, v4, v5, v3}, Lcom/isaigu/gymapp/wearable/BandWorkout;->sport(Landroid/content/Context;JI)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 425
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getRestHr(Landroid/content/Context;)I

    move-result v0

    .line 426
    if-lez v0, :cond_c1

    .line 427
    const-string v2, "restHr"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 429
    :cond_c1
    const-string v0, "avatar"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->iconUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/wearable/ReportBridge;->avatar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_ce} :catch_e1

    .line 433
    :goto_ce
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 400
    :cond_d3
    :try_start_d3
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    goto/16 :goto_22

    .line 401
    :cond_d9
    const-string v0, ""

    goto/16 :goto_26

    .line 405
    :cond_dd
    const-string v0, "M"
    :try_end_df
    .catch Ljava/lang/Throwable; {:try_start_d3 .. :try_end_df} :catch_e1

    goto/16 :goto_3f

    .line 430
    :catch_e1
    move-exception v0

    .line 431
    const-string v2, "report"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client json: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ce
.end method

.method public close()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 468
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/ReportBridge$Dismiss;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->dialog:Landroid/app/Dialog;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/ReportBridge$Dismiss;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 469
    return-void
.end method

.method public deleteSession(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionStore;->delete(Landroid/content/Context;J)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 464
    :goto_9
    return-void

    .line 462
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public focus()Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 392
    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->focus:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    iget-wide v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->focus:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-string v0, ""

    goto :goto_e
.end method

.method public lang()Ljava/lang/String;
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 387
    const-string v0, "bg"

    const-string v1, "bg"

    const-string v2, "en"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "bg"

    :goto_12
    return-object v0

    :cond_13
    const-string v0, "en"

    goto :goto_12
.end method

.method public printPdf(Ljava/lang/String;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/ReportBridge$Print;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->web:Landroid/webkit/WebView;

    invoke-direct {v1, v2, v3, p1}, Lcom/isaigu/gymapp/wearable/ReportBridge$Print;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 324
    return-void
.end method

.method public putScores(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3, p2}, Lcom/isaigu/gymapp/wearable/SessionStore;->putScores(Landroid/content/Context;JLjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    .line 456
    :goto_9
    return-void

    .line 454
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public refreshCard(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 122
    if-eqz p2, :cond_1c

    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/ReportBridge;->cardUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->auto:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/ReportBridge;->lookupFields(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1d

    .line 131
    :cond_1c
    :goto_1c
    return-void

    .line 126
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/ReportBridge;->lookupFields(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/ReportBridge;->cardPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 130
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/isaigu/gymapp/wearable/ReportBridge$CardTask;

    invoke-direct {v2, p0, p1, v0}, Lcom/isaigu/gymapp/wearable/ReportBridge$CardTask;-><init>(Lcom/isaigu/gymapp/wearable/ReportBridge;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xems-card-refresh"

    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_1c
.end method

.method refreshNow(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsDossier;->keyFor(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 198
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/ReportBridge;->lookupFields(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-static {v0, v1, p1, v2}, Lcom/isaigu/gymapp/widget/XemsLicenseClient;->postCard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-direct {p0}, Lcom/isaigu/gymapp/wearable/ReportBridge;->cardPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 200
    const-string v1, "report"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "card refreshed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6d} :catch_6e

    .line 204
    :goto_6d
    return-void

    .line 201
    :catch_6e
    move-exception v0

    .line 202
    const-string v1, "report"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "card refresh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d
.end method

.method public rotate()Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 293
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v0, :cond_20

    .line 295
    :goto_f
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    new-instance v2, Lcom/isaigu/gymapp/wearable/ReportBridge$Rotate;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    invoke-direct {v2, v3, v0}, Lcom/isaigu/gymapp/wearable/ReportBridge$Rotate;-><init>(Landroid/app/Activity;Z)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 296
    if-eqz v0, :cond_22

    const-string v0, "portrait"

    :goto_1f
    return-object v0

    .line 293
    :cond_20
    const/4 v0, 0x0

    goto :goto_f

    .line 296
    :cond_22
    const-string v0, "landscape"

    goto :goto_1f
.end method

.method public session(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionStore;->load(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 446
    :goto_a
    return-object v0

    .line 445
    :catch_b
    move-exception v0

    .line 446
    const-string v0, "null"

    goto :goto_a
.end method

.method public sessions()Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/SessionStore;->listFor(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setWebView(Landroid/webkit/WebView;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->web:Landroid/webkit/WebView;

    .line 39
    return-void
.end method

.method public shareCard(Ljava/lang/String;)V
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 106
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/isaigu/gymapp/wearable/ReportBridge$CardTask;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/wearable/ReportBridge$CardTask;-><init>(Lcom/isaigu/gymapp/wearable/ReportBridge;Ljava/lang/String;)V

    const-string v2, "xems-card"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 107
    return-void
.end method

.method public shareFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/ReportBridge;->shareBytes(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_d} :catch_e

    .line 49
    :goto_d
    return-void

    .line 46
    :catch_e
    move-exception v0

    .line 47
    const-string v1, "report"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "share failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public shareText(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    new-instance v2, Lcom/isaigu/gymapp/wearable/ReportBridge$Start;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/ReportBridge;->a:Landroid/app/Activity;

    const-string v4, "\u0421\u043f\u043e\u0434\u0435\u043b\u0438"

    const-string v5, "Share"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/isaigu/gymapp/wearable/ReportBridge$Start;-><init>(Landroid/app/Activity;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method

.method public theme()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 382
    invoke-static {}, Lcom/isaigu/gymapp/wearable/ReportBridge;->isDark()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "dark"

    :goto_8
    return-object v0

    :cond_9
    const-string v0, "light"

    goto :goto_8
.end method
