.class public final Lcom/isaigu/gymapp/train/utils/AudioOutputLatency;
.super Ljava/lang/Object;
.source "AudioOutputLatency.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static estimatePlaybackOffsetMs(Landroid/content/Context;)I
    .registers 7

    .line 19
    const/16 v0, 0x28

    if-nez p0, :cond_5

    .line 20
    return v0

    .line 22
    :cond_5
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 23
    if-nez p0, :cond_10

    .line 24
    return v0

    .line 27
    :cond_10
    nop

    .line 28
    nop

    .line 29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    const/16 v2, 0x100

    const v3, 0xac44

    if-lt v0, v1, :cond_46

    .line 31
    :try_start_1d
    const-string v0, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_2a

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_2e

    goto :goto_2d

    .line 32
    :cond_2a
    const v0, 0xac44

    .line 36
    :goto_2d
    goto :goto_32

    .line 35
    :catchall_2e
    move-exception v0

    const v0, 0xac44

    .line 38
    :goto_32
    :try_start_32
    const-string v1, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 39
    if-eqz p0, :cond_3f

    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_42

    goto :goto_41

    .line 39
    :cond_3f
    const/16 p0, 0x100

    .line 43
    :goto_41
    goto :goto_4b

    .line 42
    :catchall_42
    move-exception p0

    const/16 p0, 0x100

    goto :goto_4b

    .line 29
    :cond_46
    const/16 p0, 0x100

    const v0, 0xac44

    .line 45
    :goto_4b
    const/16 v1, 0x1f40

    if-ge v0, v1, :cond_50

    .line 46
    goto :goto_51

    .line 45
    :cond_50
    move v3, v0

    .line 48
    :goto_51
    const/16 v0, 0x40

    if-ge p0, v0, :cond_56

    .line 49
    goto :goto_57

    .line 48
    :cond_56
    move v2, p0

    .line 53
    :goto_57
    int-to-double v0, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v0, v0, v4

    int-to-double v2, v3

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    .line 54
    mul-int/lit8 p0, p0, 0x3

    add-int/lit8 p0, p0, 0xf

    .line 55
    const/16 v0, 0x78

    const/16 v1, 0x14

    if-ge p0, v1, :cond_73

    .line 56
    const/16 p0, 0x14

    goto :goto_77

    .line 57
    :cond_73
    if-le p0, v0, :cond_77

    .line 58
    const/16 p0, 0x78

    .line 60
    :cond_77
    :goto_77
    return p0
.end method
