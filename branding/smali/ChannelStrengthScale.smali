.class public final Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;
.super Ljava/lang/Object;
.source "ChannelStrengthScale.java"


# static fields
.field private static final ARMS_CHANNEL_INDEX:I = 0x4

.field private static final ARMS_DIV_HIGH:F = 10.0f

.field private static final ARMS_DIV_LOW:F = 5.0f

.field private static final ARMS_PW_HIGH:I = 0x190

.field private static final ARMS_PW_LOW:I = 0x96

.field private static final BAL_REF_PW:I = 0x177

.field private static final CHRONAXIE:[F

.field private static currentPulseWidth:I

.field private static lastArmsByte:I

.field private static lastArmsExact:F

.field private static lastArmsPw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x190

    .line 34
    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_14

    sput-object v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->CHRONAXIE:[F

    .line 37
    sput v1, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    .line 40
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->lastArmsByte:I

    .line 42
    sput v1, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->lastArmsPw:I

    return-void

    .line 34
    nop

    :array_14
    .array-data 4
        0x43c80000    # 400.0f
        0x44124000    # 585.0f
        0x43f28000    # 485.0f
        0x4400c000    # 515.0f
        0x0
        0x43d70000    # 430.0f
        0x43eb0000    # 470.0f
        0x44110000    # 580.0f
        0x44200000    # 640.0f
        0x4400c000    # 515.0f
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method public static armsDivider(I)F
    .registers 3

    .prologue
    .line 135
    const/high16 v0, 0x41200000    # 10.0f

    .line 137
    :try_start_2
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->armsDivider()F
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_b

    move-result v0

    .line 140
    :goto_6
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsDivider(IF)F

    move-result v0

    return v0

    .line 138
    :catch_b
    move-exception v1

    goto :goto_6
.end method

.method public static armsDivider(IF)F
    .registers 6

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 145
    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v1, p1

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    .line 146
    add-int/lit16 v2, p0, -0x96

    int-to-float v2, v2

    sub-float v3, p1, v1

    mul-float/2addr v2, v3

    const/high16 v3, 0x437a0000    # 250.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 147
    cmpg-float v2, v1, v0

    if-gez v2, :cond_17

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method public static declared-synchronized armsExact(II)F
    .registers 5

    .prologue
    .line 109
    const-class v1, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->lastArmsByte:I

    if-ne p0, v0, :cond_1d

    sget v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->lastArmsExact:F

    .line 110
    :goto_9
    if-lez p1, :cond_1b

    sget v2, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->lastArmsPw:I

    if-eq p1, v2, :cond_1b

    .line 111
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsFactor(I)F

    move-result v2

    mul-float/2addr v0, v2

    sget v2, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->lastArmsPw:I

    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsFactor(I)F
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1f

    move-result v2

    div-float/2addr v0, v2

    .line 113
    :cond_1b
    monitor-exit v1

    return v0

    .line 109
    :cond_1d
    int-to-float v0, p0

    goto :goto_9

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static armsFactor()F
    .registers 1

    .prologue
    .line 118
    sget v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsFactor(I)F

    move-result v0

    return v0
.end method

.method public static armsFactor(I)F
    .registers 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 124
    :try_start_2
    const-string v1, "arms_full"

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLicense;->hasFeature(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_b

    move-result v1

    if-eqz v1, :cond_c

    .line 130
    :goto_a
    return v0

    .line 128
    :catch_b
    move-exception v1

    .line 130
    :cond_c
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsDivider(I)F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_a
.end method

.method public static balance(II)F
    .registers 8

    .prologue
    const/4 v5, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 68
    if-ltz p0, :cond_f

    sget-object v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->CHRONAXIE:[F

    array-length v0, v0

    if-ge p0, v0, :cond_f

    if-eq p0, v5, :cond_f

    if-gtz p1, :cond_11

    :cond_f
    move v0, v3

    .line 77
    :goto_10
    return v0

    .line 72
    :cond_11
    const/4 v0, 0x0

    move v1, v2

    :goto_13
    sget-object v4, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->CHRONAXIE:[F

    array-length v4, v4

    if-ge v0, v4, :cond_29

    .line 73
    if-eq v0, v5, :cond_26

    .line 74
    sget-object v4, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->CHRONAXIE:[F

    aget v4, v4, v0

    invoke-static {v4, p1}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->gain(FI)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 72
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 77
    :cond_29
    cmpl-float v0, v1, v2

    if-lez v0, :cond_37

    sget-object v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->CHRONAXIE:[F

    aget v0, v0, p0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->gain(FI)F

    move-result v0

    div-float/2addr v0, v1

    goto :goto_10

    :cond_37
    move v0, v3

    goto :goto_10
.end method

.method private static gain(FI)F
    .registers 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 94
    int-to-float v0, p1

    div-float v0, p0, v0

    add-float/2addr v0, v2

    const v1, 0x43bb8000    # 375.0f

    div-float v1, p0, v1

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method private static declared-synchronized rememberArms(IFI)V
    .registers 5

    .prologue
    .line 98
    const-class v1, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;

    monitor-enter v1

    :try_start_3
    sput p0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->lastArmsByte:I

    .line 99
    sput p1, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->lastArmsExact:F

    .line 100
    sput p2, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->lastArmsPw:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    .line 101
    monitor-exit v1

    return-void

    .line 98
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static scaleOutput(IF)F
    .registers 5

    .prologue
    .line 53
    const/4 v0, 0x4

    if-ne p0, v0, :cond_15

    .line 55
    sget v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsFactor(I)F

    move-result v0

    mul-float/2addr v0, p1

    .line 56
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 57
    sget v2, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->rememberArms(IFI)V

    .line 58
    int-to-float v0, v1

    .line 60
    :goto_14
    return v0

    :cond_15
    sget v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->balance(II)F

    move-result v0

    mul-float/2addr v0, p1

    goto :goto_14
.end method

.method public static setPulseWidth(I)V
    .registers 1

    .prologue
    .line 49
    sput p0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    .line 50
    return-void
.end method

.method public static shown(III)F
    .registers 5

    .prologue
    .line 82
    int-to-float v0, p1

    invoke-static {p0, p2}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->balance(II)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static stored(IFI)I
    .registers 6

    .prologue
    const/16 v0, 0x64

    .line 87
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->balance(II)F

    move-result v1

    .line 88
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_c

    div-float/2addr p1, v1

    :cond_c
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 89
    if-gez v1, :cond_14

    const/4 v0, 0x0

    :cond_13
    :goto_13
    return v0

    :cond_14
    if-gt v1, v0, :cond_13

    move v0, v1

    goto :goto_13
.end method
