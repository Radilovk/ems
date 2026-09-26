.class public final Lcom/isaigu/gymapp/wearable/BandAppInstall;
.super Ljava/lang/Object;
.source "BandAppInstall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/BandAppInstall$ToastText;,
        Lcom/isaigu/gymapp/wearable/BandAppInstall$SetText;,
        Lcom/isaigu/gymapp/wearable/BandAppInstall$Progress;,
        Lcom/isaigu/gymapp/wearable/BandAppInstall$ConnectTimeout;,
        Lcom/isaigu/gymapp/wearable/BandAppInstall$AutoCheck;
    }
.end annotation


# static fields
.field public static final ASSET:Ljava/lang/String; = "xems-band.rpk"

.field public static final ASSET_EN:Ljava/lang/String; = "xems-band-en.rpk"

.field private static final AUTO_DELAY_MS:J = 0x1770L

.field private static final BUSY_RETRY_MS:J = 0xea60L

.field private static final CONNECT_WAIT_MS:J = 0x61a8L

.field private static final MAX_AUTO_TRIES:I = 0x2

.field public static final PACKAGE:Ljava/lang/String; = "com.xems.band"

.field public static final VERSION:I = 0x3a

.field private static final autoCheck:Ljava/lang/Runnable;

.field private static autoTries:I

.field private static final connectTimeout:Ljava/lang/Runnable;

.field private static lastTarget:Ljava/lang/String;

.field private static final main:Landroid/os/Handler;

.field private static pendingManual:Z

.field private static status:Ljava/lang/String;

