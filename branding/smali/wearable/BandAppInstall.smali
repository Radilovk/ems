.class public final Lcom/isaigu/gymapp/wearable/BandAppInstall;
.super Ljava/lang/Object;
.source "BandAppInstall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/BandAppInstall$Progress;,
        Lcom/isaigu/gymapp/wearable/BandAppInstall$SetText;
    }
.end annotation


# static fields
.field public static final ASSET:Ljava/lang/String; = "xems-band.rpk"

.field public static final PACKAGE:Ljava/lang/String; = "com.xems.band"

.field public static final VERSION:I = 0x1

.field private static final main:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/isaigu/gymapp/wearable/BandAppInstall;->main:Landroid/os/Handler;

    return-object v0
.end method

.method static read(Landroid/app/Activity;)[B
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 57
    .line 59
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "xems-band.rpk"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_43
    .catchall {:try_start_1 .. :try_end_a} :catchall_32

    move-result-object v1

    .line 60
    :try_start_b
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 61
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 63
    :goto_14
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_26

    .line 64
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1e} :catch_1f
    .catchall {:try_start_b .. :try_end_1e} :catchall_3f

    goto :goto_14

    .line 67
    :catch_1f
    move-exception v2

    .line 70
    :goto_20
    if-eqz v1, :cond_25

    .line 72
    :try_start_22
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_3b

    .line 68
    :cond_25
    :goto_25
    return-object v0

    .line 66
    :cond_26
    :try_start_26
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_29} :catch_1f
    .catchall {:try_start_26 .. :try_end_29} :catchall_3f

    move-result-object v0

    .line 70
    if-eqz v1, :cond_25

    .line 72
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_25

    .line 73
    :catch_30
    move-exception v1

    goto :goto_25

    .line 70
    :catchall_32
    move-exception v1

    move-object v2, v1

    move-object v3, v0

    :goto_35
    if-eqz v3, :cond_3a

    .line 72
    :try_start_37
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_3d

    .line 76
    :cond_3a
    :goto_3a
    throw v2

    .line 73
    :catch_3b
    move-exception v1

    goto :goto_25

    :catch_3d
    move-exception v0

    goto :goto_3a

    .line 70
    :catchall_3f
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    goto :goto_35

    .line 67
    :catch_43
    move-exception v1

    move-object v1, v0

    goto :goto_20
.end method

.method public static start(Landroid/app/Activity;Landroid/widget/TextView;)V
    .registers 6

    .prologue
    .line 31
    :try_start_0
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->isConnected()Z

    move-result v0

    if-nez v0, :cond_18

    .line 33
    :cond_c
    const-string v0, "\u041f\u044a\u0440\u0432\u043e \u0441\u0432\u044a\u0440\u0436\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430 (\u041f\u0440\u043e\u0432\u0435\u0440\u0438 \u0432\u0440\u044a\u0437\u043a\u0430\u0442\u0430)"

    const-string v1, "Connect the band first (Test connection)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_17
    :goto_17
    return-void

    .line 37
    :cond_18
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->isBusy()Z

    move-result v0

    if-nez v0, :cond_17

    .line 40
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/BandAppInstall;->read(Landroid/app/Activity;)[B

    move-result-object v0

    .line 41
    if-nez v0, :cond_56

    .line 42
    const-string v0, "\u0424\u0430\u0439\u043b\u044a\u0442 \u043d\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435\u0442\u043e \u043b\u0438\u043f\u0441\u0432\u0430 \u0432 \u0442\u0430\u0437\u0438 \u0432\u0435\u0440\u0441\u0438\u044f"

    const-string v1, "The band app file is missing from this build"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2f} :catch_30

    goto :goto_17

    .line 51
    :catch_30
    move-exception v0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0413\u0440\u0435\u0448\u043a\u0430: "

    const-string v3, "Error: "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_17

    .line 46
    :cond_56
    :try_start_56
    const-string v1, "\u0418\u0437\u043f\u0440\u0430\u0449\u0430\u043d\u0435\u2026"

    const-string v2, "Sending\u2026"

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const-string v1, "com.xems.band"

    const/4 v2, 0x1

    new-instance v3, Lcom/isaigu/gymapp/wearable/BandAppInstall$Progress;

    invoke-direct {v3, p1}, Lcom/isaigu/gymapp/wearable/BandAppInstall$Progress;-><init>(Landroid/widget/TextView;)V

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller;->install([BLjava/lang/String;ILcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandInstaller$Listener;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 48
    const-string v0, "\u041d\u0443\u0436\u043d\u0430 \u0435 \u0432\u0440\u044a\u0437\u043a\u0430 Band 9 / 10 (\u043a\u043b\u0430\u0441\u0438\u0447\u0435\u0441\u043a\u0438 Bluetooth)"

    const-string v1, "Needs a Band 9 / 10 link (Bluetooth Classic)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_7a} :catch_30

    goto :goto_17
.end method
