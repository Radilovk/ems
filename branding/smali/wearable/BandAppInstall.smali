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

.field private static final AUTO_DELAY_MS:J = 0x1770L

.field private static final BUSY_RETRY_MS:J = 0xea60L

.field private static final CONNECT_WAIT_MS:J = 0x61a8L

.field private static final MAX_AUTO_TRIES:I = 0x2

.field public static final PACKAGE:Ljava/lang/String; = "com.xems.band"

.field public static final VERSION:I = 0x5

.field private static final autoCheck:Ljava/lang/Runnable;

.field private static autoTries:I

.field private static final connectTimeout:Ljava/lang/Runnable;

.field private static final main:Landroid/os/Handler;

.field private static pendingManual:Z

.field private static status:Ljava/lang/String;

.field private static statusView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    .line 39
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandAppInstall$AutoCheck;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall$AutoCheck;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->autoCheck:Ljava/lang/Runnable;

    .line 40
    new-instance v0, Lcom/isaigu/gymapp/wearable/BandAppInstall$ConnectTimeout;

    invoke-direct {v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall$ConnectTimeout;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->connectTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .prologue
    .line 27
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z

    return p0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 27
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->classicLinkUp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .registers 1

    .prologue
    .line 27
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->show(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->statusView:Landroid/widget/TextView;

    return-object v0
.end method

.method private static begin(Landroid/content/Context;Z)V
    .registers 7

    .prologue
    const/4 v4, 0x5

    .line 119
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->read(Landroid/content/Context;)[B

    move-result-object v1

    .line 120
    if-nez v1, :cond_13

    .line 121
    const-string v0, "\u0424\u0430\u0439\u043b\u044a\u0442 \u043d\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u043b\u0438\u043f\u0441\u0432\u0430 \u0432 \u0442\u0430\u0437\u0438 \u0432\u0435\u0440\u0441\u0438\u044f"

    const-string v1, "The band app file is missing from this build"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->show(Ljava/lang/String;)V

    .line 130
    :cond_12
    :goto_12
    return-void

    .line 125
    :cond_13
    const-string v2, "install"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_5b

    const-string v0, "auto"

    :goto_1e
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " v"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v0, "\u0418\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430\u043d\u0435 \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u2026"

    const-string v2, "Installing on the band\u2026"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->show(Ljava/lang/String;)V

    .line 127
    const-string v0, "com.xems.band"

    new-instance v2, Lcom/isaigu/gymapp/wearable/BandAppInstall$Progress;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/wearable/BandAppInstall$Progress;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v0, v4, v2}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->install([BLjava/lang/String;ILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 128
    const-string v0, "\u041d\u0443\u0436\u043d\u0430 \u0435 \u0432\u0440\u044a\u0437\u043a\u0430 Band 9 / 10"

    const-string v1, "Needs a Band 9 / 10 link"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->show(Ljava/lang/String;)V

    goto :goto_12

    .line 125
    :cond_5b
    const-string v0, "manual"

    goto :goto_1e
.end method

.method public static bind(Landroid/widget/TextView;)V
    .registers 1

    .prologue
    .line 63
    sput-object p0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->statusView:Landroid/widget/TextView;

    .line 64
    return-void
.end method

.method static check()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 98
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_13

    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->classicLinkUp()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->isBusy()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 116
    :cond_13
    :goto_13
    return-void

    .line 102
    :cond_14
    sget-boolean v2, Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z

    .line 103
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z

    .line 104
    sget-object v3, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    sget-object v4, Lcom/isaigu/gymapp/wearable/BandAppInstall;->connectTimeout:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    if-nez v2, :cond_44

    .line 106
    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandAppVersion(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_13

    sget v3, Lcom/isaigu/gymapp/wearable/BandAppInstall;->autoTries:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_13

    .line 109
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->training()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 110
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandAppInstall;->autoCheck:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_13

    .line 113
    :cond_3e
    sget v3, Lcom/isaigu/gymapp/wearable/BandAppInstall;->autoTries:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/isaigu/gymapp/wearable/BandAppInstall;->autoTries:I

    .line 115
    :cond_44
    if-nez v2, :cond_47

    const/4 v0, 0x1

    :cond_47
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->begin(Landroid/content/Context;Z)V

    goto :goto_13
.end method

.method private static classicLinkUp()Z
    .registers 2

    .prologue
    .line 93
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    .line 94
    instance-of v1, v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandSppClient;

    if-eqz v1, :cond_10

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method static onAppHello(I)V
    .registers 4

    .prologue
    .line 81
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 82
    if-lez p0, :cond_29

    if-eqz v0, :cond_29

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandAppVersion(Landroid/content/Context;)I

    move-result v1

    if-eq p0, v1, :cond_29

    .line 83
    invoke-static {v0, p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandAppVersion(Landroid/content/Context;I)V

    .line 84
    const-string v0, "install"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "band app reports v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_29
    return-void
.end method

.method static onBandConnected()V
    .registers 4

    .prologue
    .line 75
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandAppInstall;->autoCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    sget-object v2, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    sget-object v3, Lcom/isaigu/gymapp/wearable/BandAppInstall;->autoCheck:Ljava/lang/Runnable;

    sget-boolean v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z

    if-eqz v0, :cond_15

    const-wide/16 v0, 0x320

    :goto_11
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    return-void

    .line 76
    :cond_15
    const-wide/16 v0, 0x1770

    goto :goto_11
.end method

.method static read(Landroid/content/Context;)[B
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 157
    .line 159
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "xems-band.rpk"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_43
    .catchall {:try_start_1 .. :try_end_a} :catchall_32

    move-result-object v1

    .line 160
    :try_start_b
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 161
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 163
    :goto_14
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_26

    .line 164
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1e} :catch_1f
    .catchall {:try_start_b .. :try_end_1e} :catchall_3f

    goto :goto_14

    .line 167
    :catch_1f
    move-exception v2

    .line 170
    :goto_20
    if-eqz v1, :cond_25

    .line 172
    :try_start_22
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_3b

    .line 168
    :cond_25
    :goto_25
    return-object v0

    .line 166
    :cond_26
    :try_start_26
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_1f
    .catchall {:try_start_26 .. :try_end_29} :catchall_3f

    move-result-object v0

    .line 170
    if-eqz v1, :cond_25

    .line 172
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_25

    .line 173
    :catch_30
    move-exception v1

    goto :goto_25

    .line 170
    :catchall_32
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    :goto_35
    if-eqz v3, :cond_3a

    .line 172
    :try_start_37
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3d

    .line 176
    :cond_3a
    :goto_3a
    throw v2

    .line 173
    :catch_3b
    move-exception v1

    goto :goto_25

    :catch_3d
    move-exception v0

    goto :goto_3a

    .line 170
    :catchall_3f
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_35

    .line 167
    :catch_43
    move-exception v1

    move-object v1, v0

    goto :goto_20
.end method

.method private static show(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 67
    sput-object p0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->status:Ljava/lang/String;

    .line 68
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/BandAppInstall$SetText;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/BandAppInstall$SetText;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 69
    return-void
.end method

.method public static start(Landroid/app/Activity;Landroid/widget/TextView;)V
    .registers 6

    .prologue
    .line 137
    :try_start_0
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->bind(Landroid/widget/TextView;)V

    .line 138
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 154
    :goto_9
    return-void

    .line 141
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->classicLinkUp()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 142
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z

    .line 143
    invoke-static {}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->check()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_9

    .line 151
    :catch_17
    move-exception v0

    .line 152
    const-string v1, "BandAppInstall.start"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 146
    :cond_1e
    const/4 v0, 0x1

    :try_start_1f
    sput-boolean v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->pendingManual:Z

    .line 147
    const-string v0, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435 \u0441 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430\u2026"

    const-string v1, "Connecting to the band\u2026"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->show(Ljava/lang/String;)V

    .line 148
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->requestConnect(Landroid/app/Activity;)V

    .line 149
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandAppInstall;->connectTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/BandAppInstall;->connectTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x61a8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_3f} :catch_17

    goto :goto_9
.end method

.method public static statusText(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 53
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getBandAppVersion(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_17

    const/4 v0, 0x1

    .line 54
    :goto_8
    sget-object v1, Lcom/isaigu/gymapp/wearable/BandAppInstall;->status:Ljava/lang/String;

    if-eqz v1, :cond_19

    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->isBusy()Z

    move-result v1

    if-nez v1, :cond_14

    if-nez v0, :cond_19

    .line 55
    :cond_14
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->status:Ljava/lang/String;

    .line 57
    :goto_16
    return-object v0

    .line 53
    :cond_17
    const/4 v0, 0x0

    goto :goto_8

    .line 57
    :cond_19
    if-eqz v0, :cond_24

    .line 58
    const-string v0, "XEMS \u0435 \u043d\u0430 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 \u2713"

    const-string v1, "XEMS is on the band \u2713"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    .line 59
    :cond_24
    const-string v0, "\u0418\u043d\u0441\u0442\u0430\u043b\u0438\u0440\u0430 \u0441\u0435 \u0441\u0430\u043c \u043f\u0440\u0438 \u0441\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435"

    const-string v1, "Installs itself when the band connects"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16
.end method

.method private static training()Z
    .registers 2

    .prologue
    .line 89
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AiSession$Stage;->RUNNING:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-eq v0, v1, :cond_e

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsPanel;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