.field private static statusView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    .line 55
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandAppInstall$AutoCheck;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall$AutoCheck;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->autoCheck:Ljava/lang/Runnable;

    .line 56
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandAppInstall$ConnectTimeout;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall$ConnectTimeout;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->connectTimeout:Ljava/lang/Runnable;

    .line 62
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->lastTarget:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 27
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .line 27
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z

    return p0
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 27
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->classicLinkUp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .registers 1

    .line 27
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->show(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .registers 1

    .line 27
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Landroid/widget/TextView;
    .registers 1

    .line 27
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->statusView:Landroid/widget/TextView;

    return-object v0
.end method

.method private static begin(Landroid/content/Context;Z)V
    .registers 5

    .line 159
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->read(Landroid/content/Context;)[B

    move-result-object v0

    .line 160
    if-nez v0, :cond_12

    .line 161
    const-string p0, "\u0424\u0430\u0439\u043b\u044a\u0442 \u043d\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u043b\u0438\u043f\u0441\u0432\u0430 \u0432 \u0442\u0430\u0437\u0438 \u0432\u0435\u0440\u0441\u0438\u044f"

    const-string p1, "The band app file is missing from this build"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->show(Ljava/lang/String;)V

    .line 163
    return-void

    .line 165
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1c

    const-string p1, "auto"

    goto :goto_1e

    :cond_1c
    const-string p1, "manual"

    :goto_1e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " v"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->tabletLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "install"

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "\u0418\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u043d\u0435 \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u2026"

    const-string v2, "Installing on the band\u2026"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->show(Ljava/lang/String;)V

    .line 167
    new-instance v1, Lcom/isaigu/gymapp/wearable/BandAppInstall$Progress;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/BandAppInstall$Progress;-><init>(Landroid/content/Context;)V

    const-string p0, "com.xems.band"

    invoke-static {v0, p0, p1, v1}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->install([BLjava/lang/String;ILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;)Z

    move-result p0

    if-nez p0, :cond_67

    .line 168
    const-string p0, "\u041d\u0443\u0436\u043d\u0430 \u0435 \u0432\u0440\u044a\u0437\u043a\u0430 Band 9 / 10"

    const-string p1, "Needs a Band 9 / 10 link"

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->show(Ljava/lang/String;)V

    .line 170
    :cond_67
    return-void
.end method

.method public static bind(Landroid/widget/TextView;)V
    .registers 1

    .line 80
    sput-object p0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->statusView:Landroid/widget/TextView;

    .line 81
    return-void
.end method

.method static check()V
    .registers 4

    .line 138
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_4c

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->classicLinkUp()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_4c

    .line 142
    :cond_13
    sget-boolean v1, Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z

    .line 143
    const/4 v2, 0x0

    sput-boolean v2, Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z

    .line 144
    sget-object v2, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    sget-object v3, Lcom/isaigu/gymapp/wearable/BandAppInstall;->connectTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 145
    if-nez v1, :cond_46

    .line 146
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->upToDate(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_45

    sget v2, Lcom/isaigu/gymapp/wearable/BandAppInstall;->autoTries:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2d

    goto :goto_45

    .line 149
    :cond_2d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->training()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 150
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandAppInstall;->autoCheck:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    return-void

    .line 153
    :cond_3e
    sget v2, Lcom/isaigu/gymapp/wearable/BandAppInstall;->autoTries:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/isaigu/gymapp/wearable/BandAppInstall;->autoTries:I

    goto :goto_46

    .line 147
    :cond_45
    :goto_45
    return-void

    .line 155
    :cond_46
    :goto_46
    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->begin(Landroid/content/Context;Z)V

    .line 156
    return-void

    .line 140
    :cond_4c
    :goto_4c
    return-void
.end method

.method private static classicLinkUp()Z
    .registers 2

    .line 133
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    .line 134
    instance-of v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    if-eqz v1, :cond_10

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method static onAppHello(I)V
    .registers 2

    .line 101
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->onAppHello(ILjava/lang/String;)V

    .line 102
    return-void
.end method

.method static onAppHello(ILjava/lang/String;)V
    .registers 6

    .line 106
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    if-nez v0, :cond_7

    .line 108
    return-void

    .line 110
    :cond_7
    const-string v1, "install"

    if-lez p0, :cond_28

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandAppVersion(Landroid/content/Context;)I

    move-result v2

    if-eq p0, v2, :cond_28

    .line 111
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandAppVersion(Landroid/content/Context;I)V

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "band app reports v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_28
    if-eqz p1, :cond_51

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_51

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandAppLang(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_51

    .line 115
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandAppLang(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "band app language "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_51
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->upToDate(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_7c

    .line 119
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "58/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->tabletLang()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 120
    sget-object p1, Lcom/isaigu/gymapp/wearable/BandAppInstall;->lastTarget:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_79

    .line 121
    sput-object p0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->lastTarget:Ljava/lang/String;

    .line 122
    const/4 p0, 0x0

    sput p0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->autoTries:I

    .line 124
    :cond_79
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->onBandConnected()V

    .line 126
    :cond_7c
    return-void
.end method

.method static onBandConnected()V
    .registers 4

    .line 92
    const-string v0, "band"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 93
    return-void

    .line 95
    :cond_9
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandAppInstall;->autoCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandAppInstall;->autoCheck:Ljava/lang/Runnable;

    sget-boolean v2, Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z

    if-eqz v2, :cond_1b

    const-wide/16 v2, 0x320

    goto :goto_1d

    :cond_1b
    const-wide/16 v2, 0x1770

    :goto_1d
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    return-void
.end method

.method static read(Landroid/content/Context;)[B
    .registers 7

    .line 197
    nop

    .line 199
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "en"

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->tabletLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "xems-band-en.rpk"

    goto :goto_17

    :cond_15
    const-string v1, "xems-band.rpk"

    :goto_17
    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_4b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_42

    .line 200
    :try_start_1b
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 201
    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 203
    :goto_24
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2f

    .line 204
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_24

    .line 206
    :cond_2f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_33} :catch_40
    .catchall {:try_start_1b .. :try_end_33} :catchall_3b

    .line 210
    if-eqz p0, :cond_3a

    .line 212
    :try_start_35
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_39

    .line 214
    goto :goto_3a

    .line 213
    :catch_39
    move-exception p0

    .line 206
    :cond_3a
    :goto_3a
    return-object v0

    .line 210
    :catchall_3b
    move-exception v0

    move-object v5, v0

    move-object v0, p0

    move-object p0, v5

    goto :goto_43

    .line 207
    :catch_40
    move-exception v1

    goto :goto_4d

    .line 210
    :catchall_42
    move-exception p0

    :goto_43
    if-eqz v0, :cond_4a

    .line 212
    :try_start_45
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    .line 214
    goto :goto_4a

    .line 213
    :catch_49
    move-exception v0

    .line 216
    :cond_4a
    :goto_4a
    throw p0

    .line 207
    :catch_4b
    move-exception p0

    move-object p0, v0

    .line 208
    :goto_4d
    nop

    .line 210
    if-eqz p0, :cond_55

    .line 212
    :try_start_50
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_53} :catch_54

    .line 214
    goto :goto_55

    .line 213
    :catch_54
    move-exception p0

    .line 208
    :cond_55
    :goto_55
    return-object v0
.end method

.method private static show(Ljava/lang/String;)V
    .registers 3

    .line 84
    sput-object p0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->status:Ljava/lang/String;

    .line 85
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandAppInstall$SetText;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/BandAppInstall$SetText;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 86
    return-void
.end method

.method public static start(Landroid/app/Activity;Landroid/widget/TextView;)V
    .registers 4

    .line 177
    :try_start_0
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->bind(Landroid/widget/TextView;)V

    .line 178
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->isBusy()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 179
    return-void

    .line 181
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->classicLinkUp()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_17

    .line 182
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z

    .line 183
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->check()V

    .line 184
    return-void

    .line 186
    :cond_17
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z

    .line 187
    const-string p1, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435 \u0441 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u2026"

    const-string v0, "Connecting to the band\u2026"

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->show(Ljava/lang/String;)V

    .line 188
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->requestConnect(Landroid/app/Activity;)V

    .line 189
    sget-object p0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    sget-object p1, Lcom/isaigu/gymapp/wearable/BandAppInstall;->connectTimeout:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    sget-object p0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    sget-object p1, Lcom/isaigu/gymapp/wearable/BandAppInstall;->connectTimeout:Ljava/lang/Runnable;

    const-wide/16 v0, 0x61a8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_38

    .line 193
    goto :goto_3e

    .line 191
    :catchall_38
    move-exception p0

    .line 192
    const-string p1, "BandAppInstall.start"

    invoke-static {p1, p0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    :goto_3e
    return-void
.end method

.method public static statusText(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 70
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->upToDate(Landroid/content/Context;)Z

    move-result p0

    .line 71
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->status:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->isBusy()Z

    move-result v0

    if-nez v0, :cond_10

    if-nez p0, :cond_13

    .line 72
    :cond_10
    sget-object p0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->status:Ljava/lang/String;

    return-object p0

    .line 74
    :cond_13
    if-eqz p0, :cond_1e

    .line 75
    const-string p0, "XEMS \u0435 \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u2713"

    const-string v0, "XEMS is on the band \u2713"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_26

    .line 76
    :cond_1e
    const-string p0, "\u0418\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430 \u0441\u0435 \u0441\u0430\u043c \u043f\u0440\u0438 \u0441\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435"

    const-string v0, "Installs itself when the band connects"

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 74
    :goto_26
    return-object p0
.end method

.method static tabletLang()Ljava/lang/String;
    .registers 1

    .line 37
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "bg"

    goto :goto_b

    :cond_9
    const-string v0, "en"

    :goto_b
    return-object v0
.end method

.method private static training()Z
    .registers 2

    .line 129
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v0, v1, :cond_11

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method static upToDate(Landroid/content/Context;)Z
    .registers 4

    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandAppVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3a

    if-ge v0, v2, :cond_a

    .line 43
    return v1

    .line 45
    :cond_a
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandAppLang(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->tabletLang()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    :cond_1e
    const/4 v1, 0x1

    :cond_1f
    return v1
.end method
