.class public final Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;
.super Ljava/lang/Object;
.source "ChannelStrengthScale.java"


# static fields
.field private static final ARMS_CHANNEL_INDEX:I = 0x4

.field private static final ARMS_DIV_DEFAULT:F = 5.0f

.field private static final ARMS_LOW_RATIO:F = 0.5f

.field private static final ARMS_PW_HIGH:I = 0x190

.field private static final ARMS_PW_LOW:I = 0x96

.field private static final BAL_REF_PW:I = 0x177

.field private static final CALF_CHANNEL_INDEX:I = 0x3

.field private static final CHRONAXIE:[F

.field private static currentPulseWidth:I

.field private static volatile face:Z

.field private static lastArmsByte:I

.field private static lastArmsExact:F

.field private static lastArmsPw:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x190

    .line 53
    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_14

    sput-object v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->CHRONAXIE:[F

    .line 56
    sput v1, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    .line 59
    const/4 v0, -0x1

    sput v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->lastArmsByte:I

    .line 61
    sput v1, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->lastArmsPw:I

    return-void

    .line 53
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
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static armsDivider(I)F
    .registers 3

    .prologue
    .line 186
    const/high16 v0, 0x40a00000    # 5.0f

    .line 188
    :try_start_2
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->armsDivider()F
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_b

    move-result v0

    .line 191
    :goto_6
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsDivider(IF)F

    move-result v0

    return v0

    .line 189
    :catch_b
    move-exception v1

    goto :goto_6
.end method

.method public static armsDivider(IF)F
    .registers 6

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 196
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, p1

    .line 197
    add-int/lit16 v2, p0, -0x96

    int-to-float v2, v2

    sub-float v3, p1, v1

    mul-float/2addr v2, v3

    const/high16 v3, 0x437a0000    # 250.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 198
    cmpg-float v2, v1, v0

    if-gez v2, :cond_14

    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_13
.end method

.method public static declared-synchronized armsExact(II)F
    .registers 5

    .prologue
    .line 154
    const-class v1, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;

    monitor-enter v1

    :try_start_3
    sget v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->lastArmsByte:I

    if-ne p0, v0, :cond_1d

    sget v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->lastArmsExact:F

    .line 155
    :goto_9
    if-lez p1, :cond_1b

    sget v2, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->lastArmsPw:I

    if-eq p1, v2, :cond_1b

    .line 156
    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsScale(I)F

    move-result v2

    mul-float/2addr v0, v2

    sget v2, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->lastArmsPw:I

    invoke-static {v2}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsScale(I)F
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1f

    move-result v2

    div-float/2addr v0, v2

    .line 158
    :cond_1b
    monitor-exit v1

    return v0

    .line 154
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
    .line 163
    sget v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsFactor(I)F

    move-result v0

    return v0
.end method

.method public static armsFactor(I)F
    .registers 3

    .prologue
    .line 171
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsDivider(I)F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static armsScale(I)F
    .registers 2

    .prologue
    .line 176
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->face:Z

    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->faceFactor(I)F

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-static {p0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsFactor(I)F

    move-result v0

    goto :goto_8
.end method

.method public static balance(II)F
    .registers 8

    .prologue
    const/4 v5, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 113
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->face:Z

    if-nez v0, :cond_13

    if-ltz p0, :cond_13

    sget-object v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->CHRONAXIE:[F

    array-length v0, v0

    if-ge p0, v0, :cond_13

    if-eq p0, v5, :cond_13

    if-gtz p1, :cond_15

    :cond_13
    move v0, v3

    .line 122
    :goto_14
    return v0

    .line 117
    :cond_15
    const/4 v0, 0x0

    move v1, v2

    :goto_17
    sget-object v4, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->CHRONAXIE:[F

    array-length v4, v4

    if-ge v0, v4, :cond_2d

    .line 118
    if-eq v0, v5, :cond_2a

    .line 119
    sget-object v4, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->CHRONAXIE:[F

    aget v4, v4, v0

    invoke-static {v4, p1}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->gain(FI)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 117
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 122
    :cond_2d
    cmpl-float v0, v1, v2

    if-lez v0, :cond_3b

    sget-object v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->CHRONAXIE:[F

    aget v0, v0, p0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->gain(FI)F

    move-result v0

    div-float/2addr v0, v1

    goto :goto_14

    :cond_3b
    move v0, v3

    goto :goto_14
.end method

.method public static calfFactor()F
    .registers 3

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 38
    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_4
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->calfDivider()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_b} :catch_e

    move-result v1

    div-float/2addr v0, v1

    .line 40
    :goto_d
    return v0

    .line 39
    :catch_e
    move-exception v1

    goto :goto_d
.end method

.method public static faceFactor(I)F
    .registers 3

    .prologue
    .line 181
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsDivider(IF)F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static gain(FI)F
    .registers 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 139
    int-to-float v0, p1

    div-float v0, p0, v0

    add-float/2addr v0, v2

    const v1, 0x43bb8000    # 375.0f

    div-float v1, p0, v1

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public static isFace()Z
    .registers 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->face:Z

    return v0
.end method

.method private static declared-synchronized rememberArms(IFI)V
    .registers 5

    .prologue
    .line 143
    const-class v1, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;

    monitor-enter v1

    :try_start_3
    sput p0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->lastArmsByte:I

    .line 144
    sput p1, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->lastArmsExact:F

    .line 145
    sput p2, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->lastArmsPw:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    .line 146
    monitor-exit v1

    return-void

    .line 143
    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static scaleOutput(IF)F
    .registers 5

    .prologue
    const/4 v1, 0x4

    .line 87
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->face:Z

    if-eqz v0, :cond_14

    if-eq p0, v1, :cond_14

    .line 88
    sget v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->faceFactor(I)F

    move-result v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    .line 100
    :goto_13
    return v0

    .line 90
    :cond_14
    if-ne p0, v1, :cond_28

    .line 92
    sget v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsScale(I)F

    move-result v0

    mul-float/2addr v0, p1

    .line 93
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 94
    sget v2, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    invoke-static {v1, v0, v2}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->rememberArms(IFI)V

    .line 95
    int-to-float v0, v1

    goto :goto_13

    .line 97
    :cond_28
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3d

    .line 98
    sget v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->balance(II)F

    move-result v0

    mul-float/2addr v0, p1

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->calfFactor()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_13

    .line 100
    :cond_3d
    sget v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->balance(II)F

    move-result v0

    mul-float/2addr v0, p1

    goto :goto_13
.end method

.method public static sentShare(I)F
    .registers 2

    .prologue
    .line 105
    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->face:Z

    if-nez v0, :cond_c

    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->calfFactor()F

    move-result v0

    :goto_b
    return v0

    :cond_c
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_b
.end method

.method public static setFace(Z)V
    .registers 1

    .prologue
    .line 79
    sput-boolean p0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->face:Z

    .line 80
    return-void
.end method

.method public static setPulseWidth(I)V
    .registers 1

    .prologue
    .line 68
    sput p0, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->currentPulseWidth:I

    .line 69
    return-void
.end method

.method public static shown(III)F
    .registers 5

    .prologue
    .line 127
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

    .line 132
    invoke-static {p0, p2}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->balance(II)F

    move-result v1

    .line 133
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_c

    div-float/2addr p1, v1

    :cond_c
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 134
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
