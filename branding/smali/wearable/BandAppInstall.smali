.class public final Lcom/isaigu/gymapp/wearable/BandAppInstall;
.super Ljava/lang/Object;
.source "BandAppInstall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/BandAppInstall$SetText;,
        Lcom/isaigu/gymapp/wearable/BandAppInstall$Progress;,
        Lcom/isaigu/gymapp/wearable/BandAppInstall$AutoCheck;,
        Lcom/isaigu/gymapp/wearable/BandAppInstall$ConnectTimeout;,
        Lcom/isaigu/gymapp/wearable/BandAppInstall$ToastText;
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

.field public static final VERSION:I = 0x23

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
    .locals 2

    .prologue
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
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .prologue
    .line 27
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->classicLinkUp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->show(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->statusView:Landroid/widget/TextView;

    return-object v0
.end method

.method private static begin(Landroid/content/Context;Z)V
    .locals 5

    .prologue
    const/16 v4, 0x11

    .line 159
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->read(Landroid/content/Context;)[B

    move-result-object v1

    .line 160
    if-nez v1, :cond_1

    .line 161
    const-string v0, "\u0424\u0430\u0439\u043b\u044a\u0442 \u043d\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u043b\u0438\u043f\u0441\u0432\u0430 \u0432 \u0442\u0430\u0437\u0438 \u0432\u0435\u0440\u0441\u0438\u044f"

    const-string v1, "The band app file is missing from this build"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->show(Ljava/lang/String;)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const-string v2, "install"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    const-string v0, "auto"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " v"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->tabletLang()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "\u0418\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u043d\u0435 \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u2026"

    const-string v2, "Installing on the band\u2026"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->show(Ljava/lang/String;)V

    .line 167
    const-string v0, "com.xems.band"

    new-instance v2, Lcom/isaigu/gymapp/wearable/BandAppInstall$Progress;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/wearable/BandAppInstall$Progress;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v0, v4, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->install([BLjava/lang/String;ILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    const-string v0, "\u041d\u0443\u0436\u043d\u0430 \u0435 \u0432\u0440\u044a\u0437\u043a\u0430 Band 9 / 10"

    const-string v1, "Needs a Band 9 / 10 link"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->show(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_2
    const-string v0, "manual"

    goto :goto_1
.end method

.method public static bind(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 80
    sput-object p0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->statusView:Landroid/widget/TextView;

    .line 81
    return-void
.end method

.method static check()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->classicLinkUp()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->isBusy()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    sget-boolean v2, Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z

    .line 143
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z

    .line 144
    sget-object v3, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    sget-object v4, Lcom/isaigu/gymapp/wearable/BandAppInstall;->connectTimeout:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 145
    if-nez v2, :cond_3

    .line 146
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->upToDate(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    sget v3, Lcom/isaigu/gymapp/wearable/BandAppInstall;->autoTries:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 149
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->training()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 150
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandAppInstall;->autoCheck:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 153
    :cond_2
    sget v3, Lcom/isaigu/gymapp/wearable/BandAppInstall;->autoTries:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/isaigu/gymapp/wearable/BandAppInstall;->autoTries:I

    .line 155
    :cond_3
    if-nez v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->begin(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private static classicLinkUp()Z
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    .line 134
    instance-of v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static onAppHello(I)V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->onAppHello(ILjava/lang/String;)V

    .line 102
    return-void
.end method

.method static onAppHello(ILjava/lang/String;)V
    .locals 4

    .prologue
    .line 106
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    if-nez v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    if-lez p0, :cond_2

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandAppVersion(Landroid/content/Context;)I

    move-result v1

    if-eq p0, v1, :cond_2

    .line 111
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandAppVersion(Landroid/content/Context;I)V

    .line 112
    const-string v1, "install"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "band app reports v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandAppLang(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 115
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandAppLang(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    const-string v1, "install"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "band app language "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_3
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->upToDate(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "17/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->tabletLang()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    sget-object v1, Lcom/isaigu/gymapp/wearable/BandAppInstall;->lastTarget:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 121
    sput-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->lastTarget:Ljava/lang/String;

    .line 122
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->autoTries:I

    .line 124
    :cond_4
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->onBandConnected()V

    goto :goto_0
.end method

.method static onBandConnected()V
    .locals 4

    .prologue
    .line 92
    const-string v0, "band"

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLicense;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandAppInstall;->autoCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    sget-object v2, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    sget-object v3, Lcom/isaigu/gymapp/wearable/BandAppInstall;->autoCheck:Ljava/lang/Runnable;

    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x320

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1770

    goto :goto_1
.end method

.method static read(Landroid/content/Context;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 197
    .line 199
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v1, "en"

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->tabletLang()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "xems-band-en.rpk"

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 200
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 201
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 203
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_2

    .line 204
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 207
    :catch_0
    move-exception v2

    .line 210
    :goto_2
    if-eqz v1, :cond_0

    .line 212
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 208
    :cond_0
    :goto_3
    return-object v0

    .line 199
    :cond_1
    :try_start_3
    const-string v1, "xems-band.rpk"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 206
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 210
    if-eqz v1, :cond_0

    .line 212
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 213
    :catch_1
    move-exception v1

    goto :goto_3

    .line 210
    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    :goto_4
    if-eqz v3, :cond_3

    .line 212
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 216
    :cond_3
    :goto_5
    throw v2

    .line 213
    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_5

    .line 210
    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_4

    .line 207
    :catch_4
    move-exception v1

    move-object v1, v0

    goto :goto_2
.end method

.method private static show(Ljava/lang/String;)V
    .locals 2

    .prologue
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
    .locals 4

    .prologue
    .line 177
    :try_start_0
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->bind(Landroid/widget/TextView;)V

    .line 178
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->classicLinkUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z

    .line 183
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->check()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    const-string v1, "BandAppInstall.start"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z

    .line 187
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435 \u0441 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u2026"

    const-string v1, "Connecting to the band\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->show(Ljava/lang/String;)V

    .line 188
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->requestConnect(Landroid/app/Activity;)V

    .line 189
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandAppInstall;->connectTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 190
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandAppInstall;->connectTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x61a8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static statusText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->upToDate(Landroid/content/Context;)Z

    move-result v0

    .line 71
    sget-object v1, Lcom/isaigu/gymapp/wearable/BandAppInstall;->status:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->isBusy()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 72
    :cond_0
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->status:Ljava/lang/String;

    .line 74
    :goto_0
    return-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 75
    const-string v0, "XEMS \u0435 \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u2713"

    const-string v1, "XEMS is on the band \u2713"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_2
    const-string v0, "\u0418\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430 \u0441\u0435 \u0441\u0430\u043c \u043f\u0440\u0438 \u0441\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435"

    const-string v1, "Installs itself when the band connects"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static tabletLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bg"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "en"

    goto :goto_0
.end method

.method private static training()Z
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static upToDate(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandAppVersion(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x11

    if-ge v1, v2, :cond_1

    .line 46
    :cond_0
    :goto_0
    return v0

    .line 45
    :cond_1
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandAppLang(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->tabletLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
